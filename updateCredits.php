<?php

if($_SERVER['REQUEST_METHOD']=='POST'){

$newBal = $_POST['newBal'];
$id = $_POST['id'];

//importing database connection script
require_once './includes/db_connect.php';
$db = new DbConnect();

$conn = $db->connect();
//Creating sql query
$sql = "UPDATE tbl_users SET KartsCredits = '$newBal' WHERE id = '$id'";

 //Updating database table
if (mysqli_query($conn,$sql)) {
echo 'Status Updated';
}
else {
echo 'Status Not Updated';
}

//closing connection
mysqli_close($conn);
}

{ print_r($_POST); return; }