<?php
	$con = new mysqli('localhost','root','','voshes');
	if ($con->connect_error) {
		die("Connection Error : " . $con->connect_error);
	}
	else{
		session_start();
		$flag = $_SESSION['delete_all'];

		if($flag){
			$sql = "delete from user_info where status = 'archived'";
			$result = $con->query($sql);
			if ($result) {
				echo '<script type="text/javascript">window.location.replace("recycle-bin.php")</script>';
			}
		}
		else{
			$id = $_SESSION['del_id'];
			$sql = "delete from user_info where user_id = $id";
			$result = $con->query($sql);
			if ($result) {
				echo '<script type="text/javascript">window.location.replace("recycle-bin.php")</script>';
			}
		}
	}
?>
