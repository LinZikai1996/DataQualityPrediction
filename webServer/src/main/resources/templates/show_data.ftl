<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">

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
                                <h3 class="card-title">Basic Datatable</h3>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="display" style="min-width: 845px">
                                        <thead>
                                        <tr>
                                            <th>Trade Id</th>
                                            <th>Trade Date</th>
                                            <th>Primary Asset Class</th>
                                            <th>Product</th>
                                            <th>Originating Event</th>
                                            <th>Reporting Regime</th>
                                            <th>USI Issuer</th>
                                            <th>USI Value</th>
                                            <th>UTI Originator</th>
                                            <th>Outgoing</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <#list tradeList as trade>
                                            <tr>
                                                <td>${trade.trade_id}</td>
                                                <td>${trade.trade_date}</td>
                                                <td>${trade.primary_asset_class}</td>
                                                <td>${trade.product}</td>
                                                <td>${trade.originating_event}</td>
                                                <td>${trade.reporting_regime}</td>
                                                <td>${trade.usi_issuer}</td>
                                                <td>${trade.usi_value}</td>
                                                <td>${trade.uti_originator}</td>
                                                <td>${trade.outgoing}</td>
                                                <td>
                                                    <div class="d-flex">
                                                        <a data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg_${trade.trade_id}" type="button" class="btn btn-primary shadow btn-xs sharp me-1"><i class="fas fa-search"></i></a>
                                                        <a class="btn btn-danger shadow btn-xs sharp btn-warning" href="./deleteTradeById.do?trade_id=${trade.trade_id}"><i class="fa fa-trash"></i></a>
                                                        <div class="modal fade bd-example-modal-lg_${trade.trade_id}" role="dialog" aria-hidden="true">
                                                            <div class="modal-dialog modal-lg">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title">Trade Detail</h5>
                                                                        <button type="button" class="btn-close" data-bs-dismiss="modal">
                                                                        </button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <div class="row">
                                                                            <div class="col-lg-12 mt-3">
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Trade Id</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.trade_id}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Trade Date</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.trade_date}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Primary Asset Class</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.primary_asset_class}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Product</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.product}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Originating Event</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.originating_event}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Reporting Regime</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.reporting_regime}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">USI Issuer</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.usi_issuer}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">USI Value</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.usi_value}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">UTI Qriginator</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.uti_originator}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Outgoing</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.outgoing}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Has Ack Nack</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.has_ack_nack}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Tr Determined Rep Role</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.tr_determined_rep_role}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Intent To Clear</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.intent_to_clear}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Execution Venue</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.execution_venue}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">System Trade Source</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.system_trade_source}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Notional Ccy</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.notional_ccy_1}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Notional Ccy</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.notional_ccy_2}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Quantity</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.quantity}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Net Amount</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.net_amount}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Price</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.price}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Option Type</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.option_type}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Strike Price</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.strike_price}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Option Exercise Style</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.option_exercise_style}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Delivery Type</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.delivery_type}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Deriv Notional Change</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.deriv_notional_change}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Upfront Payment</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.upfront_payment}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Executing Entity</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.executing_entity}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Price Multiplier</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.price_multiplier}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Underlyer</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.underlyer}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Sftr Ind</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.sftr_ind}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Waiver Ind</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.waiver_ind}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Short Selling Ind</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.short_selling_ind}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Otc Post Trade Ind</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.otc_post_trade_ind}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Commodity Deriv Ind</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.commodity_deriv_ind}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Manual Ignore Status</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.manual_ignore_status}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Manual Action Status</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.manual_action_status}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Manual Replay Status</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.manual_replay_status}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Routing To</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.routing_to}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Routing To Purpose</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.routing_to_purpose}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Reason Code</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.reason_code}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Reason Category</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.reason_category}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Enum Value</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.enum_value}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Sequence</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.sequence}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Wm Flag</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.wm_flag}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Reg Rules Response</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.reg_rules_response}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Arm Eligible Flag</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.arm_eligible_flag}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Arm Eligibility Reg Rules</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.arm_eligibility_reg_rules}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Apa Eligible Flag</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.apa_eligible_flag}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Apa Eligibility Reg Rules</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.apa_eligibility_reg_rules}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Rts23 Eligible Flag</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.rts23_eligible_flag}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Rts23 Eligibility Reg Rules</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.rts23_eligibility_reg_rules}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
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