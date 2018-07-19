<?php
class Login_model extends CI_Model {
	function __construct() {
		parent::__construct();
		$this->load->database();
	}
	
	function is_logged() {
		$retval = 100;
		if (session_status() !== PHP_SESSION_ACTIVE) {
			session_start();
		}
		
		if(isset($_SESSION['logged'])) {
			if($_SESSION['logged']) {
				$retval = $_SESSION['level'];
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
		$this->db->select('user_name');
		$this->db->where('user_name', $data['user']);
		$query = $this->db->get('user_tbl');
		if(count($query->result()) == 1) {
			$this->db->select('pass');
			$this->db->where('user_name', $data['user']);
			$query = $this->db->get('user_tbl');
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
	
	public function get_viewdata($user_name) {
		$retarr = array();
		$this->db->select('*');
		$this->db->where('user_name', $user_name);
		$usr_data = $this->db->get('user_tbl')->row();
		
		if($usr_data->type_code == 0) {
			$retarr['header'] = 'template/guest_header';
			$retarr['view'] = 'guest/guest_view';
			$retarr['data'] = NULL;
		}
		elseif($usr_data->type_code == 1) {
			$retarr['header'] = 'template/parent_header';
			$retarr['view'] = 'parent/parent_view';
			$retarr['data'] = NULL;
		}
		elseif($usr_data->type_code == 2) {
			
			$arr = $this->Coach_model->get_players(0);
			
			if($arr['team'] != NULL) {
				$retarr['header'] = 'template/coach_header';
				$retarr['view'] = 'coach/coach_view';
				$retarr['data'] = $this->Coach_model->get_coach_data();
				$retarr['data']['coach'] = $this->Login_model->get_cur_user();
				$retarr['data']['players'] = $arr['players'];
				$retarr['data']['has_players'] = $arr['has_players'];
				$retarr['data']['cur_lineup'] = $this->Coach_model->cur_lineup();
				
				$retarr['data']['league'] = $arr['league'];
				$retarr['data']['team'] = $arr['team'];
				$retarr['data']['msg'] = '';
			}
			else {
				$retarr['data']['title'] = 'Cannot load page';
				$retarr['data']['msg'] = 'There is an error while loading page';
			}
		}
		elseif($usr_data->type_code == 4) {
			$retarr['header'] = 'template/rep_header';
			$retarr['view'] = 'rep/rep_view';
			$retarr['data'] = NULL;
		}
		elseif($usr_data->type_code == 6) {
			$retarr['header'] = 'template/division_header';
			$retarr['view'] = 'division/main_view';
			$retarr['data'] = NULL;
		}
		elseif($usr_data->type_code == 3) {
			$retarr['header'] = 'template/parent_header';
			$retarr['view'] = 'parent/parent_view';
			$retarr['data'] = NULL;
		}
		elseif($usr_data->type_code == 99) {
			$retarr['header'] = 'template/master_header';
			$retarr['view'] = 'master/master_view';
			$retarr['data'] = NULL;
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
		return $_SESSION['user'];
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