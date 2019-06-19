<?php
class ControllerApiRos extends Controller {
	public function login() {
				
		$this->load->language('api/login');

        $request_encoded = file_get_contents('php://input'); 
        $request = json_decode($request_encoded,true);

        $json = array();

		$this->load->model('account/api');

		// Login with API Key
		$api_info = $this->model_account_api->getApiByKey($request['key']);

		if ($api_info) {
			// Check if IP is allowed						
			$ip_data = array();
	
			$results = $this->model_account_api->getApiIps($api_info['api_id']);
	
			foreach ($results as $result) {
				$ip_data[] = trim($result['ip']);
			}
	
			if (!in_array($this->request->server['REMOTE_ADDR'], $ip_data)) {
				// $json['error']['ip'] = sprintf($this->language->get('error_ip'), $this->request->server['REMOTE_ADDR']);

				// load model
				$this->load->model('ros/api');
	
				// add current ip to whitelist
				$this->model_ros_api->addApiIp($api_info['api_id'],$this->request->server['REMOTE_ADDR']);
			}				
				
			if (!$json) {
				$json['success'] = $this->language->get('text_success');
			
				// We want to create a seperate session so changes do not interfere with the admin user.
				$session_id_old = $this->session->getId();
				
				$session_id_new = $this->session->createId();
				
				$this->session->start('api', $session_id_new);
				
				$this->session->data['api_id'] = $api_info['api_id'];
				
				// Close and write the new session.
				//$session->close();

				$this->session->start('default');

				// Create Token
				$json['token'] = $this->model_account_api->addApiSession($api_info['api_id'], $session_id_new, $this->request->server['REMOTE_ADDR']);
			} else {
				$json['error']['key'] = $this->language->get('error_key');
			}
		} else {
			$json['error']['key'] = $this->language->get('error_key');
		}

		if (isset($this->request->server['HTTP_ORIGIN'])) {
			$this->response->addHeader('Access-Control-Allow-Origin: ' . $this->request->server['HTTP_ORIGIN']);
			$this->response->addHeader('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
			$this->response->addHeader('Access-Control-Max-Age: 1000');
			$this->response->addHeader('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
		

	public function getCurrentOrders() {
		$this->load->language('api/ros');
		$json = array();
 
		if (!isset($this->session->data['api_id'])) {
			$json['error'] = $this->language->get('error_permission');
		} else {
			// load model
			$this->load->model('ros/order');
 
			// get orders
			$orders = $this->model_ros_order->getCurrentOrders();
			$json['orders'] = $orders;
			
		}
		 
		if (isset($this->request->server['HTTP_ORIGIN'])) {
			$this->response->addHeader('Access-Control-Allow-Origin: ' . $this->request->server['HTTP_ORIGIN']);
			$this->response->addHeader('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
			$this->response->addHeader('Access-Control-Max-Age: 1000');
			$this->response->addHeader('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
		}
 
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}


	public function updateOrderStatus() {
		$this->load->language('api/ros');

        $request_encoded = file_get_contents('php://input'); 
        $request = json_decode($request_encoded,true);

		$json = array();
 
		if (!isset($this->session->data['api_id'])) {
			$json['error'] = $this->language->get('error_permission');
		} else {
			// load model
			$this->load->model('ros/order');
 
			// update order
			if (isset($request['id']) && isset($request['status'])) {
				$id = $request['id'];
				$status = $request['status'];
				if ($this->model_ros_order->updateOrderStatus($id, $status)) {
					$json['success'] = $this->language->get('status_success');
				} else {
					$json['error'] = $this->language->get('error_update_status_failed');
				}
			} else {
				$json['error'] = $this->language->get('error_update_status_missing');
			}
		}
		 
		if (isset($this->request->server['HTTP_ORIGIN'])) {
			$this->response->addHeader('Access-Control-Allow-Origin: ' . $this->request->server['HTTP_ORIGIN']);
			$this->response->addHeader('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
			$this->response->addHeader('Access-Control-Max-Age: 1000');
			$this->response->addHeader('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
		}
 
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}