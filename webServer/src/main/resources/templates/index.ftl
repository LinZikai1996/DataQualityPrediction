<!DOCTYPE html>
<html lang="en">
<head>

  <!-- PAGE TITLE HERE -->
  <title>Data Quality Predict</title>
  <!-- FAVICONS ICON -->
  <link href="images/SystemLogo.png" rel="icon">
  <link href="./vendor/jquery-smartwizard/dist/css/smart_wizard.min.css" rel="stylesheet">
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
          <!-- Column starts -->
          <div class="col-xl-12">
            <div class="card">
              <div class="card-header d-block">
                <h4 class="card-title">Trade Information</h4>
              </div>
              <div class="card-body">
                <!-- Default accordion -->
                <div class="accordion accordion-primary" id="accordion-one">
                  <form class="needs-validation tab-content" action="/tradeSubmit.do">
                    <div class="accordion-item">
                      <div class="accordion-header  rounded-lg" id="trade_page_01" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-controls="collapseOne"   aria-expanded="true" role="button">
                        <span class="accordion-header-icon"></span>
                        <span class="accordion-header-text">Trade Information - 1</span>
                        <span class="accordion-header-indicator"></span>
                      </div>
                      <div id="collapseOne" class="collapse show" aria-labelledby="trade_page_01" data-bs-parent="#accordion-one">
                        <div class="accordion-body-text">
                          <div class="row">
                            <div class="col-lg-6 mt-3">
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
                                  <select class="default-select wide form-control" id="trade_info_02" name = "product">
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
                                    <option data-display="Select">Please select</option>
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
                            <div class="col-lg-6 mt-3">
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_08">Outgoing</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_08" name = "outgoing">
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
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <div class="accordion-header collapsed rounded-lg" id="trade_page_02" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-controls="collapseTwo"   role="button" aria-expanded="true">
                        <span class="accordion-header-text">Trade Information - 2</span>
                        <span class="accordion-header-indicator"></span>
                      </div>
                      <div id="collapseTwo" class="collapse" aria-labelledby="trade_page_02" data-bs-parent="#accordion-one">
                        <div class="accordion-body-text">
                          <div class="row">
                            <div class="col-lg-6 mt-3">
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_15">Intent to Clear</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_15" name = "intent_to_clear">
                                    <option data-display="Select">Please select</option>
                                    <option value="15.1">15.1</option>
                                    <option value="15.2">15.2</option>
                                    <option value="15.3">15.3</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_16">Execution Venue</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_16" name = "execution_venue">
                                    <option data-display="Select">Please select</option>
                                    <option value="16.1">16.1</option>
                                    <option value="16.2">16.2</option>
                                    <option value="16.3">16.3</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_17">Reported by</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_17" name = "reported_by">
                                    <option data-display="Select">Please select</option>
                                    <option value="17.1">17.1</option>
                                    <option value="17.2">17.2</option>
                                    <option value="17.3">17.3</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_18">Allocation Status</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_18" name = "allocation_status">
                                    <option data-display="Select">Please select</option>
                                    <option value="18.1">18.1</option>
                                    <option value="18.2">18.2</option>
                                    <option value="18.3">18.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_19">System Trade Source</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_19" name = "system_trade_source">
                                    <option data-display="Select">Please select</option>
                                    <option value="19.1">19.1</option>
                                    <option value="19.2">19.2</option>
                                    <option value="19.3">19.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_20">Notional ccy_1</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_20" name = "notional_ccy_1">
                                    <option data-display="Select">Please select</option>
                                    <option value="20.1">20.1</option>
                                    <option value="20.2">20.2</option>
                                    <option value="20.3">20.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_21">Notional ccy_2</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_21" name = "notional_ccy_2">
                                    <option data-display="Select">Please select</option>
                                    <option value="21.1">21.1</option>
                                    <option value="21.2">21.2</option>
                                    <option value="21.3">21.3</option>
                                  </select>
                                </div>
                              </div>
                            </div>
                            <div class="col-lg-6 mt-3">
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_22">Quantity</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_22" name = "quantity">
                                    <option data-display="Select">Please select</option>
                                    <option value="22.1">22.1</option>
                                    <option value="22.2">22.2</option>
                                    <option value="22.3">22.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_23">Net Amount</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_23" name = "net_amount">
                                    <option data-display="Select">Please select</option>
                                    <option value="23.1">23.1</option>
                                    <option value="23.2">23.2</option>
                                    <option value="23.3">23.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_24">Price</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_24" name = "price">
                                    <option data-display="Select">Please select</option>
                                    <option value="10.1">10.1</option>
                                    <option value="10.2">10.2</option>
                                    <option value="10.3">10.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_25">Option Type</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_25" name = "option_type">
                                    <option data-display="Select">Please select</option>
                                    <option value="25.1">25.1</option>
                                    <option value="25.2">25.2</option>
                                    <option value="25.3">25.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_26">Strike Price</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_26" name = "strike_price">
                                    <option data-display="Select">Please select</option>
                                    <option value="26.1">26.1</option>
                                    <option value="26.2">26.2</option>
                                    <option value="26.3">26.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_27">Option Exercise style</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_27" name = "option_exercise_style">
                                    <option data-display="Select">Please select</option>
                                    <option value="27.1">27.1</option>
                                    <option value="27.2">27.2</option>
                                    <option value="27.3">27.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_28">Delivery Type</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_28" name = "delivery_type">
                                    <option data-display="Select">Please select</option>
                                    <option value="28.1">28.1</option>
                                    <option value="28.2">28.2</option>
                                    <option value="28.3">28.3</option>
                                  </select>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <div class="accordion-header collapsed rounded-lg" id="trade_page_03" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-controls="collapseThree"  role="button"  aria-expanded="true">
                        <span class="accordion-header-text">Trade Information - 3</span>
                        <span class="accordion-header-indicator"></span>
                      </div>
                      <div id="collapseThree" class="collapse" aria-labelledby="trade_page_03" data-bs-parent="#accordion-one">
                        <div class="accordion-body-text">
                          <div class="row">
                            <div class="col-lg-6 mt-3">
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_29">Deriv Notional Change</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_29" name = "deriv_notional_change">
                                    <option data-display="Select">Please select</option>
                                    <option value="29.1">29.1</option>
                                    <option value="29.2">29.2</option>
                                    <option value="29.3">29.3</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_30">Upfront Payment</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_30" name = "upfront_payment">
                                    <option data-display="Select">Please select</option>
                                    <option value="30.1">30.1</option>
                                    <option value="30.2">30.2</option>
                                    <option value="30.3">30.3</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_31">Executing Entity</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_31" name = "executing_entity">
                                    <option data-display="Select">Please select</option>
                                    <option value="31.1">31.1</option>
                                    <option value="31.2">31.2</option>
                                    <option value="31.3">31.3</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_32">Price Multiplier</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_32" name = "price_multiplier">
                                    <option data-display="Select">Please select</option>
                                    <option value="32.1">32.1</option>
                                    <option value="32.2">32.2</option>
                                    <option value="32.3">32.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_33">Underlyer</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_33" name = "underlyer">
                                    <option data-display="Select">Please select</option>
                                    <option value="33.1">33.1</option>
                                    <option value="33.2">33.2</option>
                                    <option value="33.3">33.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_34">Sftr Ind</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_34" name = "sftr_ind">
                                    <option data-display="Select">Please select</option>
                                    <option value="34.1">34.1</option>
                                    <option value="34.2">34.2</option>
                                    <option value="34.3">34.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_35">Waiver Ind</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_35" name = "waiver_ind">
                                    <option data-display="Select">Please select</option>
                                    <option value="35.1">35.1</option>
                                    <option value="35.2">35.2</option>
                                    <option value="35.3">35.3</option>
                                  </select>
                                </div>
                              </div>
                            </div>
                            <div class="col-lg-6 mt-3">
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_36">Short Selling Ind</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_36" name = "short_selling_ind">
                                    <option data-display="Select">Please select</option>
                                    <option value="36.1">36.1</option>
                                    <option value="36.2">36.2</option>
                                    <option value="36.3">36.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_37">Otc Post Trade Ind</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_37" name = "otc_post_trade_ind">
                                    <option data-display="Select">Please select</option>
                                    <option value="37.1">37.1</option>
                                    <option value="37.2">37.2</option>
                                    <option value="37.3">37.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_38">Commodity Deriv Ind</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_38" name = "commodity_deriv_ind">
                                    <option data-display="Select">Please select</option>
                                    <option value="38.1">38.1</option>
                                    <option value="38.2">38.2</option>
                                    <option value="38.3">38.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_39">Manual Ignore Status</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_39" name = "manual_ignore_status">
                                    <option data-display="Select">Please select</option>
                                    <option value="39.1">39.1</option>
                                    <option value="39.2">39.2</option>
                                    <option value="39.3">39.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_40">Manual Action Status</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_40" name = "manual_action_status">
                                    <option data-display="Select">Please select</option>
                                    <option value="40.1">40.1</option>
                                    <option value="40.2">40.2</option>
                                    <option value="40.3">40.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_41">Manual Replay Status</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_41" name = "manual_replay_status">
                                    <option data-display="Select">Please select</option>
                                    <option value="41.1">41.1</option>
                                    <option value="41.2">41.2</option>
                                    <option value="41.3">41.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_42">Routing to</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_42" name = "routing_to">
                                    <option data-display="Select">Please select</option>
                                    <option value="42.1">42.1</option>
                                    <option value="42.2">42.2</option>
                                    <option value="42.3">42.3</option>
                                  </select>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <div class="accordion-header collapsed rounded-lg" id="trade_page_04" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-controls="collapseFour"  role="button"  aria-expanded="true">
                        <span class="accordion-header-text">Trade Information - 4</span>
                        <span class="accordion-header-indicator"></span>
                      </div>
                      <div id="collapseFour" class="collapse" aria-labelledby="trade_page_04" data-bs-parent="#accordion-one">
                        <div class="accordion-body-text">
                          <div class="row">
                            <div class="col-lg-6 mt-3">
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_43">Routing to Purpose</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_43" name = "routing_to_purpose">
                                    <option data-display="Select">Please select</option>
                                    <option value="43.1">43.1</option>
                                    <option value="43.2">43.2</option>
                                    <option value="43.3">43.3</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_44">Reason Code</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_44" name = "reason_code">
                                    <option data-display="Select">Please select</option>
                                    <option value="44.1">44.1</option>
                                    <option value="44.2">44.2</option>
                                    <option value="44.3">44.3</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_45">Reason Category</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_45" name = "reason_category">
                                    <option data-display="Select">Please select</option>
                                    <option value="45.1">45.1</option>
                                    <option value="45.2">45.2</option>
                                    <option value="45.3">45.3</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_46">Emum Value</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_46" name = "enum_value">
                                    <option data-display="Select">Please select</option>
                                    <option value="46.1">46.1</option>
                                    <option value="46.2">46.2</option>
                                    <option value="46.3">46.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_47">Sequence</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_47" name = "sequence">
                                    <option data-display="Select">Please select</option>
                                    <option value="47.1">47.1</option>
                                    <option value="47.2">47.2</option>
                                    <option value="47.3">47.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_48">WM Flag</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_48" name = "wm_flag">
                                    <option data-display="Select">Please select</option>
                                    <option value="48.1">48.1</option>
                                    <option value="48.2">48.2</option>
                                    <option value="48.3">48.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_49">Reg Rules Response</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_49" name = "reg_rules_response">
                                    <option data-display="Select">Please select</option>
                                    <option value="49.1">49.1</option>
                                    <option value="49.2">49.2</option>
                                    <option value="49.3">49.3</option>
                                  </select>
                                </div>
                              </div>
                            </div>
                            <div class="col-lg-6 mt-3">
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_50">Arm Eligible Flag</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_50" name = "arm_eligible_flag">
                                    <option data-display="Select">Please select</option>
                                    <option value="50.1">50.1</option>
                                    <option value="50.2">50.2</option>
                                    <option value="50.3">50.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_51">Arm Eligibility Reg Rules</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_51" name = "arm_eligibility_reg_rules">
                                    <option data-display="Select">Please select</option>
                                    <option value="51.1">51.1</option>
                                    <option value="51.2">51.2</option>
                                    <option value="51.3">51.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_52">Apa Eligible Flag</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_52" name = "apa_eligible_flag">
                                    <option data-display="Select">Please select</option>
                                    <option value="52.1">52.1</option>
                                    <option value="52.2">52.2</option>
                                    <option value="52.3">52.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_53">Apa Eligibility Reg Rules</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_53" name = "apa_eligibility_reg_rules">
                                    <option data-display="Select">Please select</option>
                                    <option value="53.1">53.1</option>
                                    <option value="53.2">53.2</option>
                                    <option value="53.3">53.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_54">Rts23 Eligible Flag</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_54" name = "rts23_eligible_flag">
                                    <option data-display="Select">Please select</option>
                                    <option value="54.1">54.1</option>
                                    <option value="54.2">54.2</option>
                                    <option value="54.3">54.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_55">Rts23 Eligibility Reg Rules</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_55" name = "rts23_eligibility_reg_rules">
                                    <option data-display="Select">Please select</option>
                                    <option value="55.1">55.1</option>
                                    <option value="55.2">55.2</option>
                                    <option value="55.3">55.3</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <div class="col-lg-8 ms-auto">
                                  <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <!-- Column ends -->
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


    <script src="./vendor/jquery-steps/build/jquery.steps.min.js"></script>
    <script src="./vendor/jquery-validation/jquery.validate.min.js"></script>
    <!-- Form validate init -->
    <script src="./js/plugins-init/jquery.validate-init.js"></script>


    <!-- Form Steps -->
    <script src="./vendor/jquery-smartwizard/dist/js/jquery.smartWizard.js"></script>
    <script>
      $(document).ready(function(){
        // SmartWizard initialize
        $('#smartwizard').smartWizard();
      });
    </script>
  </div>
</body>
</html>