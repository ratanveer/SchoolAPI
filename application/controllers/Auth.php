<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function login()
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if($method != 'POST'){
			json_output(400,array('status' => 400,'message' => 'Bad request.'));
		}
		else
		{
				$params = json_decode(file_get_contents('php://input'), TRUE);
		        $username = $params['username'];
		        $password = $params['password'];
													
		        $response = $this->MyModel->login($username,$password);
				json_output($response['status'],$response);	
		}
	}	
}