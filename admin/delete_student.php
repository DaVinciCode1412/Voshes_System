<?php
	$con = new mysqli('localhost','root','','voshes');
	if ($con->connect_error) {
		die("Connection Error : " . $con->connect_error);
	}
	else{
		session_start();
		$id = $_SESSION['delete_id'];
		$sql = "update user_info set status = 'archived' where user_id = $id";
		$result = $con->query($sql);
		if($result){
			echo '<button id="btn" hidden="btn" onclick="delete_user()"></button>';
		}
	}
?>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script type="text/javascript">
	document.getElementById('btn').click();	

	function delete_user(){
		Swal.fire(
		  'Sucess!',
		  'Table row Archived',
		  'success'
		).then(function(){
			window.location.replace('admin-users-student.php');
		});
	}

</script>