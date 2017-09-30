<?php

require_once './includes/db_operations.php';

$response = array();

if($_SERVER['REQUEST_METHOD']=='POST'){
	if(
		isset($_POST['Username']) and
			isset($_POST['Password']) and 
			 isset($_POST['FirstName'] ) and isset($_POST['MiddleName']) and isset($_POST['LastName']) and isset($_POST['City'])
			 and isset($_POST['Province']) and isset($_POST['Email']) and isset($_POST['ContactNo'])){
		
		$db = new DbOperations();
		
		$result = $db->createUser($_POST['Username'],$_POST['Password'],$_POST['FirstName'],$_POST['MiddleName'],$_POST['LastName'],$_POST['City'],
									$_POST['Province'],$_POST['Email'],$_POST['ContactNo']);
		if($result == 1){
			$response['error'] = false;
			$response['message'] = "User Successfully Registered";
		}else if ($result == 2){
			$response['error'] = true;
			$response['message'] = "Some error occured please try again";
		}else if ($result == 0){
			$response['error'] = true;
			$response['message'] = "User Already Exists";
		}
	}else{
		$response['error'] = true;
		$response['message'] = "Required fields are missing";
	}
}else{
	$response['error'] = true;
	$response['message'] = "Invalid Request";
}

echo json_encode($response);