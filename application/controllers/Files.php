<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Files extends CI_Controller {
		
	public function __construct() {
		parent::__construct();
		//$this->user_level = $this->Login_model->is_logged();
		
	}
	
	public function index() {
	   $this->load_dir();
	}
	
	public function do_public_upload() {
	    $config['upload_path']          = '././assets/uploads/uploads_public';
	    $config['allowed_types']        = 'pdf|docx|pptx|odt';
	    $config['max_size']             = 10000;
	    
	    $this->load->library('upload', $config);
	    $this->load->helper('directory');
	    	    
	    $this->load->view('template/header_public_gen', array('logged' => $this->Login_model->is_logged()['logged']));
	    if ( !$this->upload->do_upload('userfile')) {
	        $data['error'] = array('error' => $this->upload->display_errors());
	        $data['private'] = $this->Login_model->is_logged();
	        $files = $this->Files_model->get_files();
	        $data['files_private'] = $files['private'];
	        $data['files_public'] = $files['public'];
	        $this->load->view('files/files_view', $data);
	    }
	    else {
	        $data['error'] = NULL;
	        $data['private'] = $this->Login_model->is_logged();
	        $files = $this->Files_model->get_files();
	        $data['files_private'] = $files['private'];
	        $data['files_public'] = $files['public'];
	        $this->load->view('files/files_view', $data);
	    }
	    $this->load->view('template/footer_ver1');
	}
	
	public function do_private_upload() {
	    $config['upload_path']          = $this->Files_model->get_dir();
	    $config['allowed_types']        = 'pdf|docx|pptx|odt';
	    $config['max_size']             = 10000;
	    
	    $this->load->library('upload', $config);
	    $this->load->helper('directory');
	    
	    $this->load->view('template/header_public_gen', array('logged' => $this->Login_model->is_logged()['logged']));
	    if ( ! $this->upload->do_upload('userfile'))
	    {
	        $data['error'] = array('error' => $this->upload->display_errors());
	        $data['dir'] = $this->Files_model->get_dir();
	        $data['private'] = TRUE;
	        $files = $this->Files_model->get_files();
	        $data['files_private'] = $files['private'];
	        $data['files_public'] = $files['public'];
	        $this->load->view('files/files_view', $data);
	    }
	    else
	    {
	        $data['error'] = NULL;
	        $data['private'] = TRUE;
	        $files = $this->Files_model->get_files();
	        $data['files_private'] = $files['private'];
	        $data['files_public'] = $files['public'];
	        $this->load->view('files/files_view', $data);
	    }
	    $this->load->view('template/footer_ver1');
	}
	
	public function load_dir() {
	    if($this->Login_model->is_logged()['logged']) {
	        $this->load->view('template/header_public_gen', array('logged' => TRUE));
	        $data['private'] = TRUE;
	    }
	    else {
	        $this->load->view('template/header_public_gen', array('logged' => FALSE));
	        $data['private'] = FALSE;
	    }
	    $data['error'] = NULL;
	    $files = $this->Files_model->get_files();
	    $data['files_private'] = $files['private'];
	    $data['files_public'] = $files['public'];
	    $this->load->view('files/files_view', $data);
	    $this->load->view('template/footer_ver1');
	}
	
	public function save_file() {
	    
	        header('Content-Description: File Transfer');
	        header('Content-Type: application/octet-stream');
	        header('Content-Disposition: attachment; filename="'.basename($file).'"');
	        header('Expires: 0');
	        header('Cache-Control: must-revalidate');
	        header('Pragma: public');
	        header('Content-Length: ' . filesize($file));
	        readfile($file);
	}
	
	public function download_file() {	    
	    $this->Files_model->download_file($this->uri->segment(3, 0), $this->uri->segment(4, 0));
	    echo '<br><br>here';
	    //redirect(base_url());
	}
	
	public function delete_file() {
	    $this->Files_model->delete_file($this->uri->segment(3, 0), $this->uri->segment(4, 0));
	    $this->load_dir();
	}
}