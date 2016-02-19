<?php include('functions/functions.php'); ?>
<?php include('includes/header.php'); ?>

<?php 
if (isset($_POST['add_user'])) {
	$user_firstName=$_POST['user_firstName'];
	$user_lastName=$_POST['user_lastName'];
	$user_cellphone=$_POST['user_cellphone'];
	$user_email=$_POST['user_email'];
	$user_password=$_POST['user_password'];
	$user_birthday=$_POST['user_birthday'];	
	$group_id=$_POST['group_id'];
	$group_key=$_POST['group_key'];
	$last_donate_date=$_POST['last_donate_date'];	
	$user_division=$_POST['user_division'];
	$user_district=$_POST['user_district'];
	$user_police_station=$_POST['user_police_station'];
	$user_image=$_FILES['image']['name'];
	$user_image_temp=$_FILES['image']['tmp_name'];

	move_uploaded_file($user_image_temp, "assets/images/$user_image");

	$run_insert_user="INSERT INTO blood_donor(
		user_firstName,
		user_lastName,
		user_cellphone,
		user_email,
		user_password,
		user_birthday,
		group_id,
		group_key,
		last_donate_date,		
		user_division,
		user_district,
		user_police_station,
		user_image)VALUES(
		'$user_firstName',
		'$user_lastName',
		'$user_cellphone',
		'$user_email',
		'$user_password',
		'$user_birthday',
		'$group_id',
		'$group_key',
		'$last_donate_date',
		'$user_division',
		'$user_district',
		'$user_police_station',		
		'$user_image'
		)";
$create_insert_user=mysqli_query($conn,$run_insert_user);
confirmQuery($create_insert_user);

}






 ?>











<div class="container">
	<div class="row">
		<div class="col-xs-6">
			<form action="" method="post" class="form-horizontal" enctype="multipart/form-data">
				<div class="form-group">
					<label for="email">Email</label>
					<input type="email" class="form-control" name="user_email" id="">
				</div>
				<div class="form-group">
					<label for="password">Password</label>
					<input type="password" class="form-control" name="user_password" id="">
				</div>
				<div class="form-group">
					<label for="fisrtname">First Name</label>
					<input type="text" class="form-control" name="user_firstName" id="">
				</div>

				<div class="form-group">
					<label for="fisrtname">Last Name</label>
					<input type="text" class="form-control" name="user_lastName" id="">
				</div>
				<div class="form-group">
					<label for="birthday">Date of Birth</label>
					<div class="input-append date form_datetime">
						<input type="text" class="form-control" value="" name="user_birthday" id="birthdaydate">
					</div>
				</div>
				<div class="form-group">
					<label for="bloodgroup">Blood Group</label>
					<select name="group_id" id="">
						<?php
						$get_blood_group="SELECT*FROM blood_group";
						$run_blood_group=mysqli_query($conn,$get_blood_group);
						confirmQuery($run_blood_group);
						while($row_blood=mysqli_fetch_assoc($run_blood_group)){
							$group_id=$row_blood['group_id'];
							$group_name=$row_blood['group_name'];
							echo "<option value='$group_id'>{$group_name}</option>";
						}
						?> 

						
					</select>
				</div>
				<div class="form-group">
					<label for="division">Keywords</label>
					<input type="text" class="form-control" name="group_key" id="">
				</div>
				<div class="date form_date form-group">
					<label for="Donate_date">Last Blood Donation Date</label>
					<input type="text" class="form-control" name="last_donate_date" id="birthdaydate" value="">
					<span class="add-on"><i class="icon-th"></i></span>
				</div>
				<div class="form-group">
					<label for="cellphone">Mobile No.</label>
					<input type="text" class="form-control" name="user_cellphone" id="">
				</div>
				<div class="form-group">
					<label for="division">Living Division</label>
					<input type="text" class="form-control" name="user_division" id="">
				</div>
				<div class="form-group">
					<label for="district">Living District</label>
					<input type="text" class="form-control" name="user_district" id="">
				</div>
				<div class="form-group">
					<label for="police_station">Living Police Station</label>
					<input type="text" class="form-control" name="user_police_station" id="">
				</div>
				<div class="form-group">
					<label for="image">Image</label>
					<input type="file" class="form-control" name="image" id="" width="200" height="200">
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-primary" name="add_user" value="Submit">
				</div>
			</form>
		</div>
	</div>
</div>

<?php include('includes/footer.php'); ?>















