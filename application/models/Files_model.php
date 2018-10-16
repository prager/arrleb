<?php
class Files_model extends CI_Model {
	function __construct() {
		parent::__construct();
		$this->load->database();
	}
	
	public function create_file($path) {
	    
	}
	
	public function create_dir($path) {
	    
	}
	
	public function del_dir($path) {
	    
	}
	
	public function get_dir() {
	    return '././assets/uploads/uploads_private/uploads_' . $this->Login_model->get_cur_user_id();	    
	}
	
	public function get_files() {
	    $retarr = array();
	    if($this->Login_model->is_logged()['logged']) {
	       $retarr['private'] = scandir('././assets/uploads/uploads_private/uploads_' . $this->Login_model->get_cur_user_id());
	    }
	    else {
	        $retarr['private'] = NULL;
	    }
	    $retarr['public'] = scandir('././assets/uploads/uploads_public/');
	    return $retarr;
	}
	
	public function download_file($index, $private) {
	    $files = $this->get_files();
	    if($private == 1) {
    	    for($i=2; $i < count($files['private']); $i++) {
    	        if($i == $index) {
    	            force_download('././assets/uploads/uploads_private/uploads_' . $this->Login_model->get_cur_user_id()
    	                . '/' . $files['private'][$i], NULL);
    	        }
    	    }
	    }
	    else {
	        for($i=2; $i < count($files['public']); $i++) {
	            if($i == $index) {
	                force_download('././assets/uploads/uploads_public/' . $files['public'][$i], NULL);
	            }
	        }
	    }
	}
	
	public function delete_file($index, $private) {
	    $files = $this->get_files();
	    
	    if($private == 1) {
	        for($i=2; $i < count($files['private']); $i++) {
	            if($i == $index) {
	                $filename = $files['private'][$i];
	            }
	        }
	        unlink('././assets/uploads/uploads_private/uploads_' . $this->Login_model->get_cur_user_id() .'/' . $filename);
	    }
	    else {
	        for($i=2; $i < count($files['public']); $i++) {
	            if($i == $index) {
	                $filename = $files['public'][$i];
	            }
	        }
	        unlink('././assets/uploads/uploads_public/' . $filename); 
	    }
	}
}