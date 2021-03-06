<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- PAGE TITLE HERE -->
    <title>Data Quality Predict</title>

    <!-- FAVICONS ICON -->
    <link href="images/SystemLogo.png" rel="icon">
    <link href="css/style.css" rel="stylesheet">
    <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
    <script href="vendor/global/global.min.js"></script>
    <script href="js/custom.min.js"></script>
    <script href="js/dlabnav-init.js"></script>
    <script href="js/styleSwitcher.js"></script>
</head>

<body class="vh-100">
<div class="authincation h-100">
    <div class="container h-100">
        <div class="row justify-content-center h-100 align-items-center">
            <div class="col-md-6">
                <div class="authincation-content">
                    <div class="row no-gutters">
                        <div class="col-xl-12">
                            <div class="auth-form">
                                <div class="text-center mb-3">
                                    <a href="/index.do"><img src="images/SystemLogo.png" alt=""></a>
                                </div>
                                <h4 class="text-center mb-4">Sign up your account</h4>
                                <form action="/addUser.do">
                                    <div class="mb-3">
                                        <label class="mb-1"><strong>User Id</strong></label>
                                        <input name="userId" type="text" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-1"><strong>Username</strong></label>
                                        <input name="userName" type="text" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-1"><strong>Password</strong></label>
                                        <input name="password" type="password" class="form-control">
                                    </div>
                                    <div class="text-center mt-4">
                                        <button type="submit" class="btn btn-primary btn-block">Sign me up</button>
                                    </div>
                                </form>
                                <div class="new-account mt-3">
                                    <p>Already have an account? <a class="text-primary" href="/index.do">Sign in</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>