<?php
class Speaker_model extends CI_Model {
	function __construct() {
		parent::__construct();
		$this->load->database();
	}
	
	public function get_lectures() {
	    $retarr = array();
	    $id_user = $this->Login_model->get_cur_user_id();
	    
	    $this->db->where('id_user', $id_user);
	    $this->db->from('speaker_topics');
	    $cnt = $this->db->count_all_results();
	    $retarr['cnt'] = $cnt;
	    $retarr['lectures'] = array();
	    if($cnt > 0) {
	        $this->db->select('*');
	        $this->db->where('id_user', $id_user);
	        $res = $this->db->get('speaker_topics')->result();
	        foreach($res as $row) {
	            $arr = array(
	               'id' => $row->id_speaker_topics,
	               'topic_name' => $row->topic_name,
	               'date' => $row->date,
	               'location' => $row->location,
	               'topic_text' => $row->topic_text, 
	               'topic_ref' => $row->topic_ref
	                );
	                array_push($retarr['lectures'], $arr);
	        }
	    }
	    
	    return $retarr;
	}
	
	public function get_lecture($id) {
	    $this->db->select('*');
	    $this->db->where('id_education', $id);
	    $res = $this->db->get('education')->row();
	    
	    $retarr = array();
	    $retarr['id'] = $res->id_education;
	    $retarr['course'] = $res->course;
	    $retarr['date_from'] = $res->date_from;
	    $retarr['date_to'] = $res->date_to;
	    $retarr['location'] = $res->location;
	    $retarr['fee'] = $res->fee;
	    
	    $exploded = explode(' ', $res->details_url);
	    $retarr['details_url'] = '';
	    
	    foreach ($exploded as $str) {
	       $retarr['details_url'] .= $this->make_clickable_url($str) . ' ';
	    }
	    
	    return $retarr;
	}
    
	public function edit_lecture($param) {
	    $id = $param['id'];
	    unset($param['id']);
	    if($id > 0) {
	        $this->db->where('id_speaker_topics', $id);
	        $this->db->update('speaker_topics', $param);
	    }
	    else {
	        $param['id_user'] = $this->Login_model->get_cur_user_id();
	        $this->db->insert('speaker_topics', $param);
	    }
	}
	
	public function delete_lecture($id) {
	    $this->db->where('id_speaker_topics', $id);
	    $this->db->delete('speaker_topics');
	}	
	
	private function make_clickable_url($string){
	    
	    //FIND URLS INSIDE TEXT
	    //The Regular Expression filter
	    $reg_exUrl = "/(?i)\b((?:https?:\/\/|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}\/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]{};:'\".,<>?«»“”‘’]))/";
	    
	    // Check if there is a url in the text
	    if(preg_match($reg_exUrl, $string, $url)) {
	        
	        if(strpos( $url[0], ":" ) === false){
	            $link = 'http://'.$url[0];
	        }else{
	            $link = $url[0];
	        }
	        
	        // make the urls hyper links
	        $string = preg_replace($reg_exUrl, '<a href="'.$link.'" title="'.$url[0].'" target="_blank">'.$url[0].'</a>', $string);
	        
	    }
	    
	    return $string;
	}
	
	public function get_speakers() {
	    
	    $this->db->where('active', 1);
	    $this->db->where('type_code', 3);
	    $this->db->from('users');
	    $cnt = $this->db->count_all_results();
	    
	    $retarr = array();
	    $retarr['cnt'] = $cnt;
	    $retarr['speakers'] = array();
	    
	    if($cnt > 0) {
	        $this->db->select('id_user, fname, lname, callsign, email, city, state_cd');
	        $this->db->where('active', 1);
	        $this->db->where('type_code', 3);
	        $res = $this->db->get('users')->result();	        
	        
	        foreach($res as $row) {
	            $arr = array(
	                'id' => $row->id_user,
	                'fname' => $row->fname,
	                'lname' => $row->lname,
	                'callsign' => $row->callsign,
	                'email' => $row->email,
	                'city' => $row->city,
	                'state' => $row->state_cd
	            );
	            
	            array_push($retarr['speakers'], $arr);
	        }
	    }
	    
	    return $retarr;
	    
	}	
	
	public function get_speaker($id) {
	    $this->db->select('*');
	    $this->db->where('id_user', $id);
	    $user_data = $this->db->get('users')->row();
	    
	    $retarr = array();
	    
	    $retarr['fname'] = $user_data->fname;
	    $retarr['lname'] = $user_data->lname;
	    $retarr['email'] = $user_data->email;
	    $retarr['facebook'] = $user_data->facebook;
	    $retarr['twitter'] = $user_data->twitter;
	    $retarr['linkedin'] = $user_data->linkedin;
	    $retarr['googleplus'] = $user_data->googleplus;
	    $retarr['callsign'] = $user_data->callsign;
	    $retarr['phone'] = $user_data->phone;
	    $retarr['street'] = $user_data->street;
	    $retarr['city'] = $user_data->city;
	    $retarr['state'] = $user_data->state_cd;
	    $retarr['zip'] = $user_data->zip_cd;
	    
	    $this->db->select('narrative, narrative2');
	    $this->db->where('id_user', $id);
	    $row = $this->db->get('user_' . $id . '_tbl')->row();
	    $retarr['narrative'] = $row->narrative;
	    $retarr['narrative2'] = $row->narrative2;
	    
	    $this->db->where('id_user', $id);
	    $this->db->from('speaker_topics');
	    $cnt = $this->db->count_all_results();
	    
	    $retarr['cnt'] = $cnt;
	    
	    $retarr['topics'] = array();
	    if($cnt > 0) {
    	    $this->db->select('*');
    	    $this->db->where('id_user', $id);
    	    $res = $this->db->get('speaker_topics')->result();
    	    	    
        	    foreach($res as $row) {
        	        $arr = array(
        	            'subject' => $row->topic_name,
        	            'text' => $row->topic_text,
        	            'ref' => $row->topic_ref,
        	            'location' => $row->location,
        	            'date' => $row->date
        	        );
        	        array_push($retarr['topics'], $arr);
        	    }
	    }
	    
	    return $retarr;
	}
	
	
	
	
}