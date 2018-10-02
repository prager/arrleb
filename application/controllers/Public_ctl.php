<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Public_ctl extends CI_Controller {
	
	var $msg_param;
	
	public function __construct() {
		parent::__construct();
		date_default_timezone_set("America/Los_Angeles");
	}
	
	public function index() {
		$this->load->view('template/header_public_main');
		$this->load->view('public/main_view');
		$this->load->view('template/footer');
	}
	
	public function contact() {		
		$this->load->view('template/header_public_contact');
		$data['fname'] = '';
		$data['lname'] = '';
		$data['email'] = '';
		$data['subject'] = '';
		$data['msg'] = '';
		$this->load->view('public/contact_view', $data);
		$this->load->view('template/footer');
	}
	
	public function about() {
		$this->load->view('template/header_public_about');
		$this->load->view('public/about_view');
		$this->load->view('template/footer');
	}
	
	public function team() {
		$this->load->view('template/header_public_team');
		$this->load->view('public/team_view');
		$this->load->view('template/footer');
	}
	
	public function login() {
		$this->load->view('template/header_public_gen');
		$data['title'] = 'Working on It';
		$data['msg'] = 'User login and registration is currently being worked on. Please, come back soon and check. Thank you for your
		patience!<br><br>';
		$this->load->view('status/status_view', $data);
		$this->load->view('template/footer');
	}
	
	public function msg() {
		$this->form_validation->set_rules('name', 'name', 'callback_validate_msg');
		if($this->form_validation->run()) {
			$this->User_model->send_msg($this->msg_param);
			$this->load->view('template/header_public_main');
			$data['title'] = 'Thank you!';
			$data['msg'] = 'Your message has been sent. You may go to ' . anchor('public_ctl', 'home page') .
			' Thank you!<br><br>';
			$this->load->view('status/status_view', $data);
			$this->load->view('template/footer');
		}
		else {			
			$this->load->view('template/header_public_main');
			$this->load->view('public/contact_view', $this->msg_param);
			$this->load->view('template/footer');
		}
	}
	
	public function validate_msg() {
		$param['fname'] = $this->input->post('fname');
		$param['lname'] = $this->input->post('lname');
		$param['email'] = $this->input->post('email');
		$param['subject'] = $this->input->post('subj');
		$param['msg'] = $this->input->post('msg');
		
		$this->msg_param = $param;
		
		if($param['fname'] == '' || $param['lname'] == '' || valid_email($param['email']) != TRUE || $param['subject'] == '' || 
				$param['msg'] == '') {
			$this->form_validation->set_message('validate_msg', 'Please, fill all information below. Thank you!');
			return FALSE;
		}
		else {
			return TRUE;
		}
	}
	
	public function education() {
		$this->load->view('template/header_public_gen');
		$this->load->view('public/edu_view');
		$this->load->view('template/footer');
	}
	
	public function class_details() {
		$this->load->view('template/header_public_gen');
		$this->load->view('public/details_edu_view');
		$this->load->view('template/footer');
	}
	
	public function club_corner() {
		$this->load->view('template/header_public_corner');
		$this->load->view('public/corner_view');
		$this->load->view('template/footer');
	}
	
	public function register() {
	    $this->load->view('template/header_public_gen');
	    $this->load->view('public/register_view');
	    $this->load->view('template/footer');
	}
	
	public function send_registration() {
	    
	}
}
