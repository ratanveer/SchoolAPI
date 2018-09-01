<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class parentdetails extends CI_Controller {

	public function childProfileDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'GET')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{	
					$resp = $this->MyModel->getProfile();
					json_output($response['status'],$resp);
				}
			}
		}
	public function childExamDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'GET')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getExamResult();
					json_output($response['status'],$resp);
				}
			
			}	
		}
	public function childFeeDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'GET')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getFee();
					json_output($response['status'],$resp);

				}
			}	
		}
	public function childTimetableDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'GET')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getClassTimetable();
					json_output($response['status'],$resp);

				}
			}	
		}
	public function childAttendanceDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'GET')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getAttendance();
					json_output($response['status'],$resp);

				}
			}	
		}
	public function childNotificationDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'GET')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getNotification();
					json_output($response['status'],$resp);

				}
			}	
		}
	public function childSubjectsDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'GET')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getSubjects();
					json_output($response['status'],$resp);
				}
			}	
		}
	public function childTeachersDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'GET')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getTeachers();
					json_output($response['status'],$resp);
				}
			}	
		}
	public function childTransportDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'GET')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getTransport();
					json_output($response['status'],$resp);
				}
			}	
		}
}
?>