<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master extends CI_Controller {
    
	public function index() {
	    
	    if($this->check_master()) {
	        $this->load->view('template/header_public_gen', array('logged' => TRUE));
	       $this->load->view('master/main_view');
	       
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
	
	public function users() {
	    $crud = new grocery_CRUD();
	    $crud->set_table('users');
	    $output = $this->grocery_crud->render();
	    
	    $this->_example_output($output);
	}
	
	public function user_management() {
	    if($this->check_master()) {
    	    try{
    	        $crud = new grocery_CRUD();
    	        
    	        $crud->set_theme('datatables');
    	        $crud->set_table('users');
    	        $crud->set_subject('Users');
    	        $crud->columns('type_code','role','authorized', 'active', 'username', 'fname', 'lname', 'position', 'pos_code');
    	        $crud->fields('type_code', 'role','authorized', 'active', 'username', 'fname', 'lname', 'position', 'pos_code');
    	        $crud->required_fields('username');
    	        
    	        $output = $crud->render();
    	        
    	        $this->_user_output($output);
    	        
    	    }catch(Exception $e){
    	        show_error($e->getMessage().' --- '.$e->getTraceAsString());
    	    }
	    }
	    else {
	        $this->load->view('template/header_public_gen', array('logged' => FALSE));
	        $data['title'] = 'Error';
	        $data['msg'] = 'Checking credentials error.
					Go to home page ' . anchor('public_ctl', 'here'). '<br><br>';
	        $this->load->view('status/status_view', $data);
	        $this->load->view('template/footer_ver1');
	    }
	}
	
	private function _user_output($output=NULL) {
	    $this->load->view('master/edit_users_view.php', $output);
	}
	
	public function user_types() {
	    if($this->check_master()) {
    	    try{
    	        $crud = new grocery_CRUD();
    	        
    	        $crud->set_theme('datatables');
    	        $crud->set_table('user_types');
    	        $crud->set_subject('Types');
    	        $crud->required_fields('type_code');
    	        $crud->columns('type_code','description','code_str');
    	        
    	        $output = $crud->render();
    	        
    	        $this->_types_output($output);
    	        
    	    }catch(Exception $e){
    	        show_error($e->getMessage().' --- '.$e->getTraceAsString());
    	    }
	   }
	   else {
	       $this->load->view('template/header_public_gen');
	       $data['title'] = 'Error';
	       $data['msg'] = 'Checking credentials error.
					Go to home page ' . anchor('public_ctl', 'here'). '<br><br>';
	       $this->load->view('status/status_view', $data);
	       $this->load->view('template/footer_ver1');
	   }
	}
	
	private function _types_output($output=NULL) {
	    $this->load->view('master/types_view.php', $output);
	}
	
	private function check_master() {
	    if($this->Login_model->get_cur_user()['level'] == 99) {
	        return TRUE;
	    }
	    else {
	        return FALSE;
	    }
	}
}
