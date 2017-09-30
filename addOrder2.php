<?php

require_once './includes/db_operations.php';

$response = array();

if($_SERVER['REQUEST_METHOD']=='POST'){
	if(
		isset($_POST['orderCode']) and
			isset($_POST['tableNo']) and 
			 isset($_POST['nameList'] ) and isset($_POST['qtyList']) and isset($_POST['priceList']) and isset($_POST['orderTotal'])){
		
		$db = new DbOperations();
		
		$result = $db->addOrder($_POST['orderCode'],$_POST['tableNo'],$_POST['nameList'],$_POST['qtyList'],$_POST['priceList'],$_POST['orderTotal']);
		if($result == 1){
			$response['error'] = false;
			$response['message'] = "Order Registered";
		}else if ($result == 2){
			$response['error'] = true;
			$response['message'] = "Some error occured please try again";
		}else if ($result == 0){
			$response['error'] = true;
			$response['message'] = "Order Already Exists";
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