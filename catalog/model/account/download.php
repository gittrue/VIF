<?php
class ModelAccountDownload extends Model {

    public function getDownload($download_id) {

			$query = $this->db->query("SELECT  filename,mask FROM ". DB_PREFIX ."download;");

			return $query->row;
     
	}
    
    
    public function getNameCostumer($id) {

			$query = $this->db->query("SELECT name FROM ". DB_PREFIX ."customer_group_description where customer_group_id=". $id .";");

			return $query->row;
     
	}
   
    

	public function getDownloads($data = array()) {
			$sql = "SELECT * FROM " . DB_PREFIX . "download d LEFT JOIN " . DB_PREFIX . "download_description dd ON (d.download_id = dd.download_id) WHERE dd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		if (!empty($data['filter_name'])) {
			$sql .= " AND dd.name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}

		$sort_data = array(
			'dd.name',
			'd.date_added'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY dd.name";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getTotalDownloads() {
			$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "download");

		return $query->row['total'];
	}
}