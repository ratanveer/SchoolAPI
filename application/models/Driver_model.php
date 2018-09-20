<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Driver_model extends CI_Model
{
	public function getstudentlist()
	{
		$driver = json_decode(file_get_contents('php://input'), TRUE);
		$drivers = implode("",$driver);
		
		$this->db->select('students.firstname,students.lastname,students.roll_no,students.mobileno,students.current_address AS Address,students.father_name,students.father_phone,students.mother_name,students.mother_phone,student_session.vehroute_id,vehicles.vehicle_no,vehicle_routes.route_id,transport_route.route_title');
		$this->db->from('students');
		$this->db->join('student_session', 'students.id = student_session.student_id','INNER');
		$this->db->join('vehicles', 'vehicles.id = student_session.vehroute_id','INNER');		
		$this->db->join('vehicle_routes', 'student_session.vehroute_id = vehicle_routes.id','INNER');
		$this->db->join('transport_route', 'vehicle_routes.route_id = transport_route.id','INNER');
		$this->db->where('vehicle_no',$drivers);				
		// $this->db->GROUP_BY('vehicle_no');								
		$query = $this->db->get()->result();				
		return ($query);
	}
}




?>