<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<?php
	$con = new mysqli('localhost','root','','voshes');
	if($con->connect_error){
		die("Connection Error : " . $con->connect_error);
	}
	else{
		session_start();

		if (isset($_POST['delete'])) {
			$id = $_POST['id'];
			
			$_SESSION['del_id'] = $id;
			
			echo '<button id="btn" hidden="btn" onclick="del()"></button>';
			
		}
		elseif (isset($_POST['delete_all'])) {
			$_SESSION['delete_all'] = True;
			echo '<button id="btn" hidden="btn" onclick="del_all()"></button>';

			
		}
		elseif (isset($_POST['restore_all'])) {
			$sql = "update user_info set status = 'normal' where status = 'archived'";
			$result = $con->query($sql);
			if ($result) {
				echo '<button id="btn" hidden="btn" onclick="restore_all()"></button>';

			}
		}
		else{
			$id = $_POST['id'];
			$sql = "update user_info set status = 'normal' where user_id = $id";
			$result = $con->query($sql);
			if ($result) {
				echo '<button id="btn" hidden="btn" onclick="restore()"></button>';
			}
		}
	}
?>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<script type="text/javascript">
	document.getElementById('btn').click();
	function restore(){
		Swal.fire({
			icon: 'success',
			title: 'Successful!',
			text: 'Table row updated'
		}).then(function(){
			window.location.replace('recycle-bin.php')
		})
	}
	function restore_all(){
		Swal.fire({
			icon: 'success',
			title: 'Successful!',
			text: 'Data Restored'
		}).then(function(){
			window.location.replace('recycle-bin.php')
		})
	}
	function del(){
		const swalWithBootstrapButtons = Swal.mixin({
		  customClass: {
		    confirmButton: 'btn btn-success',
		    cancelButton: 'btn btn-danger'
		  },
		  buttonsStyling: false
		})

		swalWithBootstrapButtons.fire({
		  title: 'Are you sure?',
		  text: "You won't be able to revert this!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonText: 'Yes, delete it!',
		  cancelButtonText: 'No, cancel!',
		  reverseButtons: true
		}).then((result) => {
		  if (result.isConfirmed) {
		    swalWithBootstrapButtons.fire(
		      'Deleted!',
		      'Your file has been deleted.',
		      'success'
		    ).then(function(){
		    	window.location.replace('archive-del.php')
		    })
		  } else if (
		    /* Read more about handling dismissals below */
		    result.dismiss === Swal.DismissReason.cancel
		  ) {
		    swalWithBootstrapButtons.fire(
		      'Cancelled',
		      'Process Cancelled :)',
		      'error'
		    ).then(function(){
		    	window.location.replace('recycle-bin.php')
		    })
		  }
		})
	}
	function del_all(){
		const swalWithBootstrapButtons = Swal.mixin({
		  customClass: {
		    confirmButton: 'btn btn-success',
		    cancelButton: 'btn btn-danger'
		  },
		  buttonsStyling: false
		})

		swalWithBootstrapButtons.fire({
		  title: 'Are you sure?',
		  text: "You won't be able to revert this!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonText: 'Yes, delete it!',
		  cancelButtonText: 'No, cancel!',
		  reverseButtons: true
		}).then((result) => {
		  if (result.isConfirmed) {
		    swalWithBootstrapButtons.fire(
		      'Deleted!',
		      'Your file has been deleted.',
		      'success'
		    ).then(function(){
		    	window.location.replace('archive-del.php')
		    })
		  } else if (
		    /* Read more about handling dismissals below */
		    result.dismiss === Swal.DismissReason.cancel
		  ) {
		    swalWithBootstrapButtons.fire(
		      'Cancelled',
		      'Process Cancelled :)',
		      'error'
		    ).then(function(){
		    	window.location.replace('recycle-bin.php')
		    })
		  }
		})
	}
</script>