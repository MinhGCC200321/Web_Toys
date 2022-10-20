<?php
include_once("connect.php");

if(isset($_GET['id'])){
    $delQuery = "Delete from cart where p_id='".$_GET['id']."'";
    if (pg_query($conn, $delQuery)) {
        echo " <script>
        alert('Delete successful');
        window.location= 'manager.php?id=".$_GET['id']."'
        </script>";
    }else {
        echo "Error: "; // in loi tron pg
    }
}
if(isset($_GET['id'])){
    $delQuery = "Delete from product where Product_ID='".$_GET['id']."'";
    if(pg_query($conn, $delQuery)) {
        echo " <script>  
        window.location = 'manager.php?status=delete';
        </script>";
    } else {
        echo "Error: ";
    }
}
?>
