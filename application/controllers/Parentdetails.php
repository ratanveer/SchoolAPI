<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Parentdetails extends CI_Controller {

	public function childProfileDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'POST')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$params = json_decode(file_get_contents('php://input'), TRUE);
				$childs = $params['Childs-Id'];
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{	
					$resp = $this->MyModel->getProfile($childs);
					json_output($response['status'],$resp);
				}
							
			}
		}
	public function childExamDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'POST')	
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$params = json_decode(file_get_contents('php://input'), TRUE);
				$childs = $params['Childs-Id'];
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getExamResult($childs);
					json_output($response['status'],$resp);
				}
			
			}	
		}
	public function childFeeDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'POST')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$params = json_decode(file_get_contents('php://input'), TRUE);
				$childs = $params['Childs-Id'];
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getFee($childs);
					json_output($response['status'],$resp);

				}
			}	
		}
	public function childTimetableDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'POST')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$params = json_decode(file_get_contents('php://input'), TRUE);
				$childs = $params['Childs-Id'];
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getClassTimetable($childs);
					json_output($response['status'],$resp);
				}
			}	
		}				
	public function childAttendanceDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'POST')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$params = json_decode(file_get_contents('php://input'), TRUE);
				$childs = $params['Childs-Id'];
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getAttendance($childs);
					json_output($response['status'],$resp);
				}
			}	
		}		
	public function childNotificationDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'POST')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$params = json_decode(file_get_contents('php://input'), TRUE);
				$childs = $params['Childs-Id'];
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getNotification($childs);
					json_output($response['status'],$resp);

				}
			}	
		}
	public function childSubjectsDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'POST')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$params = json_decode(file_get_contents('php://input'), TRUE);
				$childs = $params['Childs-Id'];
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getSubjects($childs);
					json_output($response['status'],$resp);
				}
			}	
		}		
	public function childTeachersDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'POST')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$params = json_decode(file_get_contents('php://input'), TRUE);
				$childs = $params['Childs-Id'];
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getTeachers($childs);
					json_output($response['status'],$resp);
				}
			}	
		}
	public function childTransportDetails()
		{
			$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'POST')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$params = json_decode(file_get_contents('php://input'), TRUE);
				$childs = $params['Childs-Id'];
				$this->load->model('MyModel');
				$response = $this->MyModel->auth();
				if($response['status'] == 200)
				{
					$resp = $this->MyModel->getTransport($childs);
					json_output($response['status'],$resp);
				}
			}	
		}
}
?>