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
	    return '././assets/uploads/uploads_private/uploads_' . $this->Login_model->get_cur_user_id();	    
	}
	
	public function get_files() {
	    $dir = '././assets/uploads/uploads_private/uploads_' . $this->Login_model->get_cur_user_id();
	    return scandir($dir);
	}
	
	public function download_file($index) {
	    $files = $this->get_files();
	    for($i=2; $i < count($files); $i++) {
	        if($i == $index) {
	            force_download('././assets/uploads/uploads_private/uploads_' . $this->Login_model->get_cur_user_id()
	                . '/' . $files[$i], NULL);
	        }
	    }
	}
}