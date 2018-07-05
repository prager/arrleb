<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Public_ctl extends CI_Controller {

	public function __construct() {
		parent::__construct();
		date_default_timezone_set("America/Los_Angeles");
	}
	
	public function index()
	{
		$this->load->view('template/header_public_main');
		$this->load->view('public/main_view');
		$this->load->view('template/footer');
	}
}
