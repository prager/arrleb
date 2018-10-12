<?php
class Files_model extends CI_Model {
	function __construct() {
		parent::__construct();
		$this->load->database();
	}
	
	public function create_file($path) {
	    
	}
	
	public function delete_file($path) {
	    
	}
	
	public function create_dir($path) {
	    
	}
	
	public function del_dir($path) {
	    
	}
	
	public function get_dir() {
	    return '././upload_private/upload_' . $this->Login_model->get_cur_user_id();	    
	}
	
	public function get_files() {
	    $dir = '././upload_private/upload_' . $this->Login_model->get_cur_user_id();
	    return scandir($dir);
	}
}