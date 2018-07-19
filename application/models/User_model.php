<?php
class User_model extends CI_Model {
	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	/**
	 * Gets the user data and returns them in an array
	 * @param unknown $username
	 */
	public function get_user($username){
		//get username from users table
		$this->db->select('*');
		$this->db->where('user_name', $username);
		$query = $this->db->get('user_tbl');
		$row = $query->row();
		//$user['type'] = $row->type_code;
		$user['level'] = $row->type_code;
		$user['id'] = $row->id_user;
		$user['fname'] = $row->fname;
		$user['lname'] = $row->lname;
		$user['authorized'] = $row->authorized;
		$user['user_name'] = $username;
		
//get id_roster
		$this->db->select('*');
		$this->db->where('id_user', $user['id']);
		$q = $this->db->get('team_roster');
		$row = $q->row();
		if(count($row) == 0) {
			$user['id_roster']= 0;
			$user['id_team']= 0;
			$user['team'] = '';
		}
		else {
			$user['id_roster']= $row->id_roster;
			$user['id_team'] = $row->id_team;
//get team name
			$this->db->select('*');
			$this->db->where('id_team', $user['id_team']);
			$user['team'] = $this->db->get('team_tbl')->row()->team_name;
		}
		
//get user attributes from logins table
		$this->db->select('description');
		$this->db->where('type_code', $user['level']);
		$user['description'] = $this->db->get('user_types')->row()->description;
		
		return $user;
	}
	
	public function get_user_by_id($id) {
		$this->db->select('*');
		$this->db->where('id_user', $id);
		return $this->db->get('user_tbl')->row();
	}
	
	public function check_authorized() {
		$retval = TRUE;
		$id = $this->Login_model->get_cur_user_id();
		$this->db->select('authorized');
		$this->db->where('id_user', $id);
		if($this->db->get('user_tbl')->row()->authorized == 0) {
			$retval = FALSE;
		}
		return $retval;
	}
}