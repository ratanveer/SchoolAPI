<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MyModel extends CI_Model {
	
	/**************************************************
	****************** Parents API ********************
	**************************************************/ 
	
    public function login($username,$password)
    {	
	   $query  = $this->db->select('*')->from('users')->where('username',$username)->get()->row();	
        if($query == ""){
            return array('status' => 204,'message' => 'Username not found.');
        } else {
            $password1 = $query->password;
			// $id  = $query->id;
			$childs	= $query->childs;
			$userid = $query->user_id;
			$role = $query->role;
			
			switch ($role){
			case "parent":
				if (hash_equals($password1, $password)) {
			   $last_login = date('Y-m-d H:i:s');
               $token = crypt(substr( md5(rand()), 0, 7));
               $expired_at = date("Y-m-d H:i:s", strtotime('+12 hours'));
               $this->db->trans_start();		
               $this->db->where('childs',$childs)->update('users',array('last_login' => $last_login));
               $this->db->insert('users_authentication',array('role' => $role,'childs_id' => $childs,'token' => $token,'expired_at' => $expired_at));
               if ($this->db->trans_status() === FALSE){
                  $this->db->trans_rollback();
                  return array('status' => 500,'message' => 'Internal server error.');
				 
               } else {
                  $this->db->trans_commit();
				  return array('status' => 200,'message' => 'Successfully login.','token' => $token, 'childs' => $childs, 'role' => $role);
			   }
            } else {
               return array('status' => 204,'message' => 'Wrong password.');
            }
				break;
			case "teacher":
				if (hash_equals($password1, $password)) {
			   $last_login = date('Y-m-d H:i:s');
               $token = crypt(substr( md5(rand()), 0, 7));
               $expired_at = date("Y-m-d H:i:s", strtotime('+12 hours'));
               $this->db->trans_start();		
               $this->db->where('role',$role)->update('users',array('last_login' => $last_login));
               $this->db->insert('users_authentication',array('role' => $role,'teacher_id' => $userid,'token' => $token,'expired_at' => $expired_at));
               if ($this->db->trans_status() === FALSE){
                  $this->db->trans_rollback();
                  return array('status' => 500,'message' => 'Internal server error.');
				 
               } else {
                  $this->db->trans_commit();
				  return array('status' => 200,'message' => 'Successfully login.','teacher_id' => $userid,'role' => $role,'token' => $token);
			   }
            } else {
               return array('status' => 204,'message' => 'Wrong password.');
            }
				break;
			}
        }
    }
	public function auth()
    {
       // $childs  = $this->input->get_request_header('Childs-ID', TRUE);
	   $chd = json_decode(file_get_contents('php://input'), TRUE);
		$childs = implode("",$chd);
        $token  = $this->input->get_request_header('Authorization', TRUE);		
        $query  = $this->db->select('expired_at')->from('users_authentication')->where('childs_id',$childs)->where('token',$token)->get()->row();
		if($query == ""){
            return json_output(401,array('status' => 401,'message' => 'Unauthorized.'));
        } else {

            if($query->expired_at < date('Y-m-d H:i:s')){
                return json_output(401,array('status' => 401,'message' => 'Your session has been expired.'));
            } else {
                $updated_at = date('Y-m-d H:i:s');
                $expired_at = date("Y-m-d H:i:s", strtotime('+12 hours'));
                $this->db->where('token',$token)->update('users_authentication',array('expired_at' => $expired_at,'updated_at' => $updated_at));
                return array('status' => 200,'message' => 'Authorized.');
				
            }
        }
    }
	public function getProfile()
	{
		
		/* ---------- Join Query ---------------- */
		
		$chd = json_decode(file_get_contents('php://input'), TRUE);
		$childs = implode("",$chd);
		$this->db->select('users.childs AS Childs,users_authentication.childs_id,students.firstname,students.lastname,students.admission_no,students.roll_no,students.admission_date,students.firstname,students.lastname,students.rte,students.mobileno,students.email,students.state,students.city,students.pincode,students.religion,students.cast,students.dob,students.gender,students.current_address,students.permanent_address,students.bank_account_no,students.bank_name,students.ifsc_code,students.father_name,students.father_phone,students.father_occupation,students.mother_name,students.mother_phone,students.mother_occupation,students.guardian_name,students.guardian_relation,students.guardian_phone,students.guardian_occupation,students.guardian_address,students.guardian_email,student_session.vehroute_id,vehicles.vehicle_no,vehicles.driver_name,vehicles.driver_contact,vehicle_routes.route_id,transport_route.route_title');
		$this->db->from('users');
		$this->db->join('students', 'students.id = users.childs','INNER');
		$this->db->join('users_authentication', 'users_authentication.childs_id = students.id','INNER');		
		$this->db->join('student_session', 'students.id = student_session.student_id','INNER');
		$this->db->join('vehicles', 'vehicles.id = student_session.vehroute_id','INNER');
		$this->db->join('vehicle_routes', 'student_session.vehroute_id = vehicle_routes.id','INNER');
		$this->db->join('transport_route', 'vehicle_routes.route_id = transport_route.id','INNER');
		
		$this->db->where('user_id',$childs);					
		$this->db->GROUP_BY('user_id');								
		$query = $this->db->get()->result();				
		return ($query);	
	}
	public function getExamResult()
	{   
		$chd = json_decode(file_get_contents('php://input'), TRUE);
		$childs = implode("",$chd);
		$this->db->select('exam_schedules.id as `exam_schedule_id`,exams.name AS `Exam Name`,exam_schedules.full_marks AS `Full Marks`,exam_schedules.exam_id as `exam_id`, exam_schedules.passing_marks AS `Passing Marks`,exam_results.get_marks AS `Obtain Marks`,exam_results.student_id,subjects.name AS `Subjects`,subjects.type');
		$this->db->from('exam_schedules');
		$this->db->join('exams','exams.id = exam_schedules.exam_id','INNER');
		$this->db->join('teacher_subjects','teacher_subjects.id=exam_schedules.teacher_subject_id','INNER');
		$this->db->join('exam_results','exam_results.exam_schedule_id=exam_schedules.id','INNER');
		$this->db->join('subjects','teacher_subjects.subject_id=subjects.id','INNER');
		$this->db->where('student_id',$childs);	
		$query = $this->db->get()->result(); 
		return ($query);						
	}
	public function getFee()
	{
		$chd = json_decode(file_get_contents('php://input'), TRUE);
		$childs = implode("",$chd);
		$this->db->select('fee_groups_feetype.amount,fee_groups_feetype.due_date,fee_groups.name,feetype.code,feetype.type, IFNULL(student_fees_deposite.amount_detail,0) as `amount_detail`');
		$this->db->from('student_fees_master');
		$this->db->join('fee_session_groups','fee_session_groups.id = student_fees_master.fee_session_group_id','INNER');
		$this->db->join('fee_groups_feetype','fee_groups_feetype.fee_session_group_id = fee_session_groups.id','INNER');
		$this->db->join('fee_groups','fee_groups.id=fee_groups_feetype.fee_groups_id','INNER');
		$this->db->join('feetype','feetype.id=fee_groups_feetype.feetype_id','INNER');
		$this->db->join('student_fees_deposite','student_fees_deposite.student_fees_master_id=student_fees_master.id and student_fees_deposite.fee_groups_feetype_id=fee_groups_feetype.id','LEFT');
		$this->db->join('student_session','student_session.id= student_fees_master.student_session_id','INNER');
		$this->db->join('classes','classes.id= student_session.class_id','INNER');
		$this->db->join('sections','sections.id= student_session.section_id','INNER');
		$this->db->join('students','students.id=student_session.student_id','INNER');
		$this->db->where('student_id',$childs);
		$query = $this->db->get()->result();
		return ($query);
	}
	public function getClassTimetable()
	{
		$chd = json_decode(file_get_contents('php://input'), TRUE);
		$childs = implode("",$chd);
		$this->db->select('teachers.name as `teacher_name`, subjects.name AS Subject_name,subjects.type,subjects.code,timetables.day_name,timetables.start_time,timetables.end_time,timetables.room_no,teacher_subjects.session_id,student_session.student_id');
		$this->db->from('teacher_subjects');
		$this->db->join('timetables','timetables.teacher_subject_id = teacher_subjects.id','INNER');
		$this->db->join('subjects','teacher_subjects.subject_id = subjects.id ','INNER');
		$this->db->join('class_sections','teacher_subjects.class_section_id = class_sections.id ','INNER');
		$this->db->join('teachers','teachers.id = teacher_subjects.teacher_id','INNER');
		$this->db->join('student_session','teacher_subjects.class_section_id = student_session.class_id','INNER');
		$this->db->where('student_id',$childs);
		$query = $this->db->get()->result();
		return ($query);
	}
	public function getAttendance()
	{
		$chd = json_decode(file_get_contents('php://input'), TRUE);
		$childs = implode("",$chd);
		$this->db->select('attendence_type.type AS Attendance_Status,student_attendences.date,student_session.student_id');
		$this->db->from('student_attendences');
		$this->db->join('attendence_type','attendence_type.id=student_attendences.attendence_type_id','INNER');
		$this->db->join('student_session','student_session.id = student_attendences.student_session_id','INNER');
		$this->db->where('student_id',$childs);
		$query = $this->db->get()->result();
		return ($query);
	}
	public function getNotification()
	{
		$sql = "SELECT send_notification.title,send_notification.publish_date,send_notification.date AS Notice_Date,send_notification.message,IF (read_notification.id IS NULL,'unread','read') as notification_status FROM send_notification LEFT JOIN read_notification ON send_notification.id = read_notification.notification_id";
		$query = $this->db->query($sql);
        return $query->result();
	}
	public function getSubjects()
	{
		$chd = json_decode(file_get_contents('php://input'), TRUE);
		$childs = implode("",$chd);
		$this->db->select('teacher_subjects.*,teachers.name as `teacher_name`, subjects.name,subjects.type,subjects.code,student_session.student_id');
		$this->db->from('teacher_subjects');
		$this->db->join('subjects','teacher_subjects.subject_id = subjects.id','INNER');
		$this->db->join('class_sections','teacher_subjects.class_section_id = class_sections.id','INNER');
		$this->db->join('teachers','teachers.id = teacher_subjects.teacher_id','INNER');
		$this->db->join('student_session','teacher_subjects.class_section_id = student_session.class_id','INNER');
		$this->db->where('student_id',$childs);
		$query = $this->db->get()->result();
		return($query);
		
	}
	public function getTeachers()
	{		
		$this->db->select('name as Teacher_Name, email,dob,phone');
		$this->db->from('teachers');
		$query = $this->db->get()->result();
		return ($query);
	}
	public function getTransport()
	{
		$this->db->select('vehicles.vehicle_no,transport_route.route_title');
		$this->db->from('vehicle_routes');
		$this->db->join('vehicles','vehicles.id = vehicle_routes.vehicle_id','INNER');
		$this->db->join('transport_route','transport_route.id = vehicle_routes.route_id','INNER');
		$query = $this->db->get()->result();
		return ($query);
	}
	
	/**************************************************
	****************** Teacher API ********************
	**************************************************/
	public function teachauth()
    {
 
	    $thd = json_decode(file_get_contents('php://input'), TRUE);
		$teacherid = implode("",$thd);
        $token  = $this->input->get_request_header('Authorization', TRUE);		
        $query  = $this->db->select('expired_at')->from('users_authentication')->where('teacher_id',$teacherid)->where('token',$token)->get()->row();
		if($query == ""){
            return json_output(401,array('status' => 401,'message' => 'Unauthorized.'));
        } else {

            if($query->expired_at < date('Y-m-d H:i:s')){
                return json_output(401,array('status' => 401,'message' => 'Your session has been expired.'));
            } else {
                $updated_at = date('Y-m-d H:i:s');
                $expired_at = date("Y-m-d H:i:s", strtotime('+12 hours'));
                $this->db->where('token',$token)->update('users_authentication',array('expired_at' => $expired_at,'updated_at' => $updated_at));
                return array('status' => 200,'message' => 'Authorized.');
				
            }
        }
    }
	public function getTeacherProfile()
	{
		
		/* ---------- Join Query ---------------- */
		
		$thd = json_decode(file_get_contents('php://input'), TRUE);
		$teacherid = implode("",$thd);
		$this->db->select('users.user_id AS teacher_id,teachers.name AS `Teacher Name`,teachers.email,teachers.phone,teachers.dob,teachers.sex,teachers.address');
		$this->db->from('teachers');
		$this->db->join('users', 'teachers.id = users.user_id','INNER');		
		$this->db->where('user_id',$teacherid);							
		$query = $this->db->get()->result();				
		return ($query);	
	}
	public function getTeacherClassSectionSubjects()
	{
		
		/* ---------- Join Query ---------------- */
		
		$thd = json_decode(file_get_contents('php://input'), TRUE);
		$teacherid = implode("",$thd);
		$this->db->select('subjects.name AS `Subject Name`,classes.class,sections.section');
		$this->db->from('teacher_subjects');
		$this->db->join('subjects', 'subjects.id = teacher_subjects.subject_id','INNER');
		$this->db->join('class_sections', 'class_sections.id = teacher_subjects.class_section_id','INNER');		
		$this->db->join('classes', 'classes.id = class_sections.class_id','INNER');
		$this->db->join('sections', 'sections.id = class_sections.section_id','INNER');
		$this->db->join('users', 'users.user_id = teacher_subjects.teacher_id','INNER');
		$this->db->where('user_id',$teacherid);						
		$query = $this->db->get()->result();				
		return ($query);	
	}
	public function getStudentAttendanceByClassSectionDate()
	{
		
		/* ---------- Join Query ---------------- */
		
		$thd = json_decode(file_get_contents('php://input'), TRUE);
		// $teacherid = $thd['teacher_id'];
		$class   = $thd['classes'];
		$section = $thd['section'];
		$date 	 = $thd['date'];
		
		$this->db->select('attendence_type.type AS Attendance_Status,students.firstname,students.lastname,students.roll_no AS `Roll Number`,students.admission_no,student_attendences.student_session_id');
		$this->db->from('student_attendences');
		$this->db->join('attendence_type', 'attendence_type.id=student_attendences.attendence_type_id','INNER');
		$this->db->join('student_session', 'student_session.id = student_attendences.student_session_id','INNER');		
		$this->db->join('students', 'students.id = student_session.student_id','INNER');
		$this->db->join('classes', 'classes.id = student_session.class_id','INNER');
		$this->db->join('sections', 'sections.id = student_session.section_id','INNER');
		// $this->db->where('user_id',$teacherid);	
		$this->db->where('class',$class);
		$this->db->where('section',$section);
		$this->db->where('date',$date);
		$query = $this->db->get()->result();
	
		return ($query);	
	}
	public function addStudentAttendanceByClassSectionDate($student_session_id,$attendencetypeid,$date)
	{
		$thd = json_decode(file_get_contents('php://input'), TRUE);
		// $id = 152;
		// $sql = "select student_sessions.attendence_id,students.firstname,student_sessions.date,students.roll_no,students.admission_no,students.lastname,student_sessions.attendence_type_id,student_sessions.id as student_session_id, attendence_type.type as `att_type`,attendence_type.key_value as `key` from students ,(SELECT student_session.id,student_session.student_id ,IFNULL(student_attendences.date, 'xxx') as date,IFNULL(student_attendences.id, 0) as attendence_id,student_attendences.attendence_type_id FROM `student_session` LEFT JOIN student_attendences ON student_attendences.student_session_id=student_session.id and student_attendences.date='2018-09-14' where student_session.session_id='11' and student_session.class_id='6' and student_session.section_id='4') as student_sessions LEFT JOIN attendence_type ON attendence_type.id=student_sessions.attendence_type_id where student_sessions.student_id=students.id";
		// $query = $this->db->get()->result_array();
		// print_r($query);
		// exit();
		// return $this->db->insert_id();
			foreach($thd as $key=> $value){

				
				$date = $thd[$key]['date'];
				$student_session_id = $thd[$key]['student_session_id'];
				// print_r($date);
				// exit();	
			
			// $checkForUpdate = $this->input->post('date' . $value);
			// if ($checkForUpdate != 0) {								
                        // if (isset($date)) {	
                            // $update = array(	
                                // 'id' => $checkForUpdate,
                                // 'student_session_id' => $value,
                                // 'attendence_type_id' => $this->input->post('attendence_type_id' . $value),
                                // 'date' => $this->input->post('date')
                            // );
                        // } else {
                            // $insert = array(
                                // 'id' => $checkForUpdate,
                                // 'student_session_id' => $value,
                                // 'attendence_type_id' => $this->input->post('attendence_type_id' . $value),
                                // 'date' => date('Y-m-d', $this->customlib->datetostrtotime($date))
                            // );
                        // }						
                        // $this->db->insert_batch('student_attendences', $thd);
                    // } 
		
		
		
		
		if (isset($student_session_id) && isset($date)){
			$this->db->set($thd[$key]);	
			// print_r($thd[$key][]);
			// exit();
            $this->db->where('date', $date);
			$this->db->where('student_session_id', $student_session_id);
			$this->db->update('student_attendences');
			return "Data updated";
        }else {
           $this->db->insert_batch('student_attendences', $thd);
		   return "Data Inserted";
        }

}
		// return $this->db->insert_id();
		
		
		/**************** Insert Through Loop *******************/
			// $teacherid = $thd['teacher_id'];
			// $student_session_id   = $thd['student_session_id'];
			// $attendencetypeid = $thd['attendence_type_id'];
			// $date 	 = $thd['date'];
			// if (isset($thd['date'])){
				// $sql = "UPDATE `student_attendences` SET attendence_type_id = '".$thd['attendence_type_id']."',student_session_id = '".$thd['student_session_id']."' where date = '".$date."'";
			// print_r($sql);
			// exit();
			// }else{
				// $sql = "INSERT INTO `student_attendences` (teacher_id,student_session_id,attendence_type_id,date) VALUES ('".$teacherid."','".$student_session_id."','".$attendencetypeid."','".$date."')";
			// $query = $this->db->query($sql);
			
			// }
			// return $query = $this->db->affected_rows();
		/**************** Insert Through Loop *******************/
	}
	

}
