<?php
class Login_model extends CI_Model {
	function __construct() {
		parent::__construct();
		$this->load->database();
	}
	
	function is_logged() {
		$retval = array();
		$retval['logged'] = FALSE;
		if (session_status() !== PHP_SESSION_ACTIVE) {
			session_start();
		}
		
		if(isset($_SESSION['logged'])) {
			if($_SESSION['logged']) {
				$retval['level'] = $_SESSION['level'];
				$retval['logged'] = TRUE;
			}
		}
		
		return $retval;
	}
	
	/**
	 * Checks user ID and password credentials
	 * @param $data array with user ID and password
	 */
	public function check_credentials($data) {
		//echo '<br><br><br>' . password_hash($data['pass'], PASSWORD_BCRYPT, array('cost' => 12));
		$retval = FALSE;
		if (session_status() !== PHP_SESSION_ACTIVE) {
			session_start();
			session_regenerate_id(FALSE);
		}
		$this->db->select('username');
		$this->db->where('username', $data['user']);
		$query = $this->db->get('users');
		if(count($query->result()) == 1) {
			$this->db->select('pass');
			$this->db->where('username', $data['user']);
			$query = $this->db->get('users');
			if(count($query->result()) == 1) {
				$row = $query->row();
				if(password_verify($data['pass'], $row->pass)) {
					$retval = TRUE;
					$this->load->model('user_model');
					$user = $this->user_model->get_user($data['user']);
					$user['session_id'] = session_id();
					$this->set_logged($user);
					$_SESSION['user'] = $user;
					$_SESSION['id_user'] = $user['id'];
					$_SESSION['logged'] = TRUE;
					$_SESSION['level'] = $user['level'];
					$_SESSION['user_type'] = $user['description'];
				}
			}
		}
	
		return $retval;
	}

	private function set_logged($user){
//check for logged=1 in previous sessions for current user and set logged to 0
		$this->db->select('logged');
		$this->db->where('logged', 1);
		$this->db->where('id_user', $user['id']);
		$res = $this->db->get('ci_sessions')->result();
		
		if(count($res) > 0) {
			$this->db->where('logged', 1);
			$this->db->where('id_user', $user['id']);
			$this->db->update('ci_sessions', array('logged' => 0));
		}
		
		$session_data = array(
				'id_user' => $user['id'],
				'session_id' => $user['session_id'],
				'ip_address' => $_SERVER['REMOTE_ADDR'],
				'date_logged_in' => time(),
				'logged' => 1);
		$this->db->insert('ci_sessions', $session_data);
	}
	
	public function get_viewdata($username) {
		$retarr = array();
		$this->db->select('*');
		$this->db->where('username', $username);
		$usr_data = $this->db->get('users')->row();
		
		$data = array();
		
		if($usr_data->type_code == 0) {
		    $retarr['header'] = 'template/header_public_gen';
		    $retarr['view'] = 'status/status_view';
		    $retarr['data']['title'] = 'User Not Set';
		    $retarr['data']['msg'] = 'Unfortunately, your user profile has not been setup yet. If you find this message in error, you may
            contact the webmaster at jan@kulisek.org<br><br>';
		    
		}
		elseif($usr_data->type_code == 1) {
			$retarr['header'] = 'template/header_public_gen';
			$retarr['view'] = 'events/main_view';
			$retarr['data'] = NULL;
		}
		elseif($usr_data->type_code == 2) {
			
			$retarr['header'] = 'template/header_public_gen';
			$retarr['view'] = 'edu/main_view';
			$retarr['data'] = NULL;
		}
		
		elseif($usr_data->type_code == 99) {
		    
		    $retarr['header'] = 'template/header_private';
		    $retarr['view'] = 'master/main_view';
		    $retarr['data']['msg'] = 'This is it!';
		}
		else {
		    $retarr['header'] = 'template/header_public_gen';
		    $retarr['view'] = 'status/status_view';
		    $retarr['data']['title'] = 'Login Error';
		    $retarr['data']['msg'] = 'Unfortunately, your user profile is not properly setup. If you find this message in error, you may
            contact the webmaster at jan@kulisek.org<br><br>';
		}
				
		return $retarr;
	}
	
	public function get_blogger() {
		$retval = 0;
		if($this->is_logged() != 100) {
			
//to do: check if blogger and set retval to user ID	

			$retval = 3;
		}	
		return $retval;
	}
	
	public function get_cur_user() {
		
	    if (session_status() !== PHP_SESSION_ACTIVE) {
			session_start();
		}
		if(isset($_SESSION['logged'])) {
		  return $_SESSION['user'];
		}
		else {
		    return NULL;
		}
	}
	


	public function get_cur_user_id() {
		if (session_status() !== PHP_SESSION_ACTIVE) {
			session_start();
		}
	
		return $_SESSION['id_user'];
	}
	
	public function logout() {
		if (session_status() !== PHP_SESSION_ACTIVE) {
			session_start();
		}
		
		if(isset($_SESSION['logged'])) {
			$this->db->where('logged', 1);
			$this->db->where('id_user',  $_SESSION['id_user']);
			$this->db->update('ci_sessions', array('logged' => 0, 'date_logged_out' => time()));
			
			unset($_SESSION['logged']);
			unset($_SESSION['level']);
			unset($_SESSION['id_user']);
			unset($_SESSION['user']);
			unset($_SESSION['user_type']);
		}

		session_regenerate_id(FALSE);
		session_destroy();
	}
}