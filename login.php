<?php
include 'func/func.php';
$konfig = konfig();
session_start();
if(isset($_SESSION['username'])) {
header('location:'.$konfig['url'].'/index.php'); 
}
?>
<!doctype html>
<html lang="en">
  <head>

    <title>Login - <?=$konfig['judul']?></title>

    <!-- Bootstrap core CSS -->
    <link href="<?=$konfig['url']?>/assets/bootstrap/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <style type="text/css">
      html,
body {
  height: 100%;
}

body {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  width: 100%;
  max-width: 330px;
  padding: 15px;
  margin: auto;
}
.form-signin .checkbox {
  font-weight: 400;
}
.form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="text"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
    </style>
  </head>

  <body class="text-center">
    <form class="form-signin" method="post" action="cek_login.php">
      <h1 class="h3 mb-3 font-weight-normal"><?=$konfig['judul']?></h1><br>
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="username" id="username" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" id="password" required>
      <label for="captcha">Captcha</label>
      <input name="kodeval" type="text" id="kodeval" size="6" maxlength="6" />
      <img src="kodeacak.php" width="75" height="25" alt="Kode Acak" />
      <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Login</button>
       
    </form>

    <script type="text/javascript" src="<?=$konfig['url']?>/assets/js/jquery-2.1.0.js"></script>
    <script type="text/javascript" src="<?=$konfig['url']?>/assets/bootstrap/bootstrap.min.js"></script>
  </body>
</html>
