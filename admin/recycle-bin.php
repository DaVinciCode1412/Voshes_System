<?php include('header.php'); ?>
	
	<div class="container">
		<h4>Archived Users</h4>
		<form action="archive_process.php" method="post">
			<input type="submit" name="delete_all" value="Empty Bin" class="btn btn-danger">
			<input type="submit" name="restore_all" value="Restore Bin" class="btn btn-success">
		</form>
		<hr>
		<table class="table table-bordered table-hover">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
			<?php
				$sql = "select * from user_info where status = 'archived'";
				$result = $con->query($sql);
				if ($result) {
					while ($row = $result->fetch_assoc()) {
						echo "
							<form action='archive_process.php' method='post'>
								<tr>
									<input hidden value='".$row['user_id']."' name='id'>
									<td>".$row['user_id']."</td>
									<td>".$row['first_name']." ".$row['last_name']."</td>
									<td>".$row['email']."</td>
									<td>
										<input type='submit' name='delete' value='Delete' class='btn btn-danger'>
										<input type='submit' name='restore' value='Restore' class='btn btn-success'>
									</td>
								</tr>
							</form>
						";
					}
				}
			?>
			
		</table>
	</div>
<?php include('footer.php'); ?>
