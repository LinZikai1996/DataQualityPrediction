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
                Trade
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
                                    <option value="Equity">Equity</option>
                                    <option value="FixedIncome">Fixed Income</option>
                                    <option value="Credit">Credit</option>
                                    <option value="MoneyMarket">Money Market</option>
                                    <option value="InterestRate">Interest Rate</option>
                                    <option value="ForeignExchange">Foreign Exchange</option>
                                    <option value="Unclassified">Unclassified</option>
                                    <option value="Commodity">Commodity</option>
                                    <option value="SecuritiesFinance">Securities Finance</option>
                                    <option value="ExchangeTraded">Exchange Traded</option>
                                    <option value="CrossAsset">Cross Asset</option>
                                    <option value="NA">NA</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_02">Product</label>
                                <div class="col-lg-6">
                                  <select class="form-control default-select wide" id="trade_info_02" name = "product" >
                                    <option data-display="Select">Please select</option>
                                    <option value="CRDI_USD_3M">CRDI USD 3M</option>
                                    <option value="CRDI_USD_3M_V2">CRDI USD 3M V2</option>
                                    <option value="Commodity::Swap:Cash">Commodity : : Swap : Cash</option>
                                    <option value="Commodity:Agricultural:Softs:Exotic">Commodity : Agricultural : Softs : Exotic</option>
                                    <option value="Commodity:Agricultural:Softs:Option:Cash">Commodity : Agricultural : Softs : Option : Cash</option>
                                    <option value="Commodity:Agricultural:Softs:Option:Cash:Cleared">Commodity : Agricultural : Softs : Option : Cash : Cleared</option>
                                    <option value="Commodity:Agricultural:Softs:SpotFwd:Cash">Commodity : Agricultural : Softs : SpotFwd : Cash</option>
                                    <option value="Commodity:Agricultural:Softs:Swap:Cash">Commodity : Agricultural : Softs : Swap : Cash</option>
                                    <option value="Commodity:Agricultural:Softs:Swap:Physical">Commodity : Agricultural : Softs : Swap : Physical</option>
                                    <option value="Commodity:Energy:InterEnergy:Option:Cash">Commodity : Energy : InterEnergy : Option : Cash</option>
                                    <option value="Commodity:Energy:NatGas:Option:Cash">Commodity : Energy : NatGas : Option : Cash</option>
                                    <option value="Commodity:Energy:NatGas:Swap:Cash">Commodity : Energy : NatGas : Swap : Cash</option>
                                    <option value="Commodity:Energy:NatGas:SpotFwd:Cash">Commodity : Energy : NatGas : SpotFwd : Cash</option>
                                    <option value="Commodity:Energy:Oil:Exotic">Commodity : Energy : Oil : Exotic</option>
                                    <option value="Commodity:Energy:Oil:Option:Cash">Commodity : Energy : Oil : Option : Cash</option>
                                    <option value="Commodity:Energy:Oil:Option:Cash:Cleared">Commodity : Energy : Oil : Option : Cash : Cleared</option>
                                    <option value="Commodity:Energy:Oil:SpotFwd:Cash">Commodity : EnergyOil : SpotFwd : Cash</option>
                                    <option value="Commodity:Energy:Oil:Swap:Cash">Commodity : Energy : Oil : Swap : Cash</option>
                                    <option value="Commodity:Environmental:Emissions:SpotFwd:Cash">Commodity : Environmental : Emissions : SpotFwd : Cash</option>
                                    <option value="Commodity:Environmental:Emissions:SpotFwd:Physical">Commodity : Environmental : Emissions : SpotFwd : Physical</option>
                                    <option value="Commodity:Environmental:Emissions:Swap:Cash">Commodity : Environmental : Emissions : Swap : Cash</option>
                                    <option value="Commodity:Environmental:Emissions:Swap:Physical">Commodity : Environmental : Emissions : Swap : Physical</option>
                                    <option value="Commodity:Metals:NonPrecious:Exotic">Commodity : Metals : NonPrecious : Exotic</option>
                                    <option value="Commodity:Metals:NonPrecious:Option:Cash">Commodity : Metals : NonPrecious : Option : Cash</option>
                                    <option value="Commodity:Metals:NonPrecious:Option:Cash:Cleared">Commodity : Metals : NonPrecious : Option : Cash : Cleared</option>
                                    <option value="Commodity:Metals:NonPrecious:SpotFwd:Cash">Commodity : Metals : NonPrecious : SpotFwd : Cash</option>
                                    <option value="Commodity:Metals:NonPrecious:Swap:Cash">Commodity : Metals : NonPrecious : Swap : Cash</option>
                                    <option value="Commodity:Metals:Precious:Exotic">Commodity : Metals : Precious : Exotic</option>
                                    <option value="Commodity:Metals:Precious:Option:Cash">Commodity : Metals : Precious : Option : Cash</option>
                                    <option value="Commodity:Metals:Precious:Option:Physical">Commodity : Metals : Precious : Option : Physical</option>
                                    <option value="Commodity:Metals:Precious:SpotFwd:Cash">Commodity : Metals : Precious : SpotFwd : Cash</option>
                                    <option value="Commodity:Metals:Precious:SpotFwd:Physical">Commodity : Metals : Precious : SpotFwd : Physical</option>
                                    <option value="Commodity:Metals:Precious:Swap:Cash">Commodity : Metals : Precious : Swap : Cash</option>
                                    <option value="Commodity:Metals:Precious:Swap:Physical">Commodity : Metals : Precious : Swap : Physical</option>
                                    <option value="Commodity:MultiCommodityExotic">Commodity : MultiCommodityExotic</option>
                                    <option value="Commodity:undefined:Swap:Cash">Commodity : undefined : Swap : Cash</option>
                                    <option value="Credit:Exotic:Other">Credit : Exotic : Other</option>
                                    <option value="Credit:Index:CDX:CDXEmergingMarkets">Credit : Index : CDX : CDXEmergingMarkets</option>
                                    <option value="Credit:Index:CDX:CDXIG">Credit : Index : CDX : CDXIG</option>
                                    <option value="Credit:Index:LCDX:LCDX">Credit : Index : LCDX : LCDX</option>
                                    <option value="Credit:Index:iTraxx:iTraxxAsiaExJapan">Credit : Index : iTraxx : iTraxxAsiaExJapan</option>
                                    <option value="Credit:Index:iTraxxAustralia">Credit : Index : iTraxxAustralia</option>
                                    <option value="Credit:Index:iTraxx:iTraxxEurope">Credit : Index : iTraxx : iTraxxEurope</option>
                                    <option value="Credit:Index:iTraxx:iTraxxSovX">Credit : Index : iTraxx : iTraxxSovX</option>
                                    <option value="Credit:SingleName:Corporate:NorthAmericanCorporate">SingleName : Corporate : NorthAmericanCorporate</option>
                                    <option value="Credit:SingleName:Corporate:StandardAsiaCorporate">Credit : SingleName : Corporate : StandardAsiaCorporate</option>
                                    <option value="Credit:SingleNameCorporate:StandardAustraliaCorporate">Credit : SingleNameCorporate : StandardAustraliaCorporate</option>
                                    <option value="Credit:SingleName:Corporate:StandardEmergingEuropeanCorporate">Credit : SingleName : Corporate : StandardEmergingEuropeanCorporate</option>
                                    <option value="Credit:SingleName:Corporate:StandardEuropeanCorporate">Credit : SingleName : Corporate : StandardEuropeanCorporate</option>
                                    <option value="Credit:SingleName:Corporate:StandardJapanCorporate">Credit : SingleName : Corporate : StandardJapanCorporate</option>
                                    <option value="Credit:SingleName:Corporate:StandardNorthAmericanCorporate">Credit : SingleName : Corporate : StandardNorthAmericanCorporate</option>
                                    <option value="Credit:SingleName:Corporate:StandardSingaporeCorporate">Credit : SingleName : Corporate : StandardSingaporeCorporate</option>
                                    <option value="Credit:SingleName:Loans:LCDS">Credit : SingleName : Loans : LCDS</option>
                                    <option value="Credit:SingleName:Sovereign:AsiaSovereign">Credit : SingleName : Sovereign : AsiaSovereign</option>
                                    <option value="Credit:SingleName:Sovereign:EmergingEuropeanAndMiddleEasternSovereign">Credit : SingleName : Sovereign : EmergingEuropeanAndMiddleEasternSovereign</option>
                                    <option value="Credit:SingleName:Sovereign:LatinAmericaSovereign">Credit : SingleName : Sovereign : LatinAmericaSovereign</option>
                                    <option value="Credit:SingleName:Sovereign:StandardAsiaSovereign">Credit : SingleName : Sovereign : StandardAsiaSovereign</option>
                                    <option value="Credit:SingleName:Sovereign:StandardAustraliaSovereign">Credit : SingleName : Sovereign : StandardAustraliaSovereign</option>
                                    <option value="Credit:SingleName:Sovereign:StandardEmergingEuropeanAndMiddleEasternSovereign">Credit : SingleName : Sovereign : StandardEmergingEuropeanAndMiddleEasternSovereign</option>
                                    <option value="Credit:SingleName:Sovereign:StandardLatinAmericaSovereign">Credit : SingleName : Sovereign : StandardLatinAmericaSovereign</option>
                                    <option value="Credit:SingleName:Sovereign:StandardWesternEuropeanSovereign">Credit : SingleName : Sovereign : StandardWesternEuropeanSovereign</option>
                                    <option value="Credit:Swaptions:Corporate:CDSSwaption">Credit : Swaptions : Corporate : CDSSwaption</option>
                                    <option value="Credit:TotalReturnSwap">Credit : TotalReturnSwap</option>
                                    <option value="Equity:Cash">Equity : Cash</option>
                                    <option value="Equity:Option:PriceReturnBasicPerformance:SingleIndex">Equity : Option : PriceReturnBasicPerformance : SingleIndex</option>
                                    <option value="Equity:Option:PriceReturnBasicPerformance:SingleName">Equity : Option : PriceReturnBasicPerformance : SingleName</option>
                                    <option value="Equity:Other">Equity : Other</option>
                                    <option value="Equity:Swap:PriceReturnBasicPerformance:Basket">Equity : Swap : PriceReturnBasicPerformance : Basket</option>
                                    <option value="Equity:Swap:PriceReturnBasicPerformance:SingleIndex">Equity : Swap : PriceReturnBasicPerformance : SingleIndex</option>
                                    <option value="Equity:Swap:PriceReturnBasicPerformance:SingleName">Equity : Swap : PriceReturnBasicPerformance : SingleName</option>
                                    <option value="ExchangeTraded:Future:Commodit">ExchangeTraded : Future : Commodit</option>
                                    <option value="ExchangeTraded:Future:Equity">ExchangeTraded : Future : Equity</option>
                                    <option value="ExchangeTraded:Future:FX">ExchangeTraded : Future : FX</option>
                                    <option value="ExchangeTraded:Future:InterestRate">ExchangeTraded : Future : InterestRate</option>
                                    <option value="ExchangeTraded:Option:Commodity">ExchangeTraded : Option : Commodity</option>
                                    <option value="ExchangeTraded:Option:FX">ExchangeTraded : Option : FX</option>
                                    <option value="ExchangeTraded:Option:InterestRate">ExchangeTraded : Option : InterestRate</option>
                                    <option value="FixedIncome:Bond">FixedIncome : Bond</option>
                                    <option value="ForeignExchange:ComplexExotic">ForeignExchange : ComplexExotic</option>
                                    <option value="ForeignExchange:DualCurrencyDeposit">ForeignExchange : DualCurrencyDeposit</option>
                                    <option value="ForeignExchange:Forward">ForeignExchange : Forward</option>
                                    <option value="ForeignExchange:NDF">ForeignExchange : NDF</option>
                                    <option value="ForeignExchange:NDO">ForeignExchange : NDO</option>
                                    <option value="ForeignExchange:SimpleExotic:Barrier">ForeignExchange : SimpleExotic : Barrier</option>
                                    <option value="ForeignExchange:SimpleExotic:Digital">ForeignExchange : SimpleExotic : Digital</option>
                                    <option value="ForeignExchange:Spot">ForeignExchange : Spot</option>
                                    <option value="ForeignExchange:VanillaOption">ForeignExchange : VanillaOption</option>
                                    <option value="InterestRate:CapFloor">InterestRate : CapFloor</option>
                                    <option value="InterestRate:CrossCurrency:Basis">InterestRate : CrossCurrency : Basis</option>
                                    <option value="InterestRate:CrossCurrency:FixedFixed">InterestRate : CrossCurrency : FixedFixed</option>
                                    <option value="InterestRate:CrossCurrency:FixedFloat">InterestRate : CrossCurrency : FixedFloat</option>
                                    <option value="InterestRate:Exotic">InterestRate : Exotic</option>
                                    <option value="InterestRate:FRA">InterestRate : FRA</option>
                                    <option value="InterestRate:IRSwap:Basis">InterestRate : IRSwap : Basis</option>
                                    <option value="InterestRate:IRSwap:FixedFixed">InterestRate : IRSwap : FixedFixed</option>
                                    <option value="InterestRate:IRSwap:FixedFloat">InterestRate : IRSwap : FixedFloat</option>
                                    <option value="InterestRate:IRSwap:OIS">InterestRate : IRSwap : OIS</option>
                                    <option value="InterestRate:Option:Debtoption">InterestRate : Option : Debtoption</option>
                                    <option value="InterestRate:Option:Swaption">InterestRate : Option : Swaption</option>
                                    <option value="LoanDeposit">LoanDeposit</option>
                                    <option value="MoneyMarket">MoneyMarket</option>
                                    <option value="Securitiesfinance">Securitiesfinance</option>
                                    <option value="SecuritiesFinance:BuySellBack">SecuritiesFinance : BuySellBack</option>
                                    <option value="SecuritiesFinance:RepurchaseAgreement">SecuritiesFinance : RepurchaseAgreement</option>
                                    <option value="SecuritiesFinance:RepurchaseAgreement:Evergreen">SecuritiesFinance : RepurchaseAgreement : Evergreen</option>
                                    <option value="SecuritiesFinance:RepurchaseAgreement:Extendible">SecuritiesFinance : RepurchaseAgreement : Extendible</option>
                                    <option value="SecuritiesFinance:SecuritiesLending">SecuritiesFinance : SecuritiesLending</option>
                                    <option value="SecuritiesFinance:SecuritiesLending::Evergreen">SecuritiesFinance : SecuritiesLending :  : Evergreen</option>
                                    <option value="SecuritiesFinance:SecuritiesLending::Extendible">SecuritiesFinance : SecuritiesLending :  : Extendible</option>
                                    <option value="SecuritiesFinance:SecuritiesLending:CashDriven">SecuritiesFinance : SecuritiesLending : CashDriven</option>
                                    <option value="undefined">undefined</option>
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
                                    <option value="Cancel:Amendment:Retracted">Cancel : Amendment : Retracted</option>
                                    <option value="Cancel:Amendment:TradeAffirmed:Validated">Cancel : Amendment : TradeAffirmed : Validated</option>
                                    <option value="Cancel:Termination:Retracted">Cancel : Termination : Retracted</option>
                                    <option value="Cancel:Termination:TradeAffirmed">Cancel : Termination : TradeAffirmed</option>
                                    <option value="Cancel:Termination:TradeAffirmed:Validated">Cancel : Termination : TradeAffirmed : Validated</option>
                                    <option value="Cancel:Trade:ClearingCompletedNotification">Cancel : Trade : ClearingCompletedNotification</option>
                                    <option value="Cancel:Trade:ClearingCompletedNotificat:Validated">Cancel : Trade : ClearingCompletedNotificat : Validated</option>
                                    <option value="Cancel:Trade:Retracted">Cancel : Trade : Retracted</option>
                                    <option value="Cancel:Trade:Retracted:Validated">Cancel : Trade : Retracted : Validated</option>
                                    <option value="Cancel:Trade:TradeAffirmed">Cancel : Trade : TradeAffirmed</option>
                                    <option value="Cancel:Trade:TradeAffirmed:BOCheck">Cancel : Trade : TradeAffirmed : BOCheck</option>
                                    <option value="Cancel:Trade:TradeAffirmed:BOCheck|CLIENT">Cancel : Trade : TradeAffirmed : BOCheck|CLIENT</option>
                                    <option value="Cancel:Trade:TradeAffirmed:BOCheck|MARKETSINGLECLIENT">Cancel : Trade : TradeAffirmed : BOCheck|MARKETSINGLECLIENT</option>
                                    <option value="Cancel:Trade:TradeAffirmed:BORejected">Cancel : Trade : TradeAffirmed : BORejected</option>
                                    <option value="Cancel:Trade:TradeAffirmed:BORejected|CLIENT">Cancel : Trade : TradeAffirmed : BORejected|CLIENT</option>
                                    <option value="Cancel:Trade:TradeAffirmed:BORejected|MARKET_MULTIPLE_CLIENT">CancelITrade : TradeAffirmed : BORejected|MARKET_MULTIPLE_CLIENT</option>
                                    <option value="Cancel:Trade:TradeAffirmed:BORejected|MARKET_SINGLE_CLIENT">Cancel : Trade : TradeAffirmed : BORejected|MARKET_SINGLE_CLIENT</option>
                                    <option value="Cancel:Trade:TradeAffirmed:CHKP">Cancel : Trade : TradeAffirmed : CHKP</option>
                                    <option value="Cancel:Trade:TradeAffirmed:CancelledFO/RefusedMO">Cancel : Trade : TradeAffirmed : Cancelled FO / Refused MO</option>
                                    <option value="Cancel:Trade:TradeAffirmed:FODiscarded">Cancel : Trade : TradeAffirmed : FODiscarded</option>
                                    <option value="Cancel:Trade:TradeAffirmed:INPT">Cancel : Trade : TradeAffirmed : INPT</option>
                                    <option value="Cancel:Trade:TradeAffirmed:InitialState">Cancel : Trade : TradeAffirmed : InitialState</option>
                                    <option value="Cancel:Trade:TradeAffirmed:MO_Peding">Cancel : Trade : TradeAffirmed : MO_Peding</option>
                                    <option value="Cancel:Trade:TradeAffirmed:ModifiedFO/RefusedMO">Cancel : Trade : TradeAffirmed : Modified FO /Refused MO</option>
                                    <option value="Cancel:Trade:TradeAffirmed:ModifiedFO/RefusedMO|CLIENT">Cancel : Trade : TradeAffirmed : Modified FO /Refused MO|CLIENT</option>
                                    <option value="Cancel:Trade:TradeAffirmed:ModifiedFORefusedMO|MARKET_SINGLE_CLIENT">Cancel : Trade : TradeAffirmed : ModifiedFORefused MO|MARKET_SINGLE_CLIENT</option>
                                    <option value="Cancel:Trade:TradeAffirmed:Validated">Cancel : Trade : TradeAffirmed : Validated</option>
                                    <option value="Cancel:Trade:TradeAffirmed:Validated|CLIENT">Cancel : Trade : TradeAffirmed : Validated|CLIENT</option>
                                    <option value="Cancel:Trade:TradeAffirmed:Validated|MARKET_MULTIPLE_CLIENT">Cancel : Trade : TradeAffirmed : Validated|MARKET_MULTIPLE_CLIENT</option>
                                    <option value="Cancel:Trade:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT">Cancel : Trade : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                    <option value="Cancel:Trade:TradeAffirmed|CLIENT">Cancel : Trade : TradeAffirmed|CLIENT</option>
                                    <option value="Cancel:Trade:TradeAffirmed|MARKET__CLIENT">Cancel : Trade : TradeAffirmed|MARKET__CLIENT</option>
                                    <option value="Cancel:Trade:TradeAffirmed|MARKET_MULTIPLE_CLIENT">Cancel : Trade : TradeAffirmed|MARKET_MULTIPLE_CLIENT</option>
                                    <option value="Cancel:Trade:TradeAffirmed|MARKET_SINGLE_CLIENT">Cancel : Trade : TradeAffirmed|MARKET_SINGLE_CLIENT</option>
                                    <option value="Cancel:drawdown:Retracted">Cancel : drawdown : Retracted</option>
                                    <option value="Cancel:drawdown:TradeAffirmed">Cancel : drawdown : TradeAffirmed</option>
                                    <option value="Cancel:drawdown:TradeAffirmed:Validated">Cancel : drawdown : TradeAffirmed : Validated</option>
                                    <option value="Cancel:expiry:TradeAffirmed:Validated">Cancel : expiry : TradeAffirmed : Validated</option>
                                    <option value="Margin:New:MarginReporting">Margin : New : MarginReporting</option>
                                    <option value="New:Amendment:ClearingCompletedNotification">New : Amendment : ClearingCompletedNotification</option>
                                    <option value="New:Amendment:ClearingCompletedNotification:Validated">New : Amendment : ClearingCompletedNotification : Validated</option>
                                    <option value="New:Amendment:TradeAffirmed">New : Amendment : TradeAffirmed</option>
                                    <option value="New:Amendment:TradeAffirmed:BOCheck">New : Amendment : TradeAffirmed : BOCheck</option>
                                    <option value="New:Amendment:TradeAffirmed:BOCheck|CLIENT">New : Amendment : TradeAffirmed : BOCheck|CLIENT</option>
                                    <option value="New:Amendment:TradeAffirmed:BOCheck|MARKET_MULTIPLE_CLIENT">New : Amendment : TradeAffirmed : BOCheck|MARKET_MULTIPLE_CLIENT</option>
                                    <option value="New:Amendment:TradeAffirmed:BOCheck|MARKET_SINGLE_CLIENT">New : Amendment : TradeAffirmed : BOCheck|MARKET_SINGLE_CLIENT</option>
                                    <option value="New:Amendment:TradeAffirmed:BORejected">New : Amendment : TradeAffirmed : BORejected</option>
                                    <option value="New:Amendment:TradeAffirmed:FO_Discarded">New : Amendment : TradeAffirmed : FO_Discarded</option>
                                    <option value="New:Amendment:TradeAffirmed:INPT">New : Amendment : TradeAffirmed : INPT</option>
                                    <option value="New:Amendment:TradeAffirmed:InitialState">New : Amendment : TradeAffirmed : InitialState</option>
                                    <option value="New:Amendment:TradeAffirmed:InitialState|CLIENT">New : Amendment : TradeAffirmed : InitialState|CLIENT</option>
                                    <option value="New:Amendment:TradeAffirmed:ModifiedFO/RefusedMO">New : Amendment : TradeAffirmed : Modified FO / Refused MO</option>
                                    <option value="New:Amendment:TradeAffirmed:ModifiedFO/RefusedMO|CLIENT">New : Amendment : TradeAffirmed : Modified FO / Refused MO|CLIENT</option>
                                    <option value="New:Amendment:TradeAffirmed:ModifiedFO/RefusedMO|MARKET_SINGLE_CLIENT">New : Amendment : TradeAffirmed : Modified FO / Refused MO|MARKET_SINGLE_CLIENT</option>
                                    <option value="New:Amendment:TradeAffirmed:Validated">New : Amendment : TradeAffirmed : Validated</option>
                                    <option value="New:Amendment:TradeAffirmed:Validated|CLIENT">New : Amendment : TradeAffirmed : Validated|CLIENT</option>
                                    <option value="New:Amendment:TradeAffirmed:Validated|MARKET_MULTIPLE_CLIENT">New : Amendment : TradeAffirmed : Validated|MARKET_MULTIPLE_CLIENT</option>
                                    <option value="New:Amendment:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT">New : Amendment : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                    <option value="New:Amendment:TradeAffirmed">New : Amendment : TradeAffirmed</option>
                                    <option value="New:Amendment:TradeAffirmed|CLIENT">New : Amendment : TradeAffirmed|CLIENT</option>
                                    <option value="New:Amendment:TradeAffirmed|MARKET_MULTIPLE_CLIENT">New : Amendment : TradeAffirmed|MARKET_MULTIPLE_CLIENT</option>
                                    <option value="New:Amendment:TradeAffirmed|MARKET_SINGLE_CLIENT">New : Amendment : TradeAffirmed|MARKET_SINGLE_CLIENT</option>
                                    <option value="New:Exercise:TradeAffirmed">New : Exercise : TradeAffirmed</option>
                                    <option value="New:Exercise:TradeAffirmed:BOCheck">New : Exercise : TradeAffirmed : BOCheck</option>
                                    <option value="New:Exercise:TradeAffirmed:BOCheck|CLIENT">New : Exercise : TradeAffirmed : BOCheck|CLIENT</option>
                                    <option value="New:Exercise:TradeAffirmed:BOCheck|MARKET_SINGLE_CLIENT">New : Exercise : TradeAffirmed : BOCheck|MARKET_SINGLE_CLIENT</option>
                                    <option value="New:Exercise:TradeAffirmed:InitialState">New : Exercise : TradeAffirmed : InitialState</option>
                                    <option value="New:Exercise:TradeAffirmed:Validated">New : Exercise : TradeAffirmed : Validated</option>
                                    <option value="New:Exercise:TradeAffirmed:Validated|CLIENT">New : Exercise : TradeAffirmed : Validated|CLIENT</option>
                                    <option value="New:Exercise:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT">New : Exercise : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                    <option value="New:Termination:ClearingCompletedNotification:Validated">New : Termination : ClearingCompletedNotification : Validated</option>
                                    <option value="New:Termination:TradeAffirmed">New : Termination : TradeAffirmed</option>
                                    <option value="New:Termination:TradeAffirmed:BOChecl">New : Termination : TradeAffirmed : BOChecl</option>
                                    <option value="New:Termination:TradeAffirmed:Initialstate">New : Termination : TradeAffirmed : Initialstate</option>
                                    <option value="New:Termination:TradeAffirmed:Validated">New : Termination : TradeAffirmed : Validated</option>
                                    <option value="lew:Termination:TradeAffirmed:Validated|CLIENT">lew : Termination : TradeAffirmed : Validated|CLIENT</option>
                                    <option value="New:Termination:TradeAffirmed:Validated|MARKET_SINGLEC_LIENT">New : Termination : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                    <option value="New:Trade:ClearingCompletedNotification">New : Trade : ClearingCompletedNotification</option>
                                    <option value="New:Trade:CollateralPosting">New : Trade : CollateralPosting</option>
                                    <option value="New:Trade:TradeAffirmed">New : Trade : TradeAffirmed</option>
                                    <option value="New:Trade:TradeAffirmed:BOCheck">New : Trade : TradeAffirmed : BOCheck</option>
                                    <option value="New:Trade:TradeAffirmed:BOCheck|CLIENT">New : Trade : TradeAffirmed : BOCheck|CLIENT</option>
                                    <option value="New:Trade:TradeAffirmed:BOCheck|MARKET_MULTIPLE_CLIENT">New : Trade : TradeAffirmed : BOCheck|MARKET_MULTIPLE_CLIENT</option>
                                    <option value="New:Trade:TradeAffirmed:BOCheck|MARKET_SINGLE_CLIENT">New : Trade : TradeAffirmed : BOCheck|MARKET_SINGLE_CLIENT</option>
                                    <option value="New:Trade:TradeAffirmed:BORejected">New : Trade : TradeAffirmed : BORejected</option>
                                    <option value="New:Trade:TradeAffirmed:BORejected|CLIENT">New : Trade : TradeAffirmed : BORejected|CLIENT</option>
                                    <option value="New:Trade:TradeAffirmed:BORejected|MARKET_MULTIPLE_CLIENT">New : Trade : TradeAffirmed : BORejected|MARKET_MULTIPLE_CLIENT</option>
                                    <option value="New:Trade:TradeAffirmed:CHKP">New : Trade : TradeAffirmed : CHKP</option>
                                    <option value="New:Trade:TradeAffirmed:Fo_Discarded">New : Trade : TradeAffirmed : Fo_Discarded</option>
                                    <option value="New:Trade:TradeAffirmed:INPT">New : Trade : TradeAffirmed : INPT</option>
                                    <option value="New:Trade:TradeAffirmed:Initialstate">New : Trade : TradeAffirmed : Initialstate</option>
                                    <option value="New:Trade:TradeAffirmed:InitialState|CLIENT">New : Trade : TradeAffirmed : InitialState|CLIENT</option>
                                    <option value="New:Trade:TradeAffirmed:InitialState|MARKET_MULTIPLE_CLIENT">New : Trade : TradeAffirmed : InitialState|MARKET_MULTIPLE_CLIENT</option>
                                    <option value="New:Trade:TradeAffirmed:InitialState|MARKET_SINGLE_CLIENT">New : Trade : TradeAffirmed : InitialState|MARKET_SINGLE_CLIENT</option>
                                    <option value="New:Trade:TradeAffirmed:Validated">New : Trade : TradeAffirmed : Validated</option>
                                    <option value="New:Trade:TradeAffirmed:Validated|CLIENT">New : Trade : TradeAffirmed : Validated|CLIENT</option>
                                    <option value="New:Trade:TradeAffirmed:Validated|MARKET_MULTIPLE_CLIENT">New : Trade : TradeAffirmed : Validated|MARKET_MULTIPLE_CLIENT</option>
                                    <option value="New:Trade:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT">New : Trade : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                    <option value="New:Trade:TradeAffirmed|CLIENT">New : Trade : TradeAffirmedCLIENT</option>
                                    <option value="New:Trade:TradeAffirmed|MARKET_MULTIPLE_CLIENT">New : Trade : TradeAffirmed|MARKET_MULTIPLE_CLIENT</option>
                                    <option value="New:Trade:TradeAffirmed|MARKET_SINGLE_CLIENT">New : Trade : TradeAffirmed|MARKET_SINGLE_CLIENT</option>
                                    <option value="New:Trade:TradeAffirmed|MARKET_ALL_CLIENT">New : Trade : TradeAffirmed|MARKET_ALL_CLIENT</option>
                                    <option value="New:Trade:ValuationReference">New : Trade : ValuationReference</option>
                                    <option value="New:drawdown:TradeAffirmed">New : drawdown : TradeAffirmed</option>
                                    <option value="New:drawdown:TradeAffirmed:BOCheck">New : drawdown : TradeAffirmed : BOCheck</option>
                                    <option value="New:drawdown:TradeAffirmed:Validated">New : drawdown : TradeAffirmed : Validated</option>
                                    <option value="New:expiry:TradeAffirmed:BOCheck">New : expiry : TradeAffirmed : BOCheck</option>
                                    <option value="New:expiry:TradeAffirmed:Validated">New : expiry : TradeAffirmed : Validated</option>
                                    <option value="New:expiry:TradeAffirmed:Validated|CLIENT">New : expiry : TradeAffirmed : Validated|CLIENT</option>
                                    <option value="New:expiry:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT">New : expiry : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                    <option value="New:optionEvent:TradeAffirmed">New : optionEvent : TradeAffirmed</option>
                                    <option value="New:optionEvent:TradeAffirmed:BOCheck">New : optionEvent : TradeAffirmed : BOCheck</option>
                                    <option value="New:optionEvent:TradeAffirmed:InitialState">New : optionEvent : TradeAffirmed : InitialState</option>
                                    <option value="New:optionEvent:TradeAffirmed:Validated">New : optionEvent : TradeAffirmed : Validated</option>
                                    <option value="New:optionEvent:TradeAffirmed:Validated|CLIENT">New : optionEvent : TradeAffirmed : Validated|CLIENT</option>
                                    <option value="New:optionEvent:TradeAffirmed:Validated|MARKET_MULTIPLE_CLIENT">New : optionEvent : TradeAffirmed : Validated|MARKET_MULTIPLE_CLIENT</option>
                                    <option value="New:optionEvent:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT">New : optionEvent : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                    <option value="Reuse:New:ReuseReporting">Reuse : New : ReuseReporting</option>
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
                                    <option value="NA">NA</option>
                                    <option value="MiFIR-ARM,MiFIR-APA">MiFIR-ARM,MiFIR-APA</option>
                                    <option value="MiFIR-ARM,MiFIR-RTS23">MiFIR-ARM,MiFIR-RTS23</option>
                                    <option value="FCA-SFTR">FCA-SFTR</option>
                                    <option value="MiFIR-ARM,SFTR">MiFIR-ARM,SFTR</option>
                                    <option value="SFTR">SFTR</option>
                                    <option value="MiFIR-APA">MiFIR-APA</option>
                                    <option value="MiFIR-RTS23">MiFIR-RTS23</option>
                                    <option value="MiFIR-ARM">MiFIR-ARM</option>
                                    <option value="MiFIR-ARM,MiFIR-APA,SFTR">MiFIR-ARM,MiFIR-APA,SFTR</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_05">USI Issuer</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_05" name = "usi_issuer">
                                    <option data-display="Select">Please select</option>
                                    <option value="NA">NA</option>
                                    <option value="YCDYZNMZ3J">YCDYZNMZ3J</option>
                                    <option value="1N6DM40ZPS">1N6DM40ZPS</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_06">USI Value</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_06" name = "usi_value">
                                    <option data-display="Select">Please select</option>
                                    <option value="1KJTIIGC8YBBG">1KJTIIGC8YBBG</option>
                                    <option value="1SAICMBREPOD">1SAICMBREPOD</option>
                                    <option value="F2KUVLIFOY">F2KUVLIFOY</option>
                                    <option value="GLMXD">GLMXD</option>
                                    <option value="LCHCSDE">LCHCSDE</option>
                                    <option value="XLCHRDSCR">XLCHRDSCR</option>
                                    <option value="NA">NA</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_07">UTI Originator</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_07" name = "uti_originator">
                                    <option data-display="Select">Please select</option>
                                    <option value="INTERNAL_UTI">INTERNAL_UTI</option>
                                    <option value="ISDA">ISDA</option>
                                    <option value="UNCLASSIFIED_UTI">UNCLASSIFIED_UTI</option>
                                    <option value="CONFIRMATION_PLATFORM_UTI">CONFIRMATION_PLATFORM_UTI</option>
                                    <option value="VENUE_UTI">VENUE_UTI</option>
                                    <option value="NO_UTI">NO_UTI</option>
                                    <option value="CCP_UTI">CCP_UTI</option>
                                    <option value="CPTY_UTI">CPTY_UTI</option>
                                    <option value="NA">NA</option>
                                  </select>
                                </div>
                              </div>
                            </div>
                            <div class="col-lg-6 mt-3">
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_08">Outgoing</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_08" name = "outgoing">
                                    <option value="1" selected="selected">1</option>
                                    <option value="0">0</option>
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