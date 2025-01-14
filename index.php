<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>FERTILIZERMANAGEMENT</title>
  <!--icon link-->
  <!-- <link rel="shortcut icon" type="image/png" href="img/logo.jpeg" /> -->
  <!--css stylesheet link-->
  <link rel="stylesheet" href="CSS/style.css">
  <link rel="stylesheet" href="CSS/footer.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!---font style-->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:ital,wght@1,700&display=swap" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
  <!--font awesome icon link--->
  <script src="https://kit.fontawesome.com/db47262ed8.js" crossorigin="anonymous"></script>

  <!--bootstrap links-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!--font awesome links-->
  <script src="https://kit.fontawesome.com/db47262ed8.js" crossorigin="anonymous"></script>


</head>

<body>
  <!--navbar-->
  <nav class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand" href="#"></a>
        <img src="img/logonew.png" width="80px" style="margin-right: 30px;"> 
      </div>
      <!-- <div class="navbar-header">
        <a class="navbar-brand" href="#">AgroFertilizers</a>
      </div> -->
      <ul class="nav navbar-nav">
        <li><a href="orders.php">My Orders</a></li>
        <li><a href="feedback.php">Feedback</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="register.php"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </nav>
  <div class="shop">
  <!---heading--->
  <h1 class="btnheading" style="margin-right:155px;">HARVEST WITHOUT <br />
     WORRIES!</h1>
  <!---BUTTON-->
  <div class="buttonexp">
    <a href="Login.php" class="btnexplore">SHOP WITH US &#8594;</a>
  </div>
</div>
 
  <!--featured products-->
  <div class="categories">
    <h2 class="ftitle">FEATURED PRODUCTS</h2>
    <div class="row">
      <div class="col3">
        <img src="img/brand2.jpeg"  alt="">
        <h4 class="productimages">NPK 19:19:19</h4>
        <div class="RATING">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
        </div>
      </div>
      <div class="col3">
        <img src="img/brand3.jpeg" alt="">
        <h4 class="productimages">Unitedlys NPK </h4>
        <div class="RATING">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star-half-alt"></i>
        </div>
      </div>
      <div class="col3">
        <img src="img/brand1.jpeg" alt="">
        <h4 class="productimages">Rose Care Organic</h4>
        <div class="RATING">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="far fa-star"></i>

        </div>

      </div>
    </div>
  </div>
<!---testimonials-->

<div class="testimonial">
    <div class="small-container">
      <div class="row">
        <div class="col4">

          <i class="fa fa-quote-left"></i>
          <p>Great services,Had wonderful shopping experience!</p>
          <div class="RATING">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
          </div>
          <img src="img/woman1.jpg" alt="">
          <h3>Sanjana</h3>
        </div>
        <div class="col4">
          <i class="fa fa-quote-left"></i>
          <p>It was so convenient as I was visiting many stores frequently,AFMS allowed me to get a different products at one place:)</p>
          <div class="RATING">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
          </div>
          <img src="img/person1.jpg" alt="">
          <h3>Vijay Kumar</h3>
        </div>
        <div class="col4">
          <i class="fa fa-quote-left"></i>
          <p>This allowed me to try the new fertilizers and we can get compare the prices.</p>
          <div class="RATING">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
          </div>
          <img src="img/person2.jpg" alt="">
          <h3>Manjunath Yadav</h3>
        </div>

      </div>

    </div>

  </div>

</body>

<?php include "footer.php"; ?> 

</html>