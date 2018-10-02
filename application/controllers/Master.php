<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master extends CI_Controller {
    
	public function index() {
	    echo "<h1>Welcome to the world of Codeigniter</h1>";//Just an example to ensure that we get into the function
	    die();
	}
	
	public function users() {
	    $crud = new grocery_CRUD();
	    $crud->set_table('users');
	    $output = $this->grocery_crud->render();
	    
	    $this->_example_output($output);
	}
	
	public function user_management()
	{
	    try{
	        $crud = new grocery_CRUD();
	        
	        $crud->set_theme('datatables');
	        $crud->set_table('users');
	        $crud->set_subject('Users');
	        $crud->required_fields('username');
	        $crud->columns('type_code','role','username', 'fname', 'lname');
	        
	        $output = $crud->render();
	        
	        $this->_user_output($output);
	        
	    }catch(Exception $e){
	        show_error($e->getMessage().' --- '.$e->getTraceAsString());
	    }
	}
	
	private function _user_output($output=NULL) {
	    $this->load->view('master/edit_users_view.php', $output);
	}
	
	public function user_types() {
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
	
	private function _types_output($output=NULL) {
	    $this->load->view('master/types_view.php', $output);
	}
}
