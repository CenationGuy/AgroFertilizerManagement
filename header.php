<?php
// Initialize the session
session_start();

// Check if the user is logged in, if not then redirect to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}




?>

<?php include("config.php");
$message="";
$quantity = 1;
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"></head>
<link rel="stylesheet" href="CSS/header.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <!--icon link-->
 <link rel="shortcut icon" type="image/png" href="img/logonew.png" />
 <!--font awesome icon link--->
 <script src="https://kit.fontawesome.com/db47262ed8.js" crossorigin="anonymous"></script>
</head>
<body>

<div class="navba">

  <a href="#">
  <img src="img/logonew.png" width="50px" style="margin-right: 30px;"> </a>
  <a href="welcome.php">Home</a>
  <a  href="feedback.php">Feedback</a>

  <ul class="nav navbar-nav navbar-right">
    <li>

    <a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;<?php echo htmlspecialchars($_SESSION["username"]); ?></a></li> &nbsp;

 <li class="nav-item">
 <a class="nav-link" href="cart.php">
 <i class="fas fa-shopping-cart"></i> <span id="cart-item" class="badge badge-danger" style="color:yellow;">1</span></a>


  </span>


  </i>


  </a>

  </li>

  </ul>
</div>
<div class="sidenav" style="margin-top: 52px;">
    <a id="cat" href="#">Categories</a><br>
    <a href="organic.php">Organic and Inorganic</a>
    <a href="Nitrogen.php">Nitrogen</a>
    <a href="Nitrogen with Inhibitors.php">Nitrogen with Inhibitors</a>
    <a href="Phpsphorus.php">Phosphorus</a>
    <a href="Potassium.php">Potassium</a>
    <a href="Calcium.php">Calcium Magnesium and Sulphur</a>
    <a href="Micronutrients.php">Micronutrients</a>
    <a href="Inhibitors.php">Inhibitors</a>
  </div>


  <!-- main content goes here
Include the code withing the main class div
-->


</body>

</html>