<?php  
	require_once './includes/db_connect.php';
	
	$orderCode = $_POST['orderCode'];
	$tableNo = $_POST['tableNo'];
	$foodName = $_POST['nameList'];
	$foodQty = $_POST['qtyList'];
	$foodPrice = $_POST['priceList'];
	$orderTotal = $_POST['orderTotal'];
	
	$db = new DbConnect();

	$conn = $db->connect();
	
	
	$sql = "INSERT INTO tbl_orders (OrderCode,TableNo,FoodName,FoodQty,FoodPrice,OrderTotal) VALUES ('$orderCode','$tableNo','$foodName','$foodQty','$foodPrice','$orderTotal')";
	$execquery = mysqli_query($conn,$sql);
		if($execquery){
			$response['code'] =1;
			$response['message'] = "Update Success";
		}
		else{
			$response['code'] =0;
			$response['message'] = "Failed Inserts";	
		}
	echo json_encode($response);
	echo mysql_error();
?>