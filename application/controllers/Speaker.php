<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Speaker extends CI_Controller {
     
    
	public function index() {
	    $this->load_speaker('');
	}
	
	public function load_speaker($msg) {
	    if($this->check_speaker()) {
	        
	        $lectures = $this->Speaker_model->get_lectures();
	        
	        $data['cnt'] = $lectures['cnt'];
	        $data['lectures'] = $lectures['lectures'];
	        $this->load->view('template/header_public_gen', array('logged' => TRUE));
	        $this->load->view('speakers/main_view', $data);
	        
	    }
	    else {
	        $this->load->view('template/header_public_gen', array('logged' => FALSE));
	        $data['title'] = 'Error';
	        $data['msg'] = 'Checking credentials error.
					Go to home page ' . anchor('public_ctl', 'here'). '<br><br>';
	        $this->load->view('status/status_view', $data);
	    }
	    $this->load->view('template/footer_ver1');
	}
	
	public function edit_lecture() {
	    $param = array();
	    $param['id'] = $this->uri->segment(3, 0);
	    $param['topic_name'] = $this->input->post('topic_name');
	    $param['date'] = strtotime($this->input->post('date')) + 32400;
	    $param['topic_text'] = $this->input->post('topic_text');
	    $param['topic_ref'] = $this->input->post('topic_ref');
	    $param['location'] = $this->input->post('location');
	    $this->Speaker_model->edit_lecture($param);
	    $this->load_speaker('Lecture has been added/edited. Thank you!');
	}
	
	public function delete_lecture() {
	    $this->Speaker_model->delete_lecture($this->uri->segment(3, 0));
	    $this->load_speaker('Class has been deleted. Thank you!');
	}
	
	private function check_speaker() {
	    
	    $level = $this->Login_model->get_cur_user()['level'];
	    
	    if(($level == 3) || ($level == 99)) {
	        return TRUE;
	    }
	    else {
	        return FALSE;
	    }
	}
	
	public function show_speaker() {
	    
	    $data = $this->Speaker_model->get_speaker($this->uri->segment(3, 0));
	    $data['home_pg'] = anchor('public_ctl/speakers', 'Speakers');
	    $this->load->view('template/header_public_gen', array('logged' => $this->Login_model->is_logged()['logged']));
	    $this->load->view('user/team_member_view', $data);
	    $this->load->view('template/footer_ver1');
	    
	}
	
	public function spk_list() {
	    $this->load->view('template/head_only');
	    $this->load->view('speakers/inc_iframe', $this->Speaker_model->get_speakers());
	    $this->load->view('template/footer_refonly');
	}
}
