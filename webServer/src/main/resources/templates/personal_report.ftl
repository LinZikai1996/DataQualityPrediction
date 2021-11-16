<!DOCTYPE html>

<html lang="en">

<head>

    <!-- PAGE TITLE HERE -->
    <title>Invome Admin Dashboard</title>

    <!-- FAVICONS ICON -->
    <link href="images/SystemLogo.png" rel="icon">
    <link href="./vendor/jquery-nice-select/css/nice-select.css" rel="stylesheet">
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
            <div class="container-fluid">

                <!-- row -->
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-xl-6 col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Day Report</h4>
                                    </div>
                                    <div class="card-body">
                                        <div id="day_dashboard"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Week Report</h4>
                                    </div>
                                    <div class="card-body">
                                        <div id="morris_bar_stalked"></div>
                                        <div class="d-flex justify-content-between flex-wrap">
                                        <span class="fs-16 font-w600">
                                            <svg class="me-2" width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <rect x="0.639771" width="18.9471" height="19" rx="9.47357" fill="#44814E"/></svg>
                                            Trade Normal
                                        </span>
                                            <span class="fs-16 font-w600">
                                            <svg class="mx-2" width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <rect x="0.344925" width="18.9471" height="19" rx="9.47357" fill="rgb(255, 92, 0)"/></svg>
                                            Trade Exception
                                        </span>
                                        </div>
                                    </div>
                                </div>
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
<!-- Required vendors -->
<script src="./vendor/global/global.min.js"></script>
<script src="./vendor/jquery-nice-select/js/jquery.nice-select.min.js"></script>
<!-- Chart Morris plugin files -->
<script src="./vendor/raphael/raphael.min.js"></script>
<script src="./vendor/morris/morris.min.js"></script>
<script src="./js/dashboard/personal-day-dashboard.js"></script>
<script src="./js/custom.min.js"></script>
<script src="./js/dlabnav-init.js"></script>
<script type="text/javascript">
    dayDashboard(${tradeTotal})
    weekDashboard(${personalTradeWeeklyList}, ${personalTradeExceptionWeeklyList})
</script>

</body>
</html>