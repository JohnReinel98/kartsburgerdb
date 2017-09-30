<?php

require_once './includes/db_operations.php';

$response = array();

if($_SERVER['REQUEST_METHOD']=='POST'){
	if(isset($_POST['Username']) and isset($_POST['Password'])){
		$db = new DbOperations();
		
		if($db->userLogin($_POST['Username'], $_POST['Password'])){
			$user = $db->getUserByUsername($_POST['Username']);
			$response['error'] = false;
			$response['id'] = $user['id'];
			$response['Username'] = $user['Username'];
			$response['Password'] = $user['Password'];
			$response['FirstName'] = $user['FirstName'];
			$response['MiddleName'] = $user['MiddleName'];
			$response['LastName'] = $user['LastName'];
			$response['City'] = $user['City'];
			$response['Province'] = $user['Province'];
			$response['Email'] = $user['Email'];
			$response['ContactNo'] = $user['ContactNo'];
		}else{
			$response['error'] = true;
			$response['message'] = "Invalid username or password";
		}
	}else{
		$response['error'] = true;
		$response['message'] = "Required fields are missing";
	}
}
echo json_encode($response);
?>
