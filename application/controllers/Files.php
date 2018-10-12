<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Files extends CI_Controller {
		
	public function __construct() {
		parent::__construct();
		//$this->user_level = $this->Login_model->is_logged();
		
	}
	
	public function index() {
	    $this->load->view('template/coach_header', array('coach' => $this->Login_model->get_cur_user()));
	    $this->load->view('files/files_view', array('error' => ' ' ));
	    $this->load->view('template/footer_simple');
	}
	
	public function do_public_upload() {
	    $config['upload_path']          = '././uploads/public/';
	    $config['allowed_types']        = 'pdf|docx|pptx|odt';
	    $config['max_size']             = 10000;
	    
	    $this->load->library('upload', $config);
	    $this->load->helper('directory');
	    	    
	    $this->load->view('template/coach_header', array('coach' => $this->Login_model->get_cur_user()));
	    if ( !$this->upload->do_upload('userfile')) {
	        $error = array('error' => $this->upload->display_errors());
	        
	        $this->load->view('files/files_view', $error);
	    }
	    else {
	        $data['msg'] = 'File was uploaded. Thank you!';
	        $data['title'] = 'Success!';
	        
	        $this->load->view('status/status_view', $data);
	    }
	    $this->load->view('template/footer_simple');
	}
	
	public function do_private_upload() {
	    $config['upload_path']          = $this->Files_model->get_dir();
	    $config['allowed_types']        = 'pdf|docx|pptx|odt';
	    $config['max_size']             = 10000;
	    
	    $this->load->library('upload', $config);
	    $this->load->helper('directory');
	    
	    $this->load->view('template/header_private');
	    if ( ! $this->upload->do_upload('userfile'))
	    {
	        $error = array('error' => $this->upload->display_errors());
	        $error['dir'] = $this->Files_model->get_dir();
	        $error['private'] = TRUE;
	        $error['files'] = $this->Files_model->get_files();
	        $this->load->view('files/files_view', $error);
	    }
	    else
	    {
	        $data['msg'] = 'File was uploaded. Thank you!';
	        $data['title'] = 'Success!';
	        
	        $this->load->view('status/status_view', $data);
	    }
	    $this->load->view('template/footer_ver1');
	}
	
	function load_dir() {
	    $this->load->view('template/header_private');
	    $data['error'] = NULL;
	    $data['private'] = TRUE;
	    $data['files'] = $this->Files_model->get_files();
	    $this->load->view('files/files_view', $data);
	    $this->load->view('template/footer_ver1');
	}
	
	function save_file() {
	    
	        header('Content-Description: File Transfer');
	        header('Content-Type: application/octet-stream');
	        header('Content-Disposition: attachment; filename="'.basename($file).'"');
	        header('Expires: 0');
	        header('Cache-Control: must-revalidate');
	        header('Pragma: public');
	        header('Content-Length: ' . filesize($file));
	        readfile($file);
	}
}