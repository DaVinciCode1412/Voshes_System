<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Login - VOSHES</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body class="bg-gradient-primary" style="background: url(&quot;assets/img/new.jpg&quot;) no-repeat;background-size: cover;">
    <div class="container">
        <div class="row justify-content-center" style="margin-top: 4%;">
            <div class="col-md-9 col-lg-12 col-xl-10" style="margin-bottom: -55px;">
                <div class="card shadow-lg o-hidden border-0 my-5" style="background: rgba(255,255,255,0.73);border-radius: 50px;">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-flex">
                                <div class="flex-grow-1 bg-login-image" data-bss-hover-animate="bounce" style="margin-left: -192px;background: url(&quot;assets/img/helpline-6.jpg&quot;) left / cover no-repeat, #ffda74;margin-top: -110px;box-shadow: -1px 0px 18px 3px rgb(44,44,44);margin-bottom: -8px;"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h2 style="color: rgb(0,12,101);font-family: ABeeZee, sans-serif;margin-bottom: -2px;"><strong>Welcome to VOSHES!</strong></h2>
                                        <h6 class="pulse animated infinite" style="font-size: 11px;color: rgb(39,39,41);margin-bottom: 46px;">A Student Helpline Management System of Columban College, Inc.</h6>
                                    </div>
                                    <form class="user" action="index_process.php" method="POST">
                                        <div class="form-group"><input class="form-control" type="number" id="exampleInputNumber" style="border-radius: 160px;height: 50px;font-size: 12.8px;color: rgb(0,0,0);" placeholder="Enter ID Number" required="" name="username"></div>
                                        <div class="form-group"><input class="form-control form-control-user" type="password" id="exampleInputPassword" placeholder="Password" name="password" required="" minlength="8" style="color: rgb(0,0,0);"></div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <div class="form-check"><input class="form-check-input custom-control-input" type="checkbox" id="formCheck-1"><label class="form-check-label custom-control-label" for="formCheck-1" style="color: rgb(33,33,34);">Remember Me</label></div>
                                            </div>
                                        </div><button class="btn btn-primary btn-block text-white btn-user" type="submit" name="submit">Login</button>
                                        <hr>
                                        <hr>
                                    </form>
                                    <div class="text-center"><a class="small" href="forgot-password.html" style="border-color: rgb(16,40,109);color: rgb(10,37,119);"><strong>Forgot Password?</strong></a></div>
                                    <div class="text-center"><a class="small" href="register.html" style="border-color: rgb(78, 115, 223);border-top-color: rgb(78,;border-right-color: 115,;border-bottom-color: 223);border-left-color: 115,;color: rgb(211,11,11);"><strong>New Student? Create an Account!</strong></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <h1 style="text-align: center;font-size: 11px;color: rgb(255,255,255);margin-bottom: 0px;"><br>Copyright ?? VOSHES 2021<br><br></h1>
        </footer>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/smart-forms.min.js"></script>
    <script src="assets/js/chart.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>