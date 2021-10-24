
<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="refresh" content="5;url=/showAllTradeData.do">

    <!-- PAGE TITLE HERE -->
    <title>Data Quality Predict</title>
    <!-- FAVICONS ICON -->
    <link href="images/SystemLogo.png" rel="icon">
    <link href="./css/style.css" rel="stylesheet">

</head>

<body class="vh-100">
<div class="authincation h-100">
    <div class="container h-100">
        <div class="row justify-content-center h-100 align-items-center">
            <div class="col-md-7">
                <div class="form-input-content text-center error-page">
                    <h2 class="error-text fw-bold">${message}</h2>
                    <#if (message=="succeed")>
                        <h4>${action} the trade successfully!</h4>
                    </#if>
                    <#if (message=="failed")>
                        <h4>${action} the trade failed!</h4>
                    </#if>
                    <p>Automatically jump after 5 seconds.</p>
                    <div>
                        <a class="btn btn-primary" href="/toIndex.do">Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--**********************************
	Scripts
***********************************-->
<!-- Required vendors -->
<script src="./vendor/global/global.min.js"></script>
<script src="./js/custom.min.js"></script>
<script src="./js/dlabnav-init.js"></script>
</body>
</html>