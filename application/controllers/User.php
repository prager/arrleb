<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
    
	public function index() {
	    $this->edit_user();
	}
	
	public function edit_user() {
	    if($this->Login_model->is_logged()['logged']) {
	        $tbl = $this->Login_model->check_table();
	        $user = $this->Login_model->get_cur_user();
	        $this->load->view('template/header_public_gen', array('logged' => TRUE));
	        $this->load->view('user/edit_user_view', $user);
	        $this->load->view('template/footer_ver1');
	        /* try{
	            $crud = new grocery_CRUD();
	            
	            $crud->set_theme('datatables');
	            $crud->set_table($tbl);
	            $crud->set_subject('User');
	            $crud->columns('username', 'email', 'street', 'city', 'state_cd', 'zip_cd');
	            $crud->fields('username', 'email', 'street', 'city', 'state_cd', 'zip_cd');
	            $crud->required_fields('username', 'email', 'street', 'city', 'state_cd', 'zip_cd');
	            $crud->unset_add();
	            $crud->unset_delete();	            
	            
	            $output = $crud->render();
	            
	            $this->_user_output($output);
	            
	        }catch(Exception $e){
	            show_error($e->getMessage().' --- '.$e->getTraceAsString());
	        }*/
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
	    $this->load->view('user/edit_user_view.php', $output);
	}
	
}
