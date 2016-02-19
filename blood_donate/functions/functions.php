<?php 
$conn=mysqli_connect('localhost','root','','blood_donate');



function confirmQuery($result){
	global $conn;
	if(!$result){
		die('Query failed'.mysqli_error($conn));
	}
}


function getBloodGroup(){
			global $conn;

		$get_blood_group="SELECT*FROM blood_group";
		$run_blood_group=mysqli_query($conn,$get_blood_group);
		confirmQuery($run_blood_group);

		while($row_blood=mysqli_fetch_assoc($run_blood_group)){
		$group_id=$row_blood['group_id'];
		$group_name=$row_blood['group_name'];
			}
		echo "<a href='single_user.php?group_id={$group_id}'>";
	}					
?>




 