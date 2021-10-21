<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="" />
    <meta name="author" content="" />
    <meta name="robots" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Invome : Invome Admin  Bootstrap 5 Template" />
    <meta property="og:title" content="Invome : Invome Admin  Bootstrap 5 Template" />
    <meta property="og:description" content="Invome : Invome Admin  Bootstrap 5 Template" />
    <meta property="og:image" content="https://invome.dexignlab.com/xhtml/social-image.png" />
    <meta name="format-detection" content="telephone=no">

    <!-- PAGE TITLE HERE -->
    <title>Data Quality Predict</title>

    <!-- FAVICONS ICON -->
    <link href="images/SystemLogo.png" rel="icon">
    <!-- Datatable -->
    <link href="./vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
    <!-- Custom Stylesheet -->
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
                                Show Datatable
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
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Basic Datatable</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="display" style="min-width: 845px">
                                        <thead>
                                        <tr>
                                            <th>Trade Id</th>
                                            <th>Primary Asset Class</th>
                                            <th>Product</th>
                                            <th>Originating Event</th>
                                            <th>Reporting Regime</th>
                                            <th>USI Issuer</th>
                                            <th>USI Value</th>
                                            <th>UTI Originator</th>
                                            <th>Outgoing</th>
                                            <th>Has Ack Nack</th>
                                            <th>Tr Determined Rep Role</th>
                                            <th>Src Determined Rep role</th>
                                            <th>Ma Determined Rep Role</th>
                                            <th>Wack Regimes</th>
                                            <th>Confirmation Method</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <#list tradeList as trade>
                                            <tr>
                                                <td>${trade.trade_id}</td>
                                                <td>${trade.primary_asset_class}</td>
                                                <td>${trade.product}</td>
                                                <td>${trade.originating_event}</td>
                                                <td>${trade.reporting_regime}</td>
                                                <td>${trade.usi_issuer}</td>
                                                <td>${trade.usi_value}</td>
                                                <td>${trade.uti_originator}</td>
                                                <td>${trade.outgoing}</td>
                                                <td>${trade.has_ack_nack}</td>
                                                <td>${trade.tr_determined_rep_role}</td>
                                                <td>${trade.src_determined_rep_role}</td>
                                                <td>${trade.ma_determined_rep_role}</td>
                                                <td>${trade.wack_regimes}</td>
                                                <td>${trade.confirmation_method}</td>
                                            </tr>
                                        </#list>
                                        </tbody>
                                    </table>
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
<!--**********************************
        Main wrapper end
    ***********************************-->

<!--**********************************
        Scripts
    ***********************************-->
    <script src="./vendor/global/global.min.js"></script>

    <!-- Datatable -->
    <script src="./vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="./js/plugins-init/datatables.init.js"></script>
    <script src="./vendor/jquery-nice-select/js/jquery.nice-select.min.js"></script>
    <script src="./js/custom.min.js"></script>
    <script src="./js/dlabnav-init.js"></script>
</body>
</html>