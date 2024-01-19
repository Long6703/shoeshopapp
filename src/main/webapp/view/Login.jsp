<%--
  Created by IntelliJ IDEA.
  User: 84354
  Date: 1/19/2024
  Time: 8:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Ela Admin - HTML5 Admin Template</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="css/authen-cs-skin-elastic.css">
    <link rel="stylesheet" href="css/authen-style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script>
</head>
<body class="bg-dark">

<div class="sufee-login d-flex align-content-center flex-wrap">
    <div class="container">
        <div class="login-content">
            <!--                <div class="login-logo">-->
            <!--                    <a href="index.jsp">-->
            <!--                        <img class="align-content" src="images/logo.png" alt="">-->
            <!--                    </a>-->
            <!--                </div>-->
            <div class="login-form">
                <form action="login" method="post">
                    <div class="form-group">
                        <label>User Name</label>
                        <input type="text" class="form-control" name="userName" placeholder="User Name">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password">
                    </div>
                    <!--                        <div class="checkbox">-->
                    <!--                            <label>-->
                    <!--                                <input type="checkbox"> Remember Me-->
                    <!--                            </label>-->
                    <!--                            <label class="pull-right">-->
                    <!--                                <a href="#">Forgotten Password?</a>-->
                    <!--                            </label>-->
                    <!--                        </div>-->
                    <input type="submit" class="btn btn-success btn-flat m-b-30 m-t-30" value="Login"></input>
                    <!--                        <div class="social-login-content">-->
                    <!--                            <div class="social-button">-->
                    <!--                                <button type="button" class="btn social facebook btn-flat btn-addon mb-3"><i class="ti-facebook"></i>Sign in with facebook</button>-->
                    <!--                                <button type="button" class="btn social twitter btn-flat btn-addon mt-2"><i class="ti-twitter"></i>Sign in with twitter</button>-->
                    <!--                            </div>-->
                    <!--                        </div>-->
                    <div class="register-link m-t-15 text-center">
                        <p>Don't have account? <a href="Register.jsp"> Sign Up Here</a></p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
<script src="js/authen-main.js"></script>

</body>
</html>
