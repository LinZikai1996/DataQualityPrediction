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
                                    <option data-display="NA">NA</option>
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
                                    <option data-display="NA">NA</option>
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
                                    <option data-display="NA">NA</option>
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
                                    <option data-display="NA">NA</option>
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
                                    <option data-display="NA">NA</option>
                                    <option value="YCDYZNMZ3J">YCDYZNMZ3J</option>
                                    <option value="1N6DM40ZPS">1N6DM40ZPS</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_06">USI Value</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_06" name = "usi_value">
                                    <option data-display="NA">NA</option>
                                    <option value="1KJTIIGC8YBBG">1KJTIIGC8YBBG</option>
                                    <option value="1SAICMBREPOD">1SAICMBREPOD</option>
                                    <option value="F2KUVLIFOY">F2KUVLIFOY</option>
                                    <option value="GLMXD">GLMXD</option>
                                    <option value="LCHCSDE">LCHCSDE</option>
                                    <option value="XLCHRDSCR">XLCHRDSCR</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_07">UTI Originator</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_07" name = "uti_originator">
                                    <option data-display="NA">NA</option>
                                    <option value="INTERNAL_UTI">INTERNAL_UTI</option>
                                    <option value="ISDA">ISDA</option>
                                    <option value="UNCLASSIFIED_UTI">UNCLASSIFIED_UTI</option>
                                    <option value="CONFIRMATION_PLATFORM_UTI">CONFIRMATION_PLATFORM_UTI</option>
                                    <option value="VENUE_UTI">VENUE_UTI</option>
                                    <option value="NO_UTI">NO_UTI</option>
                                    <option value="CCP_UTI">CCP_UTI</option>
                                    <option value="CPTY_UTI">CPTY_UTI</option>
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
                                    <option value="1">1</option>
                                    <option value="0" selected="selected">0</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_10">Tr Determined Rep Role</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_10" name = "tr_determined_rep_role">
                                    <option value="ReportingParty">Reporting Party</option>
                                    <option value="NA" selected="selected">NA</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_11">Intent to Clear</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_11" name = "intent_to_clear">
                                    <option value="N" selected="selected">N</option>
                                    <option value="Y">Y</option>
                                    <option value="NA">NA</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_12">Execution Venue</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_12" name = "execution_venue">
                                    <option value="NA" selected="selected">NA</option>
                                    <option value="RILFO74P1CM8P6PCT96">RILFO74P1CM8P6PCT96</option>
                                    <option value="54930MDYVVHJ8D1DW28">54930MDYVVHJ8D1DW28</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_13">System Trade Source</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_13" name = "system_trade_source">
                                    <option data-display="NA">NA</option>
                                    <option value="UTS">UTS</option>
                                    <option value="FEDS">FEDS</option>
                                    <option value="CIS">CIS</option>
                                    <option value="Murex">Murex</option>
                                    <option value="MxCMS">MxCMS</option>
                                    <option value="VELOCITY">VELOCITY</option>
                                    <option value="DZH">DZH</option>
                                    <option value="MARTINI">MARTINI</option>
                                    <option value="EINVESTMENT">EINVESTMENT</option>
                                    <option value="EQCONNECT">EQCONNECT</option>
                                    <option value="OPICS">OPICS</option>
                                    <option value="S2BX">S2BX</option>
                                    <option value="Velocity">Velocity</option>
                                    <option value="EDR">EDR</option>
                                    <option value="Blade">Blade</option>
                                    <option value="SABRE">SABRE</option>
                                    <option value="Martini">Martini</option>
                                    <option value="GLTRADE">GLTRADE</option>
                                    <option value="RiskRunnerSTP">RiskRunnerSTP</option>
                                    <option value="FICONNECT">FICONNECT</option>
                                    <option value="MX_FXCASH">MX_FXCASH</option>
                                    <option value="BCSSTELLA">BCSSTELLA</option>
                                    <option value="BTS">BTS</option>
                                    <option value="Sophis">Sophis</option>
                                    <option value="WSD">WSD</option>
                                    <option value="FIConnect">FIConnect</option>
                                    <option value="T24">T24</option>
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
                                <label class="col-lg-4 col-form-label" for="trade_info_14">Notional ccy_1</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_14" name = "notional_ccy_1">
                                    <option data-display="NA">NA</option>
                                    <option value="AED">AED</option>
                                    <option value="AFN">AFN</option>
                                    <option value="AFI">AFI</option>
                                    <option value="AOA">AOA</option>
                                    <option value="ARS">ARS</option>
                                    <option value="AUD">AUD</option>
                                    <option value="AZN">AZN</option>
                                    <option value="BDT">BDT</option>
                                    <option value="BGN">BGN</option>
                                    <option value="BHD">BHD</option>
                                    <option value="BND">BND</option>
                                    <option value="BOB">BOB</option>
                                    <option value="BRL">BRL</option>
                                    <option value="BWP">BWP</option>
                                    <option value="CAD">CAD</option>
                                    <option value="CHF">CHF</option>
                                    <option value="CLF">CLF</option>
                                    <option value="CLO">CLO</option>
                                    <option value="CNH">CNH</option>
                                    <option value="CNO">CNO</option>
                                    <option value="CNY">CNY</option>
                                    <option value="COP">COP</option>
                                    <option value="CZK">CZK</option>
                                    <option value="DKK">DKK</option>
                                    <option value="EGP">EGP</option>
                                    <option value="ETB">ETB</option>
                                    <option value="ETH">ETH</option>
                                    <option value="EUR">EUR</option>
                                    <option value="GBP">GBP</option>
                                    <option value="GBX">GBX</option>
                                    <option value="GHS">GHS</option>
                                    <option value="GMD">GMD</option>
                                    <option value="GS">GS</option>
                                    <option value="HKD">HKD</option>
                                    <option value="HRK">HRK</option>
                                    <option value="HUF">HUF</option>
                                    <option value="IDR">IDR</option>
                                    <option value="IDY">IDY</option>
                                    <option value="ILS">ILS</option>
                                    <option value="INR">INR</option>
                                    <option value="IQD">IQD</option>
                                    <option value="JOD">JOD</option>
                                    <option value="JPT">JPT</option>
                                    <option value="JPY">JPY</option>
                                    <option value="KES">KES</option>
                                    <option value="KRO">KRO</option>
                                    <option value="KRW">KRW</option>
                                    <option value="KWD">KWD</option>
                                    <option value="KZT">KZT</option>
                                    <option value="LKH">LKH</option>
                                    <option value="LKR">LKR</option>
                                    <option value="MAD">MAD</option>
                                    <option value="MOP">MOP</option>
                                    <option value="MUR">MUR</option>
                                    <option value="MWK">MWK</option>
                                    <option value="MXN">MXN</option>
                                    <option value="MYO">MYO</option>
                                    <option value="MYR">MYR</option>
                                    <option value="MYZ">MYZ</option>
                                    <option value="MZH">MZH</option>
                                    <option value="MZN">MZN</option>
                                    <option value="NAD">NAD</option>
                                    <option value="NGN">NGN</option>
                                    <option value="NOK">NOK</option>
                                    <option value="NPR">NPR</option>
                                    <option value="NZD">NZD</option>
                                    <option value="OMR">OMR</option>
                                    <option value="PEN">PEN</option>
                                    <option value="PEO">PEO</option>
                                    <option value="PHP">PHP</option>
                                    <option value="PKH">PKH</option>
                                    <option value="PKR">PKR</option>
                                    <option value="PLN">PLN</option>
                                    <option value="QAR">QAR</option>
                                    <option value="RON">RON</option>
                                    <option value="RSD">RSD</option>
                                    <option value="RUB">RUB</option>
                                    <option value="RWF">RWF</option>
                                    <option value="SAR">SAR</option>
                                    <option value="SEK">SEK</option>
                                    <option value="SGD">SGD</option>
                                    <option value="SGO">SGO</option>
                                    <option value="SLL">SLL</option>
                                    <option value="SZL">SZL</option>
                                    <option value="THB">THB</option>
                                    <option value="TND">TND</option>
                                    <option value="TRB">TRB</option>
                                    <option value="TRY">TRY</option>
                                    <option value="TWD">TWD</option>
                                    <option value="TZS">TZS</option>
                                    <option value="UAH">UAH</option>
                                    <option value="UGX">UGX</option>
                                    <option value="USD">USD</option>
                                    <option value="UYU">UYU</option>
                                    <option value="UZS">UZS</option>
                                    <option value="VND">VND</option>
                                    <option value="XAF">XAF</option>
                                    <option value="XAG">XAG</option>
                                    <option value="XAU">XAU</option>
                                    <option value="XOF">XOF</option>
                                    <option value="XOH">XOH</option>
                                    <option value="XPD">XPD</option>
                                    <option value="XPT">XPT</option>
                                    <option value="XUC">XUC</option>
                                    <option value="ZAR">ZAR</option>
                                    <option value="ZMW">ZMW</option>
                                    <option value="ZWL">ZWL</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_15">Notional ccy_2</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_15" name = "notional_ccy_2">
                                    <option data-display="NA">NA</option>
                                    <option value="AED">AED</option>
                                    <option value="AOA">AOA</option>
                                    <option value="ARS">ARS</option>
                                    <option value="AUD">AUD</option>
                                    <option value="BDT">BDT</option>
                                    <option value="BGN">BGN</option>
                                    <option value="BHD">BHD</option>
                                    <option value="BND">BND</option>
                                    <option value="BRL">BRL</option>
                                    <option value="BWP">BWP</option>
                                    <option value="CAD">CAD</option>
                                    <option value="CHE">CHE</option>
                                    <option value="CLP">CLP</option>
                                    <option value="CNH">CNH</option>
                                    <option value="CNY">CNY</option>
                                    <option value="COP">COP</option>
                                    <option value="CZK">CZK</option>
                                    <option value="DKK">DKK</option>
                                    <option value="EGP">EGP</option>
                                    <option value="ETB">ETB</option>
                                    <option value="EUR">EUR</option>
                                    <option value="GBP">GBP</option>
                                    <option value="GHS">GHS</option>
                                    <option value="GMD">GMD</option>
                                    <option value="HKD">HKD</option>
                                    <option value="HRK">HRK</option>
                                    <option value="HUF">HUF</option>
                                    <option value="IDR">IDR</option>
                                    <option value="ILS">ILS</option>
                                    <option value="INR">INR</option>
                                    <option value="LQD">LQD</option>
                                    <option value="JOD">JOD</option>
                                    <option value="JPY">JPY</option>
                                    <option value="KES">KES</option>
                                    <option value="KMF">KMF</option>
                                    <option value="KRW">KRW</option>
                                    <option value="KWD">KWD</option>
                                    <option value="KZT">KZT</option>
                                    <option value="LKR">LKR</option>
                                    <option value="MAD">MAD</option>
                                    <option value="MGA">MGA</option>
                                    <option value="MOP">MOP</option>
                                    <option value="MUR">MUR</option>
                                    <option value="MWK">MWK</option>
                                    <option value="MXN">MXN</option>
                                    <option value="MYR">MYR</option>
                                    <option value="MYZ">MYZ</option>
                                    <option value="MZN">MZN</option>
                                    <option value="NAD">NAD</option>
                                    <option value="NGN">NGN</option>
                                    <option value="NOK">NOK</option>
                                    <option value="NPR">NPR</option>
                                    <option value="NZD">NZD</option>
                                    <option value="OMR">OMR</option>
                                    <option value="PEN">PEN</option>
                                    <option value="PHP">PHP</option>
                                    <option value="PKR">PKR</option>
                                    <option value="PLN">PLN</option>
                                    <option value="QAR">QAR</option>
                                    <option value="RON">RON</option>
                                    <option value="RSD">RSD</option>
                                    <option value="RUB">RUB</option>
                                    <option value="SAR">SAR</option>
                                    <option value="SEK">SEK</option>
                                    <option value="SGD">SGD</option>
                                    <option value="SGO">SGO</option>
                                    <option value="SLL">SLL</option>
                                    <option value="SZL">SZL</option>
                                    <option value="THB">THB</option>
                                    <option value="TND">TND</option>
                                    <option value="TRY">TRY</option>
                                    <option value="TWD">TWD</option>
                                    <option value="TZS">TZS</option>
                                    <option value="UAH">UAH</option>
                                    <option value="UGX">UGX</option>
                                    <option value="USD">USD</option>
                                    <option value="VND">VND</option>
                                    <option value="XAF">XAF</option>
                                    <option value="XAG">XAG</option>
                                    <option value="XAU">XAU</option>
                                    <option value="XG4">XG4</option>
                                    <option value="XGI">XGI</option>
                                    <option value="XOF">XOF</option>
                                    <option value="XOH">XOH</option>
                                    <option value="XPD">XPD</option>
                                    <option value="XPT">XPT</option>
                                    <option value="XRH">XRH</option>
                                    <option value="ZAR">ZAR</option>
                                    <option value="ZMW">ZMW</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_16">Quantity</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_16" name = "quantity">
                                    <option data-display="NA">NA</option>
                                    <option value="AED">AED</option>
                                    <option value="AOA">AOA</option>
                                    <option value="AUD">AUD</option>
                                    <option value="AZN">AZN</option>
                                    <option value="BDT">BDT</option>
                                    <option value="BGN">BGN</option>
                                    <option value="BHD">BHD</option>
                                    <option value="BND">BND</option>
                                    <option value="BRL">BRL</option>
                                    <option value="BWP">BWP</option>
                                    <option value="CAD">CAD</option>
                                    <option value="CHF">CHF</option>
                                    <option value="CLF">CLF</option>
                                    <option value="CLP">CLP</option>
                                    <option value="CNH">CNH</option>
                                    <option value="CNY">CNY</option>
                                    <option value="COP">COP</option>
                                    <option value="CZK">CZK</option>
                                    <option value="DKK">DKK</option>
                                    <option value="DOP">DOP</option>
                                    <option value="EGP">EGP</option>
                                    <option value="EUR">EUR</option>
                                    <option value="GBP">GBP</option>
                                    <option value="GBX">GBX</option>
                                    <option value="GHS">GHS</option>
                                    <option value="GMD">GMD</option>
                                    <option value="GS">GS</option>
                                    <option value="HKD">HKD</option>
                                    <option value="HRK">HRK</option>
                                    <option value="HUF">HUF</option>
                                    <option value="IDR">IDR</option>
                                    <option value="ILS">ILS</option>
                                    <option value="INR">INR</option>
                                    <option value="IQD">IQD</option>
                                    <option value="JOD">JOD</option>
                                    <option value="JPT">JPT</option>
                                    <option value="JPY">JPY</option>
                                    <option value="KES">KES</option>
                                    <option value="KMF">KMF</option>
                                    <option value="KRW">KRW</option>
                                    <option value="KWD">KWD</option>
                                    <option value="LKR">LKR</option>
                                    <option value="MAD">MAD</option>
                                    <option value="MGA">MGA</option>
                                    <option value="MOP">MOP</option>
                                    <option value="MUR">MUR</option>
                                    <option value="MWK">MWK</option>
                                    <option value="MXN">MXN</option>
                                    <option value="MYR">MYR</option>
                                    <option value="MYZ">MYZ</option>
                                    <option value="MZN">MZN</option>
                                    <option value="NAD">NAD</option>
                                    <option value="NGN">NGN</option>
                                    <option value="NOK">NOK</option>
                                    <option value="NPR">NPR</option>
                                    <option value="NZD">NZD</option>
                                    <option value="OMR">OMR</option>
                                    <option value="PEN">PEN</option>
                                    <option value="PHP">PHP</option>
                                    <option value="PKR">PKR</option>
                                    <option value="PLN">PLN</option>
                                    <option value="QAR">QAR</option>
                                    <option value="RON">RON</option>
                                    <option value="RSD">RSD</option>
                                    <option value="RUB">RUB</option>
                                    <option value="SAR">SAR</option>
                                    <option value="SEK">SEK</option>
                                    <option value="SGD">SGD</option>
                                    <option value="SGO">SGO</option>
                                    <option value="SLL">SLL</option>
                                    <option value="SZL">SZL</option>
                                    <option value="THB">THB</option>
                                    <option value="TRY">TRY</option>
                                    <option value="TWD">TWD</option>
                                    <option value="TZS">TZS</option>
                                    <option value="UAH">UAH</option>
                                    <option value="UGX">UGX</option>
                                    <option value="USD">USD</option>
                                    <option value="UYU">UYU</option>
                                    <option value="UZS">UZS</option>
                                    <option value="VND">VND</option>
                                    <option value="XAF">XAF</option>
                                    <option value="XAG">XAG</option>
                                    <option value="XAU">XAU</option>
                                    <option value="XG4">XG4</option>
                                    <option value="XGI">XGI</option>
                                    <option value="XOF">XOF</option>
                                    <option value="XOH">XOH</option>
                                    <option value="XPD">XPD</option>
                                    <option value="XPT">XPT</option>
                                    <option value="XRH">XRH</option>
                                    <option value="XUC">XUC</option>
                                    <option value="ZAR">ZAR</option>
                                    <option value="ZMW">ZMW</option>
                                    <option value="ZWL">ZWL</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_17">Net Amount</label>
                                <div class="col-lg-6">
                                  <input type="text" name = "net_amount" class="form-control" id="trade_info_17" placeholder="NA">
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_18">Price</label>
                                <div class="col-lg-6">
                                  <input type="text" name = "price" class="form-control" id="trade_info_18" placeholder="NA">
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_19">Option Type</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_19" name = "option_type">
                                    <option data-display="NA">NA</option>
                                    <option value="Call">Call</option>
                                    <option value="Put">Put</option>
                                    <option value="Strd">Strd</option>
                                    <option value="Other">Other</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_20">Strike Price</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_20" name = "strike_price">
                                    <option data-display="NA">NA</option>
                                    <option value="Pending">Pending</option>
                                    <option value="Percentage">Percentage</option>
                                    <option value="PendingPercentage">PendingPercentage</option>
                                    <option value="Monetary">Monetary</option>
                                    <option value="NoAvailable">NoAvailable</option>
                                  </select>
                                </div>
                              </div>
                            </div>
                            <div class="col-lg-6 mt-3">
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_21">Option Exercise style</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_21" name = "option_exercise_style">
                                    <option data-display="NA">NA</option>
                                    <option value="AMER">AMER</option>
                                    <option value="BERM">BERM</option>
                                    <option value="EURO">EURO</option>
                                    <option value="OTHR">OTHR</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_22">Delivery Type</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_22" name = "delivery_type">
                                    <option data-display="NA">NA</option>
                                    <option value="CASH">CASH</option>
                                    <option value="PHYS">PHYS</option>
                                    <option value="OPTL">OPTL</option>
                                    <option value="R">R</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_23">Deriv Notional Change</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_23" name = "deriv_notional_change">
                                    <option data-display="NA">NA</option>
                                    <option value="Decrease">Decrease</option>
                                    <option value="Increase">Increase</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_24">Upfront Payment</label>
                                <div class="col-lg-6">
                                  <input type="text" name="upfront_payment" class="form-control" id="trade_info_24" placeholder="NA">
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_25">Upfront Payment Currency</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_25" name="upfront_payment_currency">
                                    <option data-display="NA">NA</option>
                                    <option value="AED">AED</option>
                                    <option value="AUD">AUD</option>
                                    <option value="BRL">BRL</option>
                                    <option value="CAD">CAD</option>
                                    <option value="CHF">CHF</option>
                                    <option value="CNY">CNY</option>
                                    <option value="COP">COP</option>
                                    <option value="CZK">CZK</option>
                                    <option value="EUR">EUR</option>
                                    <option value="GBI">GBI</option>
                                    <option value="GBP">GBP</option>
                                    <option value="GHS">GHS</option>
                                    <option value="HKD">HKD</option>
                                    <option value="HUF">HUF</option>
                                    <option value="IDR">IDR</option>
                                    <option value="INR">INR</option>
                                    <option value="JPY">JPY</option>
                                    <option value="KES">KES</option>
                                    <option value="KRW">KRW</option>
                                    <option value="MXN">MXN</option>
                                    <option value="MYR">MYR</option>
                                    <option value="NOK">NOK</option>
                                    <option value="NZD">NZD</option>
                                    <option value="PLN">PLN</option>
                                    <option value="RUB">RUB</option>
                                    <option value="SAR">SAR</option>
                                    <option value="SEK">SEK</option>
                                    <option value="SGD">SGD</option>
                                    <option value="TRY">TRY</option>
                                    <option value="TWD">TWD</option>
                                    <option value="USD">USD</option>
                                    <option value="XAG">XAG</option>
                                    <option value="XAU">XAU</option>
                                    <option value="XPD">XPD</option>
                                    <option value="XPT">XPT</option>
                                    <option value="ZAR">ZAR</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_26">Price Multiplier</label>
                                <div class="col-lg-6">
                                  <input type="text" name="price_multiplier" class="form-control" id="trade_info_26" placeholder="NA">
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
                                <label class="col-lg-4 col-form-label" for="trade_info_27">Sftr Ind</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_27" name = "sftr_ind">
                                    <option data-display="NA">NA</option>
                                    <option value="1">1</option>
                                    <option value="0" selected="selected">0</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_28">Waiver Ind</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_28" name = "waiver_ind">
                                    <option data-display="NA">NA</option>
                                    <option value="ILQD">ILQD</option>
                                    <option value="ILQD,ILQD">ILQD,ILQD</option>
                                    <option value="ILQD,SIZE">ILQD,SIZE</option>
                                    <option value="LRGS2">LRGS2</option>
                                    <option value="LRGS2,ILQD">LRGS2,ILQD</option>
                                    <option value="LRGS2,SIZE">LRGS2,SIZE</option>
                                    <option value="RFPT">RFPT</option>
                                    <option value="RFPT,ILQD">RFPT,ILQD</option>
                                    <option value="RFPT,SIZE">RFPT,SIZE</option>
                                    <option value="SIZE">SIZE</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_29">Short Selling Ind</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_29" name = "short_selling_ind">
                                    <option data-display="NA">NA</option>
                                    <option value="UNDI">UNDI</option>
                                    <option value="SSEX">SSEX</option>
                                    <option value="SESH">SESH</option>
                                    <option value="SELL">SELL</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_30">Otc Post Trade Ind</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_30" name = "otc_post_trade_ind">
                                    <option data-display="NA">NA</option>
                                    <option value="AMND">AMND</option>
                                    <option value="AMND:DECR">AMND : DECR</option>
                                    <option value="AMND:DECR:ILQD">AMND : DECR : ILQD</option>
                                    <option value="AMND:DECR:LRGS:ILQD:SIZE">AMND : DECR : LRGS : ILQD : SIZE</option>
                                    <option value="AMND:DECR:LRGS:SIZE">AMND : DECR : LRGS : SIZE</option>
                                    <option value="AMND:ILQD">AMND : ILQD</option>
                                    <option value="AMND:ILQD:SIZE">AMND : ILQD : SIZE</option>
                                    <option value="AMND:INCR">AMND : INCR</option>
                                    <option value="AMND:INCR:ILQD">AMND : INCR : ILQD</option>
                                    <option value="AMND:INCR:ILQD:SIZE">AMND : INCR : ILQD : SIZE</option>
                                    <option value="AMND:INCR:LRGS:ILQD:SIZE">AMND : INCR : LRGS : ILQD : SIZE</option>
                                    <option value="AMND:INCR:LRGS:SIZE">AMND : INCR : LRGS : SIZE</option>
                                    <option value="AMND:LRGS:ILQD:SIZE">AMND : LRGS : ILQD : SIZE</option>
                                    <option value="AMND:LRGS:SIZE">AMND : LRGS : SIZE</option>
                                    <option value="AMND:SIZE">AMND : SIZE</option>
                                    <option value="DECR">DECR</option>
                                    <option value="DECR:ILQD">DECR : ILQD</option>
                                    <option value="DECR:LRGS:ILQD:SIZE">DECR : LRGS : ILQD : SIZE</option>
                                    <option value="DECR:LRGS:SIZE">DECR : LRGS : SIZE</option>
                                    <option value="ILQD">ILQD</option>
                                    <option value="ILQD:ACTX">ILQD : ACTX</option>
                                    <option value="ILQD:SIZE">ILQD : SIZE</option>
                                    <option value="LRGS">LRGS</option>
                                    <option value="LRGS:ILQD:SIZE">LRGS : ILQD : SIZE</option>
                                    <option value="LRGS:ILQD:SIZE:ACTX">LRGS : ILQD : SIZE : ACTX</option>
                                    <option value="LRGS:SIZE">LRGS : SIZE</option>
                                    <option value="LRGS:SIZE:ACTX">LRGS : SIZE : ACTX</option>
                                    <option value="SIZE">SIZE</option>
                                    <option value="SIZE:ACTX">SIZE : ACTX</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_31">Commodity Deriv Ind</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_31" name = "commodity_deriv_ind">
                                    <option data-display="Select">Please select</option>
                                    <option value="1">1</option>
                                    <option value="0" selected="selected">0</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_32">Excuting entity</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_32" name = "excuting_entity">
                                    <option data-display="NA">NA</option>
                                    <option value="213800IZX4SV7RCMNE25">213800IZX4SV7RCMNE25</option>
                                    <option value="2138007187UGEtOBY710">2138007187UGEtOBY710</option>
                                    <option value="25490022T8SZMUPAZM15">25490022T8SZMUPAZM15</option>
                                    <option value="25490030VHP330DMKT69">25490030VHP330DMKT69</option>
                                    <option value="2549003YGUN/4HYXE454">2549003YGUN/4HYXE454</option>
                                    <option value="2549007VITN8D0159J38">2549007VITN8D0159J38</option>
                                    <option value="254900¢XIT0JDKIHU681">254900¢XIT0JDKIHU681</option>
                                    <option value="254900NZQKE939N6BF95">254900NZQKE939N6BF95</option>
                                    <option value="254900]4GUMH2X2ZKR94">254900]4GUMH2X2ZKR94</option>
                                    <option value="2549003XW27PLB87UT53">2549003XW27PLB87UT53</option>
                                    <option value="254900L0RXIN1D4ZUY76">254900L0RXIN1D4ZUY76</option>
                                    <option value="254900MLZK6GJCJ7YQ75">254900MLZK6GJCJ7YQ75</option>
                                    <option value="254900MT7DC77WH5GE51">254900MT7DC77WH5GE51</option>
                                    <option value="2549000903AU0358LI06">2549000903AU0358LI06</option>
                                    <option value="254900SA4MUWBPPSVA28">254900SA4MUWBPPSVA28</option>
                                    <option value="254900WYTOSH5CMVKR91">254900WYTOSH5CMVKR91</option>
                                    <option value="254900716RVF4Z5V1A58">254900716RVF4Z5V1A58</option>
                                    <option value="54930016MQBB2N05NB47">54930016MQBB2N05NB47</option>
                                    <option value="549300247QDZHDI30A83">549300247QDZHDI30A83</option>
                                    <option value="5493002W420BT9C14552">5493002W420BT9C14552</option>
                                    <option value="549300440RDPODF3OG15">549300440RDPODF3OG15</option>
                                    <option value="54930046DYEYLX3RUR52">54930046DYEYLX3RUR52</option>
                                    <option value="5493004GZFY008YRNS98">5493004GZFY008YRNS98</option>
                                    <option value="5493007VY27WWF8FF542">5493007VY27WWF8FF542</option>
                                    <option value="549300CYJBF26U1AR886">549300CYJBF26U1AR886</option>
                                    <option value="549300DGSLALKOXQ4V30">549300DGSLALKOXQ4V30</option>
                                    <option value="549300DRD7CCI4121590">549300DRD7CCI4121590</option>
                                    <option value="5493003778G2QBI8KD48">5493003778G2QBI8KD48</option>
                                    <option value="549300JUM4009TZRX045">549300JUM4009TZRX045</option>
                                    <option value="549300LTA4EIL7Q64454">549300LTA4EIL7Q64454</option>
                                    <option value="549300MDYVVHJ8D1DW28">549300MDYVVHJ8D1DW28</option>
                                    <option value="549300MDYVVHJ8D1DW29">549300MDYVVHJ8D1DW29</option>
                                    <option value="549300MDYVVHJ8D1DW30">549300MDYVVHJ8D1DW30</option>
                                    <option value="549300MDYVVHJ8D1DW31">549300MDYVVHJ8D1DW31</option>
                                    <option value="549300MDYVVHJ8D1DW32">549300MDYVVHJ8D1DW32</option>
                                    <option value="549300MDYVVHJ8D1DW33">549300MDYVVHJ8D1DW33</option>
                                    <option value="549300MDYVVHJ8D1DW34">549300MDYVVHJ8D1DW34</option>
                                    <option value="549300MDYVVHJ8D1DW35">549300MDYVVHJ8D1DW35</option>
                                    <option value="549300MDYVVHJ8D1DW36">549300MDYVVHJ8D1DW36</option>
                                    <option value="549300MDYVVHJ8D1DW37">549300MDYVVHJ8D1DW37</option>
                                    <option value="549300MDYVVHJ8D1DW38">549300MDYVVHJ8D1DW38</option>
                                    <option value="549300MDYVVHJ8D1DW39">549300MDYVVHJ8D1DW39</option>
                                    <option value="549300MDYVVHJ8D1DW40">549300MDYVVHJ8D1DW40</option>
                                    <option value="549300MDYVVHJ8D1DW41">549300MDYVVHJ8D1DW41</option>
                                    <option value="549300MDYVVHJ8D1DW42">549300MDYVVHJ8D1DW42</option>
                                    <option value="549300MDYVVHJ8D1DW43">549300MDYVVHJ8D1DW43</option>
                                    <option value="549300MDYVVHJ8D1DW44">549300MDYVVHJ8D1DW44</option>
                                    <option value="549300MDYVVHJ8D1DW45">549300MDYVVHJ8D1DW45</option>
                                    <option value="549300MDYVVHJ8D1DW46">549300MDYVVHJ8D1DW46</option>
                                    <option value="549300MDYVVHJ8D1DW47">549300MDYVVHJ8D1DW47</option>
                                    <option value="549300MDYVVHJ8D1DW48">549300MDYVVHJ8D1DW48</option>
                                    <option value="549300MDYVVHJ8D1DW49">549300MDYVVHJ8D1DW49</option>
                                    <option value="549300MDYVVHJ8D1DW50">549300MDYVVHJ8D1DW50</option>
                                    <option value="549300MDYVVHJ8D1DW51">549300MDYVVHJ8D1DW51</option>
                                    <option value="549300MDYVVHJ8D1DW52">549300MDYVVHJ8D1DW52</option>
                                    <option value="549300MDYVVHJ8D1DW53">549300MDYVVHJ8D1DW53</option>
                                    <option value="549300MDYVVHJ8D1DW54">549300MDYVVHJ8D1DW54</option>
                                    <option value="549300MDYVVHJ8D1DW55">549300MDYVVHJ8D1DW55</option>
                                    <option value="549300MDYVVHJ8D1DW56">549300MDYVVHJ8D1DW56</option>
                                    <option value="549300MDYVVHJ8D1DW57">549300MDYVVHJ8D1DW57</option>
                                    <option value="549300MDYVVHJ8D1DW58">549300MDYVVHJ8D1DW58</option>
                                    <option value="549300MDYVVHJ8D1DW59">549300MDYVVHJ8D1DW59</option>
                                    <option value="549300MDYVVHJ8D1DW60">549300MDYVVHJ8D1DW60</option>
                                    <option value="549300MDYVVHJ8D1DW61">549300MDYVVHJ8D1DW61</option>
                                    <option value="549300MDYVVHJ8D1DW62">549300MDYVVHJ8D1DW62</option>
                                    <option value="549300MDYVVHJ8D1DW63">549300MDYVVHJ8D1DW63</option>
                                    <option value="549300MDYVVHJ8D1DW64">549300MDYVVHJ8D1DW64</option>
                                    <option value="549300MDYVVHJ8D1DW65">549300MDYVVHJ8D1DW65</option>
                                    <option value="549300MDYVVHJ8D1DW66">549300MDYVVHJ8D1DW66</option>
                                    <option value="549300MDYVVHJ8D1DW67">549300MDYVVHJ8D1DW67</option>
                                    <option value="549300MDYVVHJ8D1DW68">549300MDYVVHJ8D1DW68</option>
                                    <option value="549300MDYVVHJ8D1DW69">549300MDYVVHJ8D1DW69</option>
                                    <option value="549300MDYVVHJ8D1DW70">549300MDYVVHJ8D1DW70</option>
                                    <option value="549300MDYVVHJ8D1DW71">549300MDYVVHJ8D1DW71</option>
                                    <option value="549300MDYVVHJ8D1DW72">549300MDYVVHJ8D1DW72</option>
                                    <option value="549300MDYVVHJ8D1DW73">549300MDYVVHJ8D1DW73</option>
                                    <option value="549300MDYVVHJ8D1DW74">549300MDYVVHJ8D1DW74</option>
                                    <option value="549300MDYVVHJ8D1DW75">549300MDYVVHJ8D1DW75</option>
                                    <option value="549300MDYVVHJ8D1DW76">549300MDYVVHJ8D1DW76</option>
                                    <option value="549300MDYVVHJ8D1DW77">549300MDYVVHJ8D1DW77</option>
                                    <option value="549300MDYVVHJ8D1DW78">549300MDYVVHJ8D1DW78</option>
                                    <option value="549300MDYVVHJ8D1DW79">549300MDYVVHJ8D1DW79</option>
                                    <option value="549300MDYVVHJ8D1DW80">549300MDYVVHJ8D1DW80</option>
                                    <option value="549300MDYVVHJ8D1DW81">549300MDYVVHJ8D1DW81</option>
                                    <option value="549300MDYVVHJ8D1DW82">549300MDYVVHJ8D1DW82</option>
                                    <option value="549300MDYVVHJ8D1DW83">549300MDYVVHJ8D1DW83</option>
                                    <option value="549300MDYVVHJ8D1DW84">549300MDYVVHJ8D1DW84</option>
                                    <option value="549300MDYVVHJ8D1DW85">549300MDYVVHJ8D1DW85</option>
                                    <option value="549300MDYVVHJ8D1DW86">549300MDYVVHJ8D1DW86</option>
                                    <option value="549300MDYVVHJ8D1DW87">549300MDYVVHJ8D1DW87</option>
                                    <option value="549300MDYVVHJ8D1DW88">549300MDYVVHJ8D1DW88</option>
                                    <option value="549300MDYVVHJ8D1DW89">549300MDYVVHJ8D1DW89</option>
                                    <option value="549300MDYVVHJ8D1DW90">549300MDYVVHJ8D1DW90</option>
                                    <option value="549300MDYVVHJ8D1DW91">549300MDYVVHJ8D1DW91</option>
                                    <option value="549300MDYVVHJ8D1DW92">549300MDYVVHJ8D1DW92</option>
                                    <option value="549300MDYVVHJ8D1DW93">549300MDYVVHJ8D1DW93</option>
                                    <option value="549300MDYVVHJ8D1DW94">549300MDYVVHJ8D1DW94</option>
                                    <option value="549300MDYVVHJ8D1DW95">549300MDYVVHJ8D1DW95</option>
                                    <option value="549300MDYVVHJ8D1DW96">549300MDYVVHJ8D1DW96</option>
                                    <option value="549300MDYVVHJ8D1DW97">549300MDYVVHJ8D1DW97</option>
                                    <option value="549300MDYVVHJ8D1DW98">549300MDYVVHJ8D1DW98</option>
                                    <option value="549300MDYVVHJ8D1DW99">549300MDYVVHJ8D1DW99</option>
                                    <option value="549300MDYVVHJ8D1DW100">549300MDYVVHJ8D1DW100</option>
                                    <option value="549300MDYVVHJ8D1DW101">549300MDYVVHJ8D1DW101</option>
                                    <option value="549300MDYVVHJ8D1DW102">549300MDYVVHJ8D1DW102</option>
                                    <option value="549300MDYVVHJ8D1DW103">549300MDYVVHJ8D1DW103</option>
                                    <option value="549300MDYVVHJ8D1DW104">549300MDYVVHJ8D1DW104</option>
                                    <option value="549300MDYVVHJ8D1DW105">549300MDYVVHJ8D1DW105</option>
                                    <option value="549300MDYVVHJ8D1DW106">549300MDYVVHJ8D1DW106</option>
                                    <option value="549300MDYVVHJ8D1DW107">549300MDYVVHJ8D1DW107</option>
                                    <option value="549300MDYVVHJ8D1DW108">549300MDYVVHJ8D1DW108</option>
                                    <option value="549300MDYVVHJ8D1DW109">549300MDYVVHJ8D1DW109</option>
                                    <option value="549300MDYVVHJ8D1DW110">549300MDYVVHJ8D1DW110</option>
                                    <option value="549300MDYVVHJ8D1DW111">549300MDYVVHJ8D1DW111</option>
                                    <option value="549300MDYVVHJ8D1DW112">549300MDYVVHJ8D1DW112</option>
                                    <option value="549300MDYVVHJ8D1DW113">549300MDYVVHJ8D1DW113</option>
                                    <option value="549300MDYVVHJ8D1DW114">549300MDYVVHJ8D1DW114</option>
                                    <option value="549300MDYVVHJ8D1DW115">549300MDYVVHJ8D1DW115</option>
                                    <option value="549300MDYVVHJ8D1DW116">549300MDYVVHJ8D1DW116</option>
                                    <option value="549300MDYVVHJ8D1DW117">549300MDYVVHJ8D1DW117</option>
                                    <option value="549300MDYVVHJ8D1DW118">549300MDYVVHJ8D1DW118</option>
                                    <option value="549300MDYVVHJ8D1DW119">549300MDYVVHJ8D1DW119</option>
                                    <option value="549300MDYVVHJ8D1DW120">549300MDYVVHJ8D1DW120</option>
                                    <option value="549300MDYVVHJ8D1DW121">549300MDYVVHJ8D1DW121</option>
                                    <option value="549300MDYVVHJ8D1DW122">549300MDYVVHJ8D1DW122</option>
                                    <option value="549300MDYVVHJ8D1DW123">549300MDYVVHJ8D1DW123</option>
                                    <option value="549300MDYVVHJ8D1DW124">549300MDYVVHJ8D1DW124</option>
                                    <option value="549300MDYVVHJ8D1DW125">549300MDYVVHJ8D1DW125</option>
                                    <option value="549300MDYVVHJ8D1DW126">549300MDYVVHJ8D1DW126</option>
                                    <option value="549300MDYVVHJ8D1DW127">549300MDYVVHJ8D1DW127</option>
                                    <option value="549300MDYVVHJ8D1DW128">549300MDYVVHJ8D1DW128</option>
                                    <option value="549300MDYVVHJ8D1DW129">549300MDYVVHJ8D1DW129</option>
                                    <option value="549300MDYVVHJ8D1DW130">549300MDYVVHJ8D1DW130</option>
                                    <option value="549300MDYVVHJ8D1DW131">549300MDYVVHJ8D1DW131</option>
                                    <option value="549300MDYVVHJ8D1DW132">549300MDYVVHJ8D1DW132</option>
                                    <option value="549300MDYVVHJ8D1DW133">549300MDYVVHJ8D1DW133</option>
                                    <option value="549300MDYVVHJ8D1DW134">549300MDYVVHJ8D1DW134</option>
                                    <option value="549300MDYVVHJ8D1DW135">549300MDYVVHJ8D1DW135</option>
                                    <option value="549300MDYVVHJ8D1DW136">549300MDYVVHJ8D1DW136</option>
                                    <option value="54930001LQYCQ7G1IM57">54930001LQYCQ7G1IM57</option>
                                    <option value="549300P08UORMR8IFS20">549300P08UORMR8IFS20</option>
                                    <option value="549300Q00QU7BNARF391">549300Q00QU7BNARF391</option>
                                    <option value="549300Q9EATCGRJBFQ89">549300Q9EATCGRJBFQ89</option>
                                    <option value="549300QJE01B92LSHZ06">549300QJE01B92LSHZ06</option>
                                    <option value="549300R0Q58QYRNZLS10">549300R0Q58QYRNZLS10</option>
                                    <option value="549300RBHWW5EJIRG629">549300RBHWW5EJIRG629</option>
                                    <option value="549300RBM4G44LYTMM82">549300RBM4G44LYTMM82</option>
                                    <option value="549300RLNUU3GJS6MK84">549300RLNUU3GJS6MK84</option>
                                    <option value="549300SU7VZY2XMGCD79">549300SU7VZY2XMGCD79</option>
                                    <option value="549300U4J5NBE08DCV24">549300U4J5NBE08DCV24</option>
                                    <option value="549300V1V3MFDTT08Q77">549300V1V3MFDTT08Q77</option>
                                    <option value="549300VGE7QN15BPTZ72">549300VGE7QN15BPTZ72</option>
                                    <option value="549300VJGFAO55EWKF41">549300VJGFAO55EWKF41</option>
                                    <option value="549300W7CNYGJ68XGD27">549300W7CNYGJ68XGD27</option>
                                    <option value="549300WDT1HWUMTUW770">549300WDT1HWUMTUW770</option>
                                    <option value="549300WFGKTC3MGDCX95">549300WFGKTC3MGDCX95</option>
                                    <option value="549300XJESP6341F9L82">549300XJESP6341F9L82</option>
                                    <option value="549300YTOMKUNPUTB551">549300YTOMKUNPUTB551</option>
                                    <option value="549300Z02855WTVM0K61">549300Z02855WTVM0K61</option>
                                    <option value="NUXTG47HHHM1K2LOSG39">NUXTG47HHHM1K2LOSG39</option>
                                    <option value="RILF074KP1CM8P6PCT96">RILF074KP1CM8P6PCT96</option>
                                    <option value="U4LOSYZ7VGAW355F2G91">U4LOSYZ7VGAW355F2G91</option>
                                    <option value="X5AV1MBDXGRPX5UGMX13">X5AV1MBDXGRPX5UGMX13</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_33">Manual Replay Status</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_33" name = "manual_replay_status">
                                    <option data-display="Select">Please select</option>
                                    <option value="1">1</option>
                                    <option value="0" selected="selected">0</option>
                                  </select>
                                </div>
                              </div>
                            </div>
                            <div class="col-lg-6 mt-3">
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_34">Routing to</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_34" name = "routing_to">
                                    <option data-display="NA">NA</option>
                                    <option value="Bloomberg-APA">Bloomberg-APA</option>
                                    <option value="Bloomberg-APA|ORCID">Bloomberg-APA|ORCID</option>
                                    <option value="Bloomberg-APA|UnaVista">Bloomberg-APA|UnaVista</option>
                                    <option value="Bloomberg-APA|UnaVista|ORCID">Bloomberg-APA|UnaVista|ORCID</option>
                                    <option value="Nex-APA">Nex-APA</option>
                                    <option value="Nex-APA|ORCID">Nex-APA|ORCID</option>
                                    <option value="Nex-APA|UnaVista">Nex-APA|UnaVista</option>
                                    <option value="Nex-APA|UnaVista|ORCID">Nex-APA|UnaVista|ORCID</option>
                                    <option value="ORCID">ORCID</option>
                                    <option value="Tradeweb-APA-FCA|ORCID">Tradeweb-APA-FCA|ORCID</option>
                                    <option value="Tradeweb-APA-FCA|UnaVista|ORCID">Tradeweb-APA-FCA|UnaVista|ORCID</option>
                                    <option value="Tradeweb-APA|UnaVista|ORCID">Tradeweb-APA|UnaVista|ORCID</option>
                                    <option value="UnaVista">UnaVista</option>
                                    <option value="UnaVista-FCA|ORCID">UnaVista-FCA|ORCID</option>
                                    <option value="UnaVista-FCA|UnaVistb|ORCID">UnaVista-FCA|UnaVistb|ORCID</option>
                                    <option value="UnaVista|ORCID">UnaVista|ORCID</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_35">Routing to Purpose</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_43" name = "routing_to_purpose">
                                    <option data-display="NA">NA</option>
                                    <option value="ACR">ACR</option>
                                    <option value="BEAM">BEAM</option>
                                    <option value="BEAM|MiFIRARMReporting|MiFIRAPAReporting">BEAM|MiFIRARMReporting|MiFIRAPAReporting</option>
                                    <option value="BTS">BTS</option>
                                    <option value="DQMA">DQMA</option>
                                    <option value="EXCEPTION_TICKETING">EXCEPTION_TICKETING</option>
                                    <option value="GPTM">GPTM</option>
                                    <option value="GPTM|MiFTRARMReporting">GPTM|MiFTRARMReporting</option>
                                    <option value="GPIM|MiFIRARMReporting|MiFIRAPAReporting">GPIM|MiFIRARMReporting|MiFIRAPAReporting</option>
                                    <option value="ISIN_SERVICE">ISIN_SERVICE</option>
                                    <option value="ISIN_SERVICE|MiFIRAPAReporting">ISIN_SERVICE|MiFIRAPAReporting</option>
                                    <option value="ISIN_SERVICE|MiFIRARMReporting">ISIN_SERVICE|MiFIRARMReporting</option>
                                    <option value="ISIN_SERVICE|MiFIRARMReporting|MiFIRAPAReporting">ISIN_SERVICE|MiFIRARMReporting|MiFIRAPAReporting</option>
                                    <option value="ISIN_SERVICE|MiFIRARMReporting|MiFIRRTS23Reporting">ISIN_SERVICE|MiFIRARMReporting|MiFIRRTS23Reporting</option>
                                    <option value="ISIN_SERVICE|MiFIRRIS23Reporting">ISIN_SERVICE|MiFIRRIS23Reporting</option>
                                    <option value="ISIN_SERVICE|MiFIRRTS23Reporting|MiFIRARMReporting">ISIN_SERVICE|MiFIRRTS23Reporting|MiFIRARMReporting</option>
                                    <option value="KOFIA">KOFIA</option>
                                    <option value="MAR">MAR</option>
                                    <option value="MARGINMAN">MARGINMAN</option>
                                    <option value="MiFIRAPAReporting">MiFIRAPAReporting</option>
                                    <option value="MiFIRAPAReporting|EXCEPTION_TICKETING">MiFIRAPAReporting|EXCEPTION_TICKETING</option>
                                    <option value="MiFIRAPAReporting|ORCID">MiFIRAPAReporting|ORCID</option>
                                    <option value="MiFIRARMReporting">MiFIRARMReporting</option>
                                    <option value="MiFIRARMReporting|ACR">MiFIRARMReporting|ACR</option>
                                    <option value="MiFIRARMReporting|ACR|MiFIRAPAReporting">MiFIRARMReporting|ACR|MiFIRAPAReporting</option>
                                    <option value="MiFIRARMReporting|BTS">MiFIRARMReporting|BTS</option>
                                    <option value="MiFIRARMReporting|BTS|MiFIRAPAReporting">MiFIRARMReporting|BTS|MiFIRAPAReporting</option>
                                    <option value="MiFIRARMReporting|EXCEPTION_TICKETING">MiFIRARMReporting|EXCEPTION_TICKETING</option>
                                    <option value="MiFIRARMReporting|ISIN_SERVICE">MiFIRARMReporting|ISIN_SERVICE</option>
                                    <option value="MiFIRARMReporting|ISIN_SERVICE|MiFIRAPAReporting">MiFIRARMReporting|ISIN_SERVICE|MiFIRAPAReporting</option>
                                    <option value="MiFIRARMReporting|ISIN_SERVICE|MiEIRRTS23Reporting">MiFIRARMReporting|ISIN_SERVICE|MiEIRRTS23Reporting</option>
                                    <option value="MiFIRARMReporting|MiFIRAPAReporting">MiFIRARMReporting|MiFIRAPAReporting</option>
                                    <option value="MiFIRARMReporting|MiFIRAPAReporting|EXCEPTION_TICKETING">MiFIRARMReporting|MiFIRAPAReporting|EXCEPTION_TICKETING</option>
                                    <option value="MiFIRARMReporting|MiFIRAPAReporting|ORCID">MiFIRARMReporting|MiFIRAPAReporting|ORCID</option>
                                    <option value="MiFIRARMReporting|MiFIRRTS23Reporting|TL_Remediation">MiFIRARMReporting|MiFIRRTS23Reporting|TL_Remediation</option>
                                    <option value="MiFIRARMReporting|MiFIRRTS23Reporting|TradeLake">MiFIRARMReporting|MiFIRRTS23Reporting|TradeLake</option>
                                    <option value="MiFIRARMReporting|ORCID">MiFIRARMReporting|ORCID</option>
                                    <option value="MiFIRARMReporting|RATAN">MiFIRARMReporting|RATAN</option>
                                    <option value="MiFIRARMReporting|TL_Remediation">MiFIRARMReporting|TL_Remediation</option>
                                    <option value="MiFIRARMReporting|TradeLake">MiFIRARMReporting|TradeLake</option>
                                    <option value="MiFIRARMReporting|TradeLake|MiFIRAPAReporting">MiFIRARMReporting|TradeLake|MiFIRAPAReporting</option>
                                    <option value="MiFIRRTS23Reporting">MiFIRRTS23Reporting</option>
                                    <option value="MiFIRRTS23Reporting|ORCID">MiFIRRTS23Reporting|ORCID</option>
                                    <option value="ORCHID">ORCHID</option>
                                    <option value="ORCID">ORCID</option>
                                    <option value="RATAN">RATAN</option>
                                    <option value="RAZOR">RAZOR</option>
                                    <option value="RAZOR|MiFIRARMReporting">RAZOR|MiFIRARMReporting</option>
                                    <option value="RAZOR|MiFIRARMReporting|MiFIRAPAReporting">RAZOR|MiFIRARMReporting|MiFIRAPAReporting</option>
                                    <option value="SFTRTransactionReporting">SFTRTransactionReporting</option>
                                    <option value="SFTRTransactionReporting|EXCEPTION_TICKETING">SFTRTransactionReporting|EXCEPTION_TICKETING</option>
                                    <option value="SFTRTransactionReporting|GPTM">SFTRTransactionReporting|GPTM</option>
                                    <option value="SFTRTransactionReporting|ISIN_SERVICE">SFTRTransactionReporting|ISIN_SERVICE</option>
                                    <option value="SFTRTransactionReporting|MARTINI">SFTRTransactionReporting|MARTINI</option>
                                    <option value="SFTRTransactionReporting|MiFIRARMReporting">SFTRTransactionReporting|MiFIRARMReporting</option>
                                    <option value="SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting">SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting</option>
                                    <option value="SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting|EXCEPTION_TICKETIN">SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting|EXCEPTION_TICKETIN</option>
                                    <option value="SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting|ORCID">SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting|ORCID</option>
                                    <option value="SFTRTransactionReporting|MiFIRARMReporting|ORCID">SFTRTransactionReporting|MiFIRARMReporting|ORCID</option>
                                    <option value="SFTRTransactionReporting|ORCID">SFTRTransactionReporting|ORCID</option>
                                    <option value="SFTRTransactionReporting|TL_SCBML_ENHANCER">SFTRTransactionReporting|TL_SCBML_ENHANCER</option>
                                    <option value="SFTRTransactionReporting|TL_SCBML_ENHANCER|MiFIRARMReporting">SFTRTransactionReporting|TL_SCBML_ENHANCER|MiFIRARMReporting</option>
                                    <option value="SFTRTransactionReporting|TL_SCEML_ENHANCER|MiFIRARNReporting|NiFIRAPAReporting">SFTRTransactionReporting|TL_SCEML_ENHANCER|MiFIRARNReporting|NiFIRAPAReporting</option>
                                    <option value="SHARK">SHARK</option>
                                    <option value="SHARK|MiFIRAPAReporting">SHARK|MiFIRAPAReporting</option>
                                    <option value="SHARK|MiFIRARMReporting">SHARK|MiFIRARMReporting</option>
                                    <option value="SHARK|MiFIRARMReporting|MiFIRAPAReporting">SHARK|MiFIRARMReporting|MiFIRAPAReporting</option>
                                    <option value="TDS2">TDS2</option>
                                    <option value="TDS2|MiFIRARMReporting">TDS2|MiFIRARMReporting</option>
                                    <option value="TDS2|MiFIRARMReporting|MiFIRAPAReporting">TDS2|MiFIRARMReporting|MiFIRAPAReporting</option>
                                    <option value="TL_REMEDIATION">TL_REMEDIATION</option>
                                    <option value="TL_REMEDIATION|MiFIRAPAReporting">TL_REMEDIATION|MiFIRAPAReporting</option>
                                    <option value="TL_REMEDIATION|MiFIRMPAReporting">TL_REMEDIATION|MiFIRMPAReporting</option>
                                    <option value="TL_REMEDIATION|MiFIRMPAReporting|MiFIRAPAReporting">TL_REMEDIATION|MiFIRMPAReporting|MiFIRAPAReporting</option>
                                    <option value="TL_REMEDIATION|MiFIRMPAReporting|MiFIRRTS23Reporting">TL_REMEDIATION|MiFIRMPAReporting|MiFIRRTS23Reporting</option>
                                    <option value="TL_REMEDIATION|MiFIRRTS23Reporting">TL_REMEDIATION|MiFIRRTS23Reporting</option>
                                    <option value="TL_REMEDIATION|SFTRTransactionReporting">TL_REMEDIATION|SFTRTransactionReporting</option>
                                    <option value="TL_REMEDIATION|SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting">TL_REMEDIATION|SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting</option>
                                    <option value="TL_SCBML_ENHANCER">TL_SCBML_ENHANCER</option>
                                    <option value="TL_SCBML_ENHANCER|MiFIRARMReporting">TL_SCBML_ENHANCER|MiFIRARMReporting</option>
                                    <option value="TL_SCBML_ENHANCER|MiFIRARMReporting|MiFIRAPAReporting">TL_SCBML_ENHANCER|MiFIRARMReporting|MiFIRAPAReporting</option>
                                    <option value="TRUST">TRUST</option>
                                    <option value="TRUST2">TRUST2</option>
                                    <option value="TRUST2|MiFIRARMReporting">TRUST2|MiFIRARMReporting</option>
                                    <option value="TRUST2|MiFIRARMReporting|MiFIRRTS23Reporting">TRUST2|MiFIRARMReporting|MiFIRRTS23Reporting</option>
                                    <option value="TradeLake">Trade Lake</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_36">Reason Code</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_36" name = "reason_code">
                                    <option data-display="NA">NA</option>
                                    <option value="CON">CON</option>
                                    <option value="fl:FCA:SC:INFO">fl : FCA : SC : INFO</option>
                                    <option value="fl:SFRT:SC:INFO">fl : SFRT : SC : INFO</option>
                                    <option value="fl:SFRT:SC:NRR">fl : SFRT : SC : NRR</option>
                                    <option value="fl:SFRT:TR:NRR">fl : SFRT : TR : NRR</option>
                                    <option value="fl:MiFIR:RTS23:SC:NRR">fl : MiFIR : RTS23 : SC : NRR</option>
                                    <option value="fl:MiFIR:CPR:SC:NRR">fl : MiFIR : CPR : SC : NRR</option>
                                    <option value="fl:MiFIR:APA:SC:NRR">fl : MiFIR : APA : SC : NRR</option>
                                    <option value="fl:MiFIR:APM:SC:NRR">fl : MiFIR : APM : SC : NRR</option>
                                    <option value="fl:MiFIR:ARM:SC:NRR">fl : MiFIR : ARM : SC : NRR</option>
                                    <option value="fl:MiFIR:APM:SC:WARN">fl : MiFIR : APM : SC : WARN</option>
                                    <option value="tl:MiFIR:GEN">tl : MiFIR : GEN</option>
                                    <option value="tl:SFRT:GEN">tl : SFRT : GEN</option>
                                    <option value="tl:SFRT:NRR">tl : SFRT : NRR</option>
                                    <option value="rr:GEN:WARN">rr : GEN : WARN</option>
                                    <option value="rr:MiFIR:WARN">rr : MiFIR : WARN</option>
                                    <option value="cr:MiFIR:ARM">cr : MiFIR : ARM</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Please select a one.
                                  </div>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_37">Emum Value</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_37" name = "enum_value">
                                    <option data-display="NA">NA</option>
                                    <option value="AssetControlResult">AssetControlResult</option>
                                    <option value="BloombergResponse">BloombergResponse</option>
                                    <option value="CUPIDResult">CUPIDResult</option>
                                    <option value="CUPIDResult_ERROR">CUPIDResult_ERROR</option>
                                    <option value="CorrectedReporting">CorrectedReporting</option>
                                    <option value="DefaultReporting">DefaultReporting</option>
                                    <option value="Eligibility_APA">Eligibility_APA</option>
                                    <option value="Eligibility_ARM">Eligibility_ARM</option>
                                    <option value="Eligibility_CPR">Eligibility_CPR</option>
                                    <option value="Eligibility_RTS23">Eligibility_RTS23</option>
                                    <option value="Eligibility_SFTR">Eligibility_SFTR</option>
                                    <option value="Information_ARM">Information_ARM</option>
                                    <option value="Information_GEN">Information_GEN</option>
                                    <option value="Information_SFTR">Information_SFTR</option>
                                    <option value="InsideTrackActionFlag">InsideTrackActionFlag</option>
                                    <option value="MaskedReporting">MaskedReporting</option>
                                    <option value="NCAResponse">NCAResponse</option>
                                    <option value="NexResponse">NexResponse</option>
                                    <option value="RegRulesResult">RegRulesResult</option>
                                    <option value="RegRulesResult_APA">RegRulesResult_APA</option>
                                    <option value="RegRulesResult_APA_ERROR">RegRulesResult_APA_ERROR</option>
                                    <option value="RegRulesResult_ARM">RegRulesResult_ARM</option>
                                    <option value="RegRulesResult_ARM_ERROR">RegRulesResult_ARM_ERROR</option>
                                    <option value="RegRulesResult_CPR">RegRulesResult_CPR</option>
                                    <option value="RegRulesResult_CPR_ERROR">RegRulesResult_CPR_ERROR</option>
                                    <option value="RegRulesResult_RTS23">RegRulesResult_RTS23</option>
                                    <option value="RegRulesResult_RTS23_ERROR">RegRulesResult_RTS23_ERROR</option>
                                    <option value="RegRulesResult_Regime">RegRulesResult_Regime</option>
                                    <option value="RegRulesResult_SFTR_Backloading_Population">RegRulesResult_SFTR_Backloading_Population</option>
                                    <option value="RegRulesResult_SFTR_Collateral_Update_Reporting_Eligibility">RegRulesResult_SFTR_Collateral_Update_Reporting_Eligibility</option>
                                    <option value="RegRulesResult_SFTR_Data_Masking">RegRulesResult_SFTR_Data_Masking</option>
                                    <option value="RegRulesResult_SFTR_Data_Masking_ERROR">RegRulesResult_SFTR_Data_Masking_ERROR</option>
                                    <option value="RegRulesResult_SFTR_Transaction_Reporting_Eligibility">RegRulesResult_SFTR_Transaction_Reporting_Eligibility</option>
                                    <option value="RegRulesResult_SFTR_Transaction_Reporting_Eligibility_ERROR">RegRulesResult_SFTR_Transaction_Reporting_Eligibility_ERROR</option>
                                    <option value="RegRulesResult_SFTR_Valuation_Reporting_Eligibility">RegRulesResult_SFTR_Valuation_Reporting_Eligibility</option>
                                    <option value="TDS3Exception">TDS3Exception</option>
                                    <option value="TRADEWEBResponse">TRADEWEBResponse</option>
                                    <option value="UnavistaRTS23Response">UnavistaRTS23Response</option>
                                    <option value="UnavistaResponse">UnavistaResponse</option>
                                    <option value="UnavistaSFTRResponse">UnavistaSFTRResponse</option>
                                    <option value="WISEResult">WISEResult</option>
                                    <option value="Warning">Warning</option>
                                    <option value="errorReason_APA">errorReason_APA</option>
                                    <option value="errorReason_ARM">errorReason_ARM</option>
                                    <option value="errorReason_CPR">errorReason_CPR</option>
                                    <option value="errorReason_GEN">errorReason_GEN</option>
                                    <option value="errorReason_RTS23">errorReason_RTS23</option>
                                    <option value="errorReason_SFTR">errorReason_SFTR</option>
                                    <option value="notReportedReason">notReportedReason</option>
                                    <option value="notReportedReason_SFTR">notReportedReason_SFTR</option>
                                    <option value="notRequired_APA">notRequired_APA</option>
                                    <option value="notRequired_ARM">notRequired_ARM</option>
                                    <option value="notRequired_CPR">notRequired_CPR</option>
                                    <option value="notRequired_GEN">notRequired_GEN</option>
                                    <option value="notRequired_PCR">notRequired_PCR</option>
                                    <option value="notRequired_RTS23">notRequired_RTS23</option>
                                    <option value="notRequired_SFTR">notRequired_SFTR</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_38">WM Flag</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_38" name = "wm_flag">
                                    <option data-display="NA">NA</option>
                                    <option value="YES">YES</option>
                                    <option value="NO">NO</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_39">Reg Rules Response</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_39" name = "reg_rules_response">
                                    <option data-display="Select">Please select</option>
                                    <option value="YES">YES</option>
                                    <option value="NO">NO</option>
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
                                <label class="col-lg-4 col-form-label" for="trade_info_40">Arm Eligible Flag</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_40" name = "arm_eligible_flag">
                                    <option data-display="NA">NA</option>
                                    <option value="YES">YES</option>
                                    <option value="NO">NO</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_41">Arm Eligibility Reg Rules</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_41" name = "arm_eligibility_reg_rules">
                                    <option data-display="NA">NA</option>
                                    <option value="YES">YES</option>
                                    <option value="NO">NO</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_42">Apa Eligible Flag</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_42" name = "apa_eligible_flag">
                                    <option data-display="Select">Please select</option>
                                    <option value="YES">YES</option>
                                    <option value="NO">NO</option>
                                    <option value="NA">NA</option>
                                  </select>
                                </div>
                              </div>
                            </div>
                            <div class="col-lg-6 mt-3">
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_43">Apa Eligibility Reg Rules</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_43" name = "apa_eligibility_reg_rules">
                                    <option data-display="NA">NA</option>
                                    <option value="YES">YES</option>
                                    <option value="NO">NO</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_44">Rts23 Eligible Flag</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_44" name = "rts23_eligible_flag">
                                    <option data-display="NA">NA</option>
                                    <option value="YES">YES</option>
                                    <option value="NO">NO</option>
                                  </select>
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label class="col-lg-4 col-form-label" for="trade_info_45">Rts23 Eligibility Reg Rules</label>
                                <div class="col-lg-6">
                                  <select class="default-select wide form-control" id="trade_info_45" name = "rts23_eligibility_reg_rules">
                                    <option data-display="NA">NA</option>
                                    <option value="YES">YES</option>
                                    <option value="NO">NO</option>
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