<!DOCTYPE html>
<html lang="en">
<head>

  <!-- PAGE TITLE HERE -->
  <title>Data Quality Predict</title>
  <!-- FAVICONS ICON -->
  <link href="images/SystemLogo.png" rel="icon">

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
                Dashboard
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
          <div class="col-lg-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title">Trade Information</h4>
              </div>
              <div class="card-body">
                <div class="form-validation">
                  <form class="needs-validation" action="/tradeSubmit.do">
                    <div class="row">
                      <div class="col-xl-6">
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_01">Primary Asset Class</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_01" name = "primary_asset_class">
                              <option data-display="Select">Please select</option>
                              <option value="1.1">1.1</option>
                              <option value="1.2">1.2</option>
                              <option value="1.3">1.3</option>
                            </select>
                            <div class="invalid-feedback">
                              Please select a one.
                            </div>
                          </div>
                        </div>
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_02">Product</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_01" name = "product">
                              <option data-display="Select">Please select</option>
                              <option value="2.1">2.1</option>
                              <option value="2.2">2.2</option>
                              <option value="2.3">2.3</option>
                            </select>
                            <div class="invalid-feedback">
                              Please select a one.
                            </div>
                          </div>
                        </div>
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_03">Originating Event</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_03" name = "originating_event">
                              <option data-display="Select">Please select</option>
                              <option value="3.1">3.1</option>
                              <option value="3.2">3.2</option>
                              <option value="3.3">3.3</option>
                            </select>
                            <div class="invalid-feedback">
                              Please select a one.
                            </div>
                          </div>
                        </div>
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_04">Reporting Regime</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_04" name = "reporting_regime">
                              <option data-display="Select">Please select</option>
                              <option value="4.1">4.1</option>
                              <option value="4.2">4.2</option>
                              <option value="4.3">4.3</option>
                            </select>
                          </div>
                        </div>
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_05">USI Issuer</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_05" name = "usi_issuer">
                              <option data-display="Select">Please select</option>
                              <option value="5.1">5.1</option>
                              <option value="5.2">5.2</option>
                              <option value="5.3">5.3</option>
                            </select>
                          </div>
                        </div>
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_06">USI Value</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_06" name = "usi_value">
                              <option value="6.1">6.1</option>
                              <option value="6.2">6.2</option>
                              <option value="6.3">6.3</option>
                            </select>
                          </div>
                        </div>
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_07">UTI Originator</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_07" name = "uti_originator">
                              <option data-display="Select">Please select</option>
                              <option value="7.1">7.1</option>
                              <option value="7.2">7.2</option>
                              <option value="7.3">7.3</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-6">
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_08">Outgoing</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_08" name = "Outgoing">
                              <option data-display="Select">Please select</option>
                              <option value="8.1">8.1</option>
                              <option value="8.2">8.2</option>
                              <option value="8.3">8.3</option>
                            </select>
                          </div>
                        </div>
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_09">Has Ack Nack</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_09" name = "has_ack_nack">
                              <option data-display="Select">Please select</option>
                              <option value="9.1">9.1</option>
                              <option value="9.2">9.2</option>
                              <option value="9.3">9.3</option>
                            </select>
                          </div>
                        </div>
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_10">Tr Determined Rep Role</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_10" name = "tr_determined_rep_role">
                              <option data-display="Select">Please select</option>
                              <option value="10.1">10.1</option>
                              <option value="10.2">10.2</option>
                              <option value="10.3">10.3</option>
                            </select>
                          </div>
                        </div>
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_11">Src Determined Rep role</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_11" name = "src_determined_rep_role">
                              <option data-display="Select">Please select</option>
                              <option value="11.1">11.1</option>
                              <option value="11.2">11.2</option>
                              <option value="11.3">11.3</option>
                            </select>
                          </div>
                        </div>
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_12">Ma Determined Rep Role</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_12" name = "ma_determined_rep_role">
                              <option data-display="Select">Please select</option>
                              <option value="12.1">12.1</option>
                              <option value="12.2">12.2</option>
                              <option value="12.3">12.3</option>
                            </select>
                          </div>
                        </div>
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_13">Wack Regimes</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_13" name = "wack_regimes">
                              <option data-display="Select">Please select</option>
                              <option value="13.1">13.1</option>
                              <option value="13.2">13.2</option>
                              <option value="13.3">13.3</option>
                            </select>
                          </div>
                        </div>
                        <div class="mb-3 row">
                          <label class="col-lg-4 col-form-label" for="trade_info_14">Confirmation Method</label>
                          <div class="col-lg-6">
                            <select class="default-select wide form-control" id="trade_info_14" name = "confirmation_method">
                              <option data-display="Select">Please select</option>
                              <option value="14.1">14.1</option>
                              <option value="14.2">14.2</option>
                              <option value="14.3">14.3</option>
                            </select>
                          </div>
                        </div>
                        <div class="mb-3 row">
                          <div class="col-lg-8 ms-auto">
                            <button type="submit" class="btn btn-primary">Submit</button>
                          </div>
                        </div>
                      </div>
                      <div class="dataTables_paginate paging_simple_numbers" id="example3_paginate">
                        <a class="paginate_button previous disabled" aria-controls="example3" data-dt-idx="0" tabindex="0" id="example3_previous">
                          <i class="fa fa-angle-double-left" aria-hidden="true"></i>
                        </a>
                        <span>
                          <a class="paginate_button current" aria-controls="example3" data-dt-idx="1" tabindex="0">1</a>
                          <a class="paginate_button " aria-controls="example3" data-dt-idx="2" tabindex="0">2</a>
                          <a class="paginate_button " aria-controls="example3" data-dt-idx="3" tabindex="0">3</a>
                        </span>
                        <a class="paginate_button next" aria-controls="example3" data-dt-idx="4" tabindex="0" id="example3_next">
                          <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                        </a>
                      </div>
                    </div>
                  </form>
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

    <!--**********************************
            Scripts
        ***********************************-->
    <script src="./vendor/global/global.min.js"></script>
    <script src="./vendor/jquery-nice-select/js/jquery.nice-select.min.js"></script>
    <script src="./js/custom.min.js"></script>
    <script src="./js/dlabnav-init.js"></script>
  </div>
</body>
</html>