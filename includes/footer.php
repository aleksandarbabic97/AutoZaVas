<?php
if(isset($_POST['emailsubscibe']))
{
$subscriberemail=$_POST['subscriberemail'];
$sql ="SELECT email FROM pretplatnici WHERE email=:email";
$query= $dbh -> prepare($sql);
$query-> bindParam(':email', $subscriberemail, PDO::PARAM_STR);
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query -> rowCount() > 0)
{
echo "<script>alert('Vec pretplacen.');</script>";
}
else{
$sql="INSERT INTO pretplatnici(email) VALUES(:email)";
$query = $dbh->prepare($sql);
$query->bindParam(':email',$subscriberemail,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
echo "<script>alert('Uspesno ste se pretplatili.');</script>";
}
else 
{
echo "<script>alert('Nesto je poslo po zlu. Probajte opet');</script>";
}
}
}
?>

<footer>
  <div class="footer-top">
    <div class="container">
      <div class="row">
      
        <div class="col-md-6">
          <h6>O nama</h6>
          <ul>
        
          <li><a href="page.php?tip=oNama">O nama</a></li>
            <li><a href="page.php?tip=privatnost">Privatnost</a></li>
          <li><a href="page.php?tip=uslovi">Uslovi koriscenja</a></li>
          </ul>
        </div>
  
        <div class="col-md-3 col-sm-6">
          <h6>Pretplatnici</h6>
          <div class="newsletter-form">
            <form method="post">
              <div class="form-group">
                <input type="email" name="subscriberemail" class="form-control newsletter-input" required placeholder="Unesite email" />
              </div>
              <button type="submit" name="emailsubscibe" class="btn btn-block">Pretplati se <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
            </form>
            <p class="subscribed-text">*Saljemo svake nedelje najbolje ponude automobila.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-push-6 text-right">
          <div class="footer_widget">
            <p>Povezite se:</p>
            <ul>
              <li><a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-6 col-md-pull-6">
          <p class="copy-right">Autorska prava &copy; <?php echo date("Y"); ?> Vozilo za Vas Portal. Sva prava zadrzana</p>
        </div>
      </div>
    </div>
  </div>
</footer>