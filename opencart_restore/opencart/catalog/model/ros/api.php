<?php
class ModelRosApi extends Model {
	public function addApiIp($api_id, $ip) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "api_ip SET api_id = '" . (int)$api_id . "', ip = '" . $ip . "'");

		return true;
	}

}