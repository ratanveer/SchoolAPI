<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Teacherdetails extends CI_Controller 
{
	public function teacherProfileDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'POST')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$params = json_decode(file_get_contents('php://input'), TRUE);
				$teachers = $params['teacher_id'];
				$this->load->model('MyModel');
				$response = $this->MyModel->teachauth();
				if($response['status'] == 200)
				{	
					$teacher 		= $this->MyModel->getTeacherProfile($teachers);					
					$teachersubject = $this->MyModel->getTeacherClassSectionSubjects($teachers);
					$teacherdetails = array_merge($teacher,$teachersubject);
					json_output($response['status'],$teacherdetails);
				}			
			}
		}
	public function teacherAttendanceByDate()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'POST')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$params = json_decode(file_get_contents('php://input'), TRUE);
				$teachers = $params['teacher_id'];
				$class = $params['classes'];
				$section = $params['section'];
				$date = $params['date'];
				$this->load->model('MyModel');
				$response = $this->MyModel->teachauth();
				if($response['status'] == 200)
				{	
					$teacher = $this->MyModel->getStudentAttendanceByClassSectionDate($class,$section,$date);
					json_output($response['status'],$teacher);
				}			
			}
		}
		public function studentAttendanceByDate()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'POST')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$params = json_decode(file_get_contents('php://input'), TRUE);
				
				foreach($params as $tyt){
	
					$student_session_id = $tyt['student_session_id'];
					$attendencetypeid = $tyt['attendence_type_id'];
					$date = $tyt['date'];
					// $checkForUpdate = $this->input->post('attendence_type_id');
					// echo $checkForUpdate;
					// exit();
				}

				$this->load->model('MyModel');
				// $response = $this->MyModel->teachauth();
				// if($response['status'] == 200)
				// {	
					$teacher = $this->MyModel->addStudentAttendanceByClassSectionDate($student_session_id,$attendencetypeid,$date);
					json_output(200,$teacher);
				// }
			}
		}
		
}
?>