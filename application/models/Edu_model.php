<?php
class Edu_model extends CI_Model {
	function __construct() {
		parent::__construct();
		$this->load->database();
	}
	
	public function get_classes() {
	    $retarr = array();
	    $this->db->from('education');
	    $cnt = $this->db->count_all_results();
	    $retarr['cnt'] = $cnt;
	    $retarr['classes'] = array();
	    echo '<br><br><br>';
	    if($cnt > 0) {
	        $this->db->select('*');
	        $res = $this->db->get('education')->result();
	        foreach($res as $row) {
	            if($row->date_to > time()) {
	                $arr = array(
	                    'id' => $row->id_education,
	                    'course' => $row->course,
	                    'date_from' => $this->date_lib->set_date($row->date_from)['short'],
	                    'date_to' => $this->date_lib->set_date($row->date_from)['short'],
	                    'fee' => $row->fee,
	                    'status' => $row->status,
	                    'location' => $row->location,
	                    'details_url' => $row->details_url
	                );
	                array_push($retarr['classes'], $arr);
	            }
	        }
	    }
	    
	    return $retarr;
	}
    
	public function edit_class($param) {
	    $id = $param['id'];
	    unset($param['id']);
	    if($id > 0) {
	        $this->db->where('id_education', $id);
	        $this->db->update('education', $param);
	    }
	    else {
	        $this->db->insert('education', $param);
	    }
	}
}