<?php 
require_once("includes/config.php");
// korisnik mejl provera
if(!empty($_POST["emailid"])) {
	$email= $_POST["emailid"];
	if (filter_var($email, FILTER_VALIDATE_EMAIL)===false) {

		echo "greska : Niste uneli tacan email.";
	}
	else {
		$sql ="SELECT email FROM korisnici WHERE email=:email";
$query= $dbh -> prepare($sql);
$query-> bindParam(':email', $email, PDO::PARAM_STR);
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query -> rowCount() > 0)
{
echo "<span style='color:red'> Email vec postoji .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'> Email se moze koristiti .</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}
}


?>
