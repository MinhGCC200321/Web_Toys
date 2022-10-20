<?php

// $server = "localhost";
// $username ="root";
// $password = "";
// $db = "asm";

// $conn = mysqli_connect($server,$username,$password,$db);
// if($conn->connect_error){
//     die("Failed ".$conn->connect_error);
// }

$Connect = pg_connect("postgres://mkxhtghzptlitn:15f9b316d2e2d903325cb65307a41302a444787ff46e3c89f8434f1f4b6cbe56@ec2-54-157-79-121.compute-1.amazonaws.com:5432/dbb867pvvv3miu");
	if(!$Connect){
		die("Connection failed");
	}

?>