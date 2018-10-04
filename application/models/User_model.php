<?php
class User_model extends CI_Model {
	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	/**
	 * Gets the user data and returns them in an array
	 */
	public function get_user($username){
		//get username from users table
		$this->db->select('*');
		$this->db->where('username', $username);
		$query = $this->db->get('users');
		$row = $query->row();
		//$user['type'] = $row->type_code;
		$user['level'] = $row->type_code;
		$user['id'] = $row->id_user;
		$user['fname'] = $row->fname;
		$user['lname'] = $row->lname;
		$user['authorized'] = $row->authorized;
		$user['username'] = $username;
		
//get user attributes from logins table
		$this->db->select('description');
		$this->db->where('type_code', $user['level']);
		$user['description'] = $this->db->get('user_types')->row()->description;
		
		return $user;
	}
	
	public function get_user_by_id($id) {
		$this->db->select('*');
		$this->db->where('id_user', $id);
		return $this->db->get('users')->row();
	}
	
	public function check_authorized() {
		$retval = TRUE;
		$id = $this->Login_model->get_cur_user_id();
		$this->db->select('authorized');
		$this->db->where('id_user', $id);
		if($this->db->get('users')->row()->authorized == 0) {
			$retval = FALSE;
		}
		return $retval;
	}
	
	public function send_msg($param) {
		/*$this->email->from($param['email'], $param['name']);
		 $this->email->to('fairball@jlkconsulting.info');
		 
		 $this->email->subject($param['subj']);
		 $this->email->message($param['msg']);
		 send_email('fairball@jlkconsulting.info', $param['subj'], $param['msg']);
		 $this->email->send();*/
		
		$recipient = 'jank@jlkconsulting.info';
		$message = "Message from ARRL-EB:\n\n Name: " . $param['fname'] . ' ' . $param['lname'] . "\n\n" . "Message:\n\n" . $param['msg'];
		mail($recipient, 'From ARRL-EB: ' . $param['subject'], $message);
		
		/*$msg_arr = array(
				'date' => time(),
				'name' => $param['name'],
				'email' => $param['email'],
				'subject' => $param['subject'],
				'message' => $param['msg']);
		
		$this->db->insert('messages', $msg_arr);*/
	}
	
	public function register($param) {
	    $retval = TRUE;
	    
	    $this->db->select('email');
	    $q = $this->db->get_where('users', array('email' => $param['email']));
	    
	    if($q->num_rows() == 0) {
	        
	        $this->db->insert('new_user', $param);
	        
	        $rand_str = bin2hex(openssl_random_pseudo_bytes(12));
	        
	        $param['verifystr'] = base_url() . 'index.php/public_ctl/confirm_reg/' . $rand_str;
	        $param['email_key'] = $rand_str;	        
	       
	        $param['active'] = 1;
	        
	        $this->db->insert('users', $param);
	        
	        $recipient = 'jank@jlkconsulting.info';
	        $subject = 'ARRL EB registration';
	        $message = $param['fname'] . ' ' . $param['lname'] . "\n\n".
	   	        $param['street'] . "\n\n" .$param['city'] . ' ' . $param['state_cd'] . $param['zip_cd'] . "\n\n".
	   	        ' Phone: ' . $param['phone'] . ' | Email: ' . $param['email'] . "\n\n";
	   	        
	   	        mail($recipient, $subject, $message);
	   	        
	   	        $recipient = $param['email'];
	   	        $subject = 'ARRL EB Registration';
	   	        
	   	        
	   	        $message = 'To finish your registration for ARRL EB click on the following link or copy paste in the browser: ' . $param['verifystr'] . "\n\n";
	   	        $message .= 'You must do so within 72 hours otherwise you login information may be deactivated. Thank you for your interest in Fair-Ball!';
	   	        
	   	        mail($recipient, $subject, $message);
	   	        
	   	        
	   	        
	   	        $this->db->select('id_user');
	   	        $this->db->where('email', $param['email']);
	   	        
	   	        $param['id_user'] = $this->db->get('users')->row()->id_user;
	   	        
	    }
	    else {
	        $retval = FALSE;
	    }
	    
	    return $retval;
	}
	
	public function get_user_to_reg($verifystr) {
	    
	    $this->db->select('*');
	    $this->db->where('email_key', $verifystr);
	    $row = $this->db->get('users')->row();
	    
	    $retarr['fname'] = $row->fname;
	    $retarr['lname'] = $row->lname;
	    $retarr['id_user'] = $row->id_user;
	    $retarr['username'] = '';
	    
	    return $retarr;
	}
	
	public function set_user_login($param) {
	    $retval = FALSE;
	    
	    $pass1 = trim($param['pass1']);
	    $pass2 = trim($param['pass2']);
	    
	    if($pass1 == $pass2) {
	        $uppercase = preg_match('@[A-Z]@', $pass1);
	        $lowercase = preg_match('@[a-z]@', $pass1);
	        $number    = preg_match('@[0-9]@', $pass1);
	        
	        //if(!$uppercase || !$lowercase || !$number || strlen($password) < 8) {
	        if(strlen($pass1) > 5) {
    	        $setarr['pass'] = password_hash($pass1, PASSWORD_BCRYPT, array('cost' => 12));
    	        $setarr['username'] = $param['username'];
    	        $setarr['active'] = 0;
    	        $this->db->select('active');
    	        $this->db->where('id_user', $param['id_user']);
    	        if($this->db->get('users')->row()->active == 1) {
    	            $this->db->where('id_user', $param['id_user']);
    	            $this->db->update('users', $setarr);
    	            $retval = TRUE;
    	        }    	        
	        }
	    }
	    
	    return $retval;
	}
	
	public function forgot_password($param) {
	    
	    $retarr = array();
	    
	    $retarr['error'] = NULL;
	    $retarr['username'] = NULL;
	    
	    $param['pass1'] = trim( $param['pass1']);
	    $param['pass2'] = trim( $param['pass2']);
	    
	    //$this->db->select('*');
	    $this->db->where('email', $param['email']);
	    $this->db->from('users');
	    $q = $this->db->count_all_results();
	    
	    if(($param['pass1'] == '') || ($param['pass2'] == '')) {
	        $retarr['error'] = 'Entered invalid passwords!';
	        $retarr['flag'] = FALSE;
	        return;
	    }
	    
	    if(!(filter_var($param['email'], FILTER_VALIDATE_EMAIL))) {
	        $retarr['error'] = 'Entered invalid email address';
	        $retarr['flag'] = FALSE;
	    }
	    elseif($q == 0) {
	        $retarr['error'] = 'Email address doesn\'t exist in the system';
	        $retarr['flag'] = FALSE;
	    }
	    else {
	        if($param['pass1'] == $param['pass2']) {
	            
	            $uppercase = preg_match('@[A-Z]@', $param['pass1']);
	            $lowercase = preg_match('@[a-z]@', $param['pass1']);
	            $number    = preg_match('@[0-9]@', $param['pass1']);
	            
	            if($uppercase && $lowercase && $number && (strlen($param['pass1']) > 5)) {
	            //if(strlen($param['pass1']) > 5) {
	                $param['pass'] = password_hash($param['pass1'], PASSWORD_BCRYPT, array('cost' => 12));
	                unset($param['pass1']);
	                unset($param['pass2']);
	                $this->db->select('username');
	                $this->db->where('email', $param['email']);
	                
	                $retarr['username'] = $this->db->get('users')->row()->username;
	                
	                $retarr['flag'] = TRUE;
	                
	                $this->db->where('email', $param['email']);
	                unset($param['email']);
	                
	                $this->db->update('users', $param);
	            } 
	            else {
	                $retarr['error'] = 'Password must be with upper/lower case letter(s), number(s) and number(s)';
	                $retarr['flag'] = FALSE;
	            }
	        }
	        else {
	            $retarr['error'] = 'Passwords did not match';
	            $retarr['flag'] = FALSE;
	        }
	        
	    }
	    return $retarr;
	}
}