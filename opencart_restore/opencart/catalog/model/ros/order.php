<?php

class ModelRosOrder extends Model {
  
    public function sndUpdate($order_id, $order_status) {
        $order = array();
        
        $order_query = $this->db->query(
            "SELECT * FROM `" . DB_PREFIX . "order` os WHERE order_id = " . (int)$order_id
        );
        if($order_query->num_rows) {                
            $this->load->model('localisation/language');
            $language_info = $this->model_localisation_language->getLanguage($order_query->row['language_id']);

            if ($language_info) {
                $language_code = $language_info['code'];
            } else {
                $language_code = $this->config->get('config_language');
            }
        
            $order = array(
                'store_name'              => $order_query->row['store_name'],
                'store_url'               => $order_query->row['store_url'],
                'firstname'               => $order_query->row['firstname'],
                'lastname'                => $order_query->row['lastname'],
                'email'                   => $order_query->row['email'],
                'language_id'             => intval($order_query->row['language_id']),
                'language_code'           => $language_code
            );
        }
    
        $language = new Language($order['language_code']);
        $language->load($order['language_code']);
        $language->load('mail/order');
        
        $subject = sprintf($language->get('text_new_subject'), $order['store_name'], $order_id);
        
        $text  = "Dear " . $order['firstname'] . " " . $order['lastname'] . ".\n\n";
        $text .= "We updated the order status of your order " . $order_id . " to " . $order_status . "\n\n";
        $text .= $language->get('text_new_footer') . "\n\n";

        $mail = new Mail();
        $mail->protocol = $this->config->get('config_mail_protocol');
        $mail->parameter = $this->config->get('config_mail_parameter');
        $mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
        $mail->smtp_username = $this->config->get('config_mail_smtp_username');
        $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
        $mail->smtp_port = $this->config->get('config_mail_smtp_port');
        $mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

        //error_log("from: " . $this->config->get('config_email') . " to: " . $email, 0);
        
        $mail->setTo($order['email']);
        $mail->setFrom($this->config->get('config_email'));
        $mail->setSender($this->config->get('config_email'));
        $mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
        //$mail->setHtml($this->load->view('mail/order', $mail_data));
        $mail->setText($text);
        $mail->send();
    }

    public function updateOrderStatus($order_id, $status) {
        
        $order_status = $this->db->query(
            "SELECT os.order_status_id, os.name FROM `" . DB_PREFIX . "order_status` os WHERE os.language_id = 1 AND os.name = '" .$this->db->escape($status)."'"
        );

        if ($order_status->num_rows) {

            $this->db->query("UPDATE `" . DB_PREFIX . "order` SET order_status_id = '" . $order_status->row['order_status_id'] . "', date_modified = NOW() WHERE order_id = '" . (int)$order_id . "'");

            $comment = 'ROS-Update';
            $this->db->query("INSERT INTO " . DB_PREFIX . "order_history SET order_id = '" . (int)$order_id . "', order_status_id = '" . $order_status->row['order_status_id'] . "', notify = 0, comment = '" . $comment . "', date_added = NOW()");
            
            try {
                $order_info = $this->db->query("SELECT * FROM `" . DB_PREFIX . "order` WHERE order_id = '" . (int)$order_id . "'");
                if ($order_info->num_rows) {
                    $this->sndUpdate($order_id, $order_status->row['name']);
                }
                
            } catch (Throwable $e) {
                error_log("Unable to send status mail: " . $e->getMessage(), 0 );  
                
            } finally {
                return true;
            }
            
        } else {        
            error_log("ERROR: UNKWON STATUS REQUESTED (".$status.")", 0);
            return false;
        }

    }

    public function getCurrentOrders() {
        $order_query = $this->db->query(
            "SELECT o.*, os.name order_status " . 
            "FROM `" . DB_PREFIX . "order` o JOIN `" . DB_PREFIX . "order_status` os " . 
                "ON os.order_status_id = o.order_status_id AND os.language_id = 1 " .
            "WHERE o.order_status_id in (1,2,3)"
        );

        if ($order_query->num_rows) {

            $ret = [];

            foreach ($order_query->rows as $row) {

                $product_query = $this->db->query(
                    "SELECT * FROM `" . DB_PREFIX . "order_product` p WHERE p.order_id = " . $row['order_id']
                );

                $this->load->model('localisation/language');

                $language_info = $this->model_localisation_language->getLanguage($row['language_id']);

                if ($language_info) {
                    $language_code = $language_info['code'];
                } else {
                    $language_code = $this->config->get('config_language');
                }
                
                $order = array(
                    'order_id'                => intval($row['order_id']),
                    'invoice_no'              => $row['invoice_no'],
                    'invoice_prefix'          => $row['invoice_prefix'],
                    'store_id'                => intval($row['store_id']),
                    'store_name'              => $row['store_name'],
                    'store_url'               => $row['store_url'],
                    'customer_id'             => intval($row['customer_id']),
                    'firstname'               => $row['firstname'],
                    'lastname'                => $row['lastname'],
                    'email'                   => $row['email'],
                    'telephone'               => $row['telephone'],
                    'fax'                     => $row['fax'],
                    'custom_field'            => json_decode($row['custom_field'], true),
                    'shipping_firstname'      => $row['shipping_firstname'],
                    'shipping_lastname'       => $row['shipping_lastname'],
                    'shipping_company'        => $row['shipping_company'],
                    'shipping_address_1'      => $row['shipping_address_1'],
                    'shipping_address_2'      => $row['shipping_address_2'],
                    'shipping_postcode'       => $row['shipping_postcode'],
                    'shipping_city'           => $row['shipping_city'],
                    'shipping_zone_id'        => intval($row['shipping_zone_id']),
                    'shipping_zone'           => $row['shipping_zone'],
                    'shipping_country_id'     => intval($row['shipping_country_id']),
                    'shipping_country'        => $row['shipping_country'],
                    'shipping_address_format' => $row['shipping_address_format'],
                    'shipping_custom_field'   => json_decode($row['shipping_custom_field'], true),
                    'shipping_method'         => $row['shipping_method'],
                    'shipping_code'           => $row['shipping_code'],
                    'comment'                 => $row['comment'],
                    'total'                   => $row['total'],
                    'order_status_id'         => intval($row['order_status_id']),
                    'order_status'            => $row['order_status'],
                    'affiliate_id'            => intval($row['affiliate_id']),
                    'commission'              => floatval($row['commission']),
                    'language_id'             => intval($row['language_id']),
                    'language_code'           => $language_code,
                    'currency_id'             => intval($row['currency_id']),
                    'currency_code'           => $row['currency_code'],
                    'currency_value'          => floatval($row['currency_value'])
                );

                
                foreach ($product_query->rows as $prod) {
                    //-- select product options
                    $options_query = $this->db->query(
                        "SELECT * FROM `" . DB_PREFIX . "order_option` p WHERE p.order_id = " . $row['order_id'] . " AND order_product_id = " . $prod['order_product_id']
                    );

                    //-- iterate product options to build json style key value pairs
                    $opt_num = $options_query->num_rows;
                    $opt_idx = 0;
                    $options = "[ ";
                    foreach ($options_query->rows as $option) {
                        $options = $options . "{\"name\":\"" . $option['name'] . "\", \"value\":\"" . $option['value'] . "\"}";
                        if($opt_idx < $opt_num-1)
                            $options = $options . ", ";

                        $opt_idx = $opt_idx + 1;
                    }
                    $options = $options . " ]";

                    //-- compose ordered product
                    $order['products'][] = array(
                        'name' => $prod['name'],
                        'model' => $prod['model'],
                        'order_product_id' => intval($prod['order_product_id']),
                        'order_id' => intval($prod['order_id']),
                        'product_id' => intval($prod['product_id']),
                        'quantity' => floatval($prod['quantity']),
                        'price' => floatval($prod['price']),
                        'total' => floatval($prod['total']),
                        'tax' => floatval($prod['tax']),
                        'reward' => floatval($prod['reward']),
                        'options' => json_decode($options, true)
                    );
                }

                $ret[] = $order;
            }

            return $ret;
        } else {
            return [];
        }
    }
}
