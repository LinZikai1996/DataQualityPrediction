<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">

    <!-- PAGE TITLE HERE -->
    <title>Invome Admin Dashboard</title>

    <!-- FAVICONS ICON -->
    <link rel="shortcut icon" type="image/png" href="images/favicon.png" />

    <!-- Style css -->
    <link href="./css/style.css" rel="stylesheet">
    <#include "head.ftl">
    <#include "sidebar.ftl">

</head>
<body>


<!--**********************************
    Main wrapper start
***********************************-->
<div id="main-wrapper">

    <div class="header border-bottom">
        <div class="header-content">
            <nav class="navbar navbar-expand">
                <div class="collapse navbar-collapse justify-content-between">
                    <div class="header-left">
                        <div class="dashboard_bar">
                            Trade Report
                        </div>
                    </div>
                    <ul class="navbar-nav header-right">
                        <li class="nav-item d-flex align-items-center">
                            <div class="input-group search-area">
                                <input type="text" class="form-control" placeholder="Search here...">
                                <span class="input-group-text"><a href="javascript:void(0)"><i class="flaticon-381-search-2"></i></a></span>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

    <!--**********************************
        Content body start
    ***********************************-->
    <div class="content-body">
        <!-- row -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-6 col-lg-12 col-sm-12">
                    <div class="card">
                        <div class="card-header d-sm-flex d-block border-0 pb-0">
                            <div class="pe-3 me-auto mb-sm-0 mb-3">
                                <h4 class="fs-20 text-black mb-1 font-w700">Weekly Trade Report</h4>
                            </div>
                        </div>
                        <div class="card-body">
                            <div id="tradeChartBarBar"></div>
                            <div class="d-flex justify-content-between flex-wrap">
                                        <span class="fs-16 font-w600">
                                            <svg class="me-2" width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <rect x="0.639771" width="18.9471" height="19" rx="9.47357" fill="#44814E"/></svg>
                                            Trade
                                        </span>
                                <span class="fs-16 font-w600">
                                            <svg class="mx-2" width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <rect x="0.344925" width="18.9471" height="19" rx="9.47357" fill="#FD5353"/></svg>
                                            Trade Exception
                                        </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-12 col-sm-12">
                    <div class="card">
                        <div class="card-header d-sm-flex d-block border-0 pb-0">
                            <h4 class="card-title">Donught Chart</h4>
                        </div>
                        <div class="card-body">
                            <div id="morris_donught" class="morris_chart_height"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--**********************************
        Content body end
    ***********************************-->


</div>
<!--**********************************
    Main wrapper end
***********************************-->

<!--**********************************
    Scripts
***********************************-->
<!-- Required vendors -->
<script src="./vendor/global/global.min.js"></script>
<script src="./vendor/chart.js/Chart.bundle.min.js"></script>
<script src="vendor/jquery-nice-select/js/jquery.nice-select.min.js"></script>

<!-- Apex Chart -->
<script src="./vendor/apexchart/apexchart.js"></script>
<script src="./vendor/chart.js/Chart.bundle.min.js"></script>

<!-- Chart piety plugin files -->
<script src="./vendor/peity/jquery.peity.min.js"></script>
<script src="./vendor/nouislider/nouislider.min.js"></script>
<script src="./vendor/wnumb/wNumb.js"></script>
<script src="./vendor/owl-carousel/owl.carousel.js"></script>
<script src="./vendor/raphael/raphael.min.js"></script>
<script src="./vendor/morris/morris.min.js"></script>

<!-- Dashboard 1 -->
<script src="./js/dashboard/trade-week-dashboard.js"></script>
<script src="./js/dashboard/trade-month-dashboard.js"></script>


<script src="./js/custom.min.js"></script>
<script src="./js/dlabnav-init.js"></script>


</body>
</html>