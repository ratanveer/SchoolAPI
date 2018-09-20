<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Driverdetails extends CI_Controller
{
	public function vehicledetails()
	{
		$method = $_SERVER['REQUEST_METHOD'];
			if($method != 'POST')
			{
				json_output(400,array('status' => 400,'message' => 'Bad request.'));
			}
			else
			{
				$params = json_decode(file_get_contents('php://input'), TRUE);
				$vehicles = $params['vehicle_no'];
				$this->load->model('Driver_model');
				$resp = $this->Driver_model->getstudentlist($vehicles);
				json_output(200,$resp);				
			}
	}
}

?>