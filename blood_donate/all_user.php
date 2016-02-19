<?php include('functions/functions.php'); ?>
<?php include('includes/header.php'); ?>


<div class="container">
	<div class="row">
		<section>
			<div class="col-xs-8">
				<?php
		
	$get_all_users="SELECT*FROM blood_donor";
	$run_all_users=mysqli_query($conn,$get_all_users);
	while ($row_users=mysqli_fetch_assoc($run_all_users)) {
		$user_id=$row_users['user_id'];
		$user_firstName=$row_users['user_firstName'];
		$user_lastName=$row_users['user_lastName'];
		$group_id=$row_users['group_id'];
		$user_email=$row_users['user_email'];
		$user_division=$row_users['user_division'];
		$user_district=$row_users['user_district'];
		$user_police_station=$row_users['user_police_station'];
		$user_image=$row_users['user_image'];
		$user_cellphone=$row_users['user_cellphone'];

		$get_blood_group="SELECT*FROM blood_group WHERE group_id={$group_id}";
		$run_blood_group=mysqli_query($conn,$get_blood_group);
		confirmQuery($run_blood_group);

		while($row_blood=mysqli_fetch_assoc($run_blood_group)){
		$group_id=$row_blood['group_id'];
		$group_name=$row_blood['group_name'];
			}
	
			
	 ?>
<section>
	<div class="thumbnails">
	 	<div class="row">
	 		<div class="col-xs-6">
	 			<div class="thumbnail">
		 			<div>Blood Group: <?php echo $group_name; ?></div>
		 			<img src="assets/images/<?php echo $user_image;?>" alt="" class="image-responsive" width="200" height="200">
		 			<p>Name:<?php echo $user_firstName; ?> <?php echo $user_lastName; ?></p>
		 			<p>Division: <?php echo $user_division; ?> District: <?php echo $user_district; ?></p>
		 			<p>Email: <?php echo $user_email; ?></p>
		 			<p>Mobile: <?php echo $user_cellphone; ?></p>
	 			</div>
	 		</div>
	 	</div>
 	
 </div>
 </section>
<?php } ?>

				
			</div>
		</section>
	</div>
</div>



















<?php include('includes/footer.php'); ?>