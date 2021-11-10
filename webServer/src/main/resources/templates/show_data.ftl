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
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <#list tradeList as trade>
                                            <tr>
                                                <td>${trade.trade_id}</td>
                                                <td>${trade.trade_date}</td>
                                                <td>${trade.primary_asset_class}</td>
                                                <td>
                                                    <div class="d-flex">
                                                        <a data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg_${trade.trade_id}_update" type="button" class="btn btn-warning shadow btn-xs sharp me-1"><i class="fas fa-cog"></i></a>
                                                        <a data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg_${trade.trade_id}_detail" type="button" class="btn btn-primary shadow btn-xs sharp me-1"><i class="fas fa-search"></i></a>
                                                        <a class="btn btn-danger shadow btn-xs sharp btn-warning" href="./deleteTradeById.do?trade_id=${trade.trade_id}"><i class="fa fa-trash"></i></a>
                                                        <div class="modal fade bd-example-modal-lg_${trade.trade_id}_update" role="dialog" aria-hidden="true">
                                                            <div class="modal-dialog modal-lg">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title">Trade Detail</h5>
                                                                        <button type="button" class="btn-close" data-bs-dismiss="modal">
                                                                        </button>
                                                                    </div>
                                                                    <form class="needs-validation tab-content" action="/tradeSubmit.do">
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
                                                                                            <select class="default-select wide form-control" id="trade_info_01" name = "primary_asset_class">
                                                                                                <option <#if (trade.primary_asset_class?string == 'Equity')>selected="selected"</#if> value="Equity">Equity</option>
                                                                                                <option <#if (trade.primary_asset_class?string == 'FixedIncome')>selected="selected"</#if> value="FixedIncome">Fixed Income</option>
                                                                                                <option <#if (trade.primary_asset_class?string == 'Credit')>selected="selected"</#if> value="Credit">Credit</option>
                                                                                                <option <#if (trade.primary_asset_class?string == 'MoneyMarket')>selected="selected"</#if> value="MoneyMarket">Money Market</option>
                                                                                                <option <#if (trade.primary_asset_class?string == 'InterestRate')>selected="selected"</#if> value="InterestRate">Interest Rate</option>
                                                                                                <option <#if (trade.primary_asset_class?string == 'ForeignExchange')>selected="selected"</#if> value="ForeignExchange">Foreign Exchange</option>
                                                                                                <option <#if (trade.primary_asset_class?string == 'Unclassified')>selected="selected"</#if> value="Unclassified">Unclassified</option>
                                                                                                <option <#if (trade.primary_asset_class?string == 'Commodity')>selected="selected"</#if> value="Commodity">Commodity</option>
                                                                                                <option <#if (trade.primary_asset_class?string == 'SecuritiesFinance')>selected="selected"</#if> value="SecuritiesFinance">Securities Finance</option>
                                                                                                <option <#if (trade.primary_asset_class?string == 'ExchangeTraded')>selected="selected"</#if> value="ExchangeTraded">Exchange Traded</option>
                                                                                                <option <#if (trade.primary_asset_class?string == 'CrossAsset')>selected="selected"</#if> value="CrossAsset">Cross Asset</option>
                                                                                                <option <#if (trade.primary_asset_class?string == '')>selected="selected"</#if> value="NA">NA</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Product</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="form-control default-select wide" id="trade_info_02" name = "product" >
                                                                                                <option <#if (trade.product?string == 'CRDI_USD_3M')>selected="selected"</#if> value="CRDI_USD_3M">CRDI USD 3M</option>
                                                                                                <option <#if (trade.product?string == 'CRDI_USD_3M_V2')>selected="selected"</#if> value="CRDI_USD_3M_V2">CRDI USD 3M V2</option>
                                                                                                <option <#if (trade.product?string == 'Commodity::Swap:Cash')>selected="selected"</#if> value="Commodity::Swap:Cash">Commodity : : Swap : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Agricultural:Softs:Exotic')>selected="selected"</#if> value="Commodity:Agricultural:Softs:Exotic">Commodity : Agricultural : Softs : Exotic</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Agricultural:Softs:Option:Cash')>selected="selected"</#if> value="Commodity:Agricultural:Softs:Option:Cash">Commodity : Agricultural : Softs : Option : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Agricultural:Softs:Option:Cash:Cleared')>selected="selected"</#if> value="Commodity:Agricultural:Softs:Option:Cash:Cleared">Commodity : Agricultural : Softs : Option : Cash : Cleared</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Agricultural:Softs:SpotFwd:Cash')>selected="selected"</#if> value="Commodity:Agricultural:Softs:SpotFwd:Cash">Commodity : Agricultural : Softs : SpotFwd : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Agricultural:Softs:Swap:Cash')>selected="selected"</#if> value="Commodity:Agricultural:Softs:Swap:Cash">Commodity : Agricultural : Softs : Swap : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Agricultural:Softs:Swap:Physical')>selected="selected"</#if> value="Commodity:Agricultural:Softs:Swap:Physical">Commodity : Agricultural : Softs : Swap : Physical</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Energy:InterEnergy:Option:Cash')>selected="selected"</#if> value="Commodity:Energy:InterEnergy:Option:Cash">Commodity : Energy : InterEnergy : Option : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Energy:NatGas:Option:Cash')>selected="selected"</#if> value="Commodity:Energy:NatGas:Option:Cash">Commodity : Energy : NatGas : Option : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Energy:NatGas:Swap:Cash')>selected="selected"</#if> value="Commodity:Energy:NatGas:Swap:Cash">Commodity : Energy : NatGas : Swap : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Energy:NatGas:SpotFwd:Cash')>selected="selected"</#if> value="Commodity:Energy:NatGas:SpotFwd:Cash">Commodity : Energy : NatGas : SpotFwd : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Energy:Oil:Exotic')>selected="selected"</#if> value="Commodity:Energy:Oil:Exotic">Commodity : Energy : Oil : Exotic</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Energy:Oil:Option:Cash')>selected="selected"</#if> value="Commodity:Energy:Oil:Option:Cash">Commodity : Energy : Oil : Option : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Energy:Oil:Option:Cash:Cleared')>selected="selected"</#if> value="Commodity:Energy:Oil:Option:Cash:Cleared">Commodity : Energy : Oil : Option : Cash : Cleared</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Energy:Oil:SpotFwd:Cash')>selected="selected"</#if> value="Commodity:Energy:Oil:SpotFwd:Cash">Commodity : EnergyOil : SpotFwd : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Energy:Oil:Swap:Cash')>selected="selected"</#if> value="Commodity:Energy:Oil:Swap:Cash">Commodity : Energy : Oil : Swap : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Environmental:Emissions:SpotFwd:Cash')>selected="selected"</#if> value="Commodity:Environmental:Emissions:SpotFwd:Cash">Commodity : Environmental : Emissions : SpotFwd : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Environmental:Emissions:SpotFwd:Physical')>selected="selected"</#if> value="Commodity:Environmental:Emissions:SpotFwd:Physical">Commodity : Environmental : Emissions : SpotFwd : Physical</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Environmental:Emissions:Swap:Cash')>selected="selected"</#if> value="Commodity:Environmental:Emissions:Swap:Cash">Commodity : Environmental : Emissions : Swap : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Environmental:Emissions:Swap:Physical')>selected="selected"</#if> value="Commodity:Environmental:Emissions:Swap:Physical">Commodity : Environmental : Emissions : Swap : Physical</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Metals:NonPrecious:Exotic')>selected="selected"</#if> value="Commodity:Metals:NonPrecious:Exotic">Commodity : Metals : NonPrecious : Exotic</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Metals:NonPrecious:Option:Cash')>selected="selected"</#if> value="Commodity:Metals:NonPrecious:Option:Cash">Commodity : Metals : NonPrecious : Option : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Metals:NonPrecious:Option:Cash:Cleared')>selected="selected"</#if> value="Commodity:Metals:NonPrecious:Option:Cash:Cleared">Commodity : Metals : NonPrecious : Option : Cash : Cleared</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Metals:NonPrecious:SpotFwd:Cash')>selected="selected"</#if> value="Commodity:Metals:NonPrecious:SpotFwd:Cash">Commodity : Metals : NonPrecious : SpotFwd : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Metals:NonPrecious:Swap:Cash')>selected="selected"</#if> value="Commodity:Metals:NonPrecious:Swap:Cash">Commodity : Metals : NonPrecious : Swap : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Metals:Precious:Exotic')>selected="selected"</#if> value="Commodity:Metals:Precious:Exotic">Commodity : Metals : Precious : Exotic</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Metals:Precious:Option:Cash')>selected="selected"</#if> value="Commodity:Metals:Precious:Option:Cash">Commodity : Metals : Precious : Option : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Metals:Precious:Option:Physical')>selected="selected"</#if> value="Commodity:Metals:Precious:Option:Physical">Commodity : Metals : Precious : Option : Physical</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Metals:Precious:SpotFwd:Cash')>selected="selected"</#if> value="Commodity:Metals:Precious:SpotFwd:Cash">Commodity : Metals : Precious : SpotFwd : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Metals:Precious:SpotFwd:Physical')>selected="selected"</#if> value="Commodity:Metals:Precious:SpotFwd:Physical">Commodity : Metals : Precious : SpotFwd : Physical</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Metals:Precious:Swap:Cash')>selected="selected"</#if> value="Commodity:Metals:Precious:Swap:Cash">Commodity : Metals : Precious : Swap : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:Metals:Precious:Swap:Physical')>selected="selected"</#if> value="Commodity:Metals:Precious:Swap:Physical">Commodity : Metals : Precious : Swap : Physical</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:MultiCommodityExotic')>selected="selected"</#if> value="Commodity:MultiCommodityExotic">Commodity : MultiCommodityExotic</option>
                                                                                                <option <#if (trade.product?string == 'Commodity:undefined:Swap:Cash')>selected="selected"</#if> value="Commodity:undefined:Swap:Cash">Commodity : undefined : Swap : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Credit:Exotic:Other')>selected="selected"</#if> value="Credit:Exotic:Other">Credit : Exotic : Other</option>
                                                                                                <option <#if (trade.product?string == 'Credit:Index:CDX:CDXEmergingMarkets')>selected="selected"</#if> value="Credit:Index:CDX:CDXEmergingMarkets">Credit : Index : CDX : CDXEmergingMarkets</option>
                                                                                                <option <#if (trade.product?string == 'Credit:Index:CDX:CDXIG')>selected="selected"</#if> value="Credit:Index:CDX:CDXIG">Credit : Index : CDX : CDXIG</option>
                                                                                                <option <#if (trade.product?string == 'Credit:Index:LCDX:LCDX')>selected="selected"</#if> value="Credit:Index:LCDX:LCDX">Credit : Index : LCDX : LCDX</option>
                                                                                                <option <#if (trade.product?string == 'Credit:Index:iTraxx:iTraxxAsiaExJapan')>selected="selected"</#if> value="Credit:Index:iTraxx:iTraxxAsiaExJapan">Credit : Index : iTraxx : iTraxxAsiaExJapan</option>
                                                                                                <option <#if (trade.product?string == 'Credit:Index:iTraxxAustralia')>selected="selected"</#if> value="Credit:Index:iTraxxAustralia">Credit : Index : iTraxxAustralia</option>
                                                                                                <option <#if (trade.product?string == 'Credit:Index:iTraxx:iTraxxEurope')>selected="selected"</#if> value="Credit:Index:iTraxx:iTraxxEurope">Credit : Index : iTraxx : iTraxxEurope</option>
                                                                                                <option <#if (trade.product?string == 'Credit:Index:iTraxx:iTraxxSovX')>selected="selected"</#if> value="Credit:Index:iTraxx:iTraxxSovX">Credit : Index : iTraxx : iTraxxSovX</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Corporate:NorthAmericanCorporate')>selected="selected"</#if> value="Credit:SingleName:Corporate:NorthAmericanCorporate">SingleName : Corporate : NorthAmericanCorporate</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Corporate:StandardAsiaCorporate')>selected="selected"</#if> value="Credit:SingleName:Corporate:StandardAsiaCorporate">Credit : SingleName : Corporate : StandardAsiaCorporate</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleNameCorporate:StandardAustraliaCorporate')>selected="selected"</#if> value="Credit:SingleNameCorporate:StandardAustraliaCorporate">Credit : SingleNameCorporate : StandardAustraliaCorporate</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Corporate:StandardEmergingEuropeanCorporate')>selected="selected"</#if> value="Credit:SingleName:Corporate:StandardEmergingEuropeanCorporate">Credit : SingleName : Corporate : StandardEmergingEuropeanCorporate</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Corporate:StandardEuropeanCorporate')>selected="selected"</#if> value="Credit:SingleName:Corporate:StandardEuropeanCorporate">Credit : SingleName : Corporate : StandardEuropeanCorporate</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Corporate:StandardJapanCorporate')>selected="selected"</#if> value="Credit:SingleName:Corporate:StandardJapanCorporate">Credit : SingleName : Corporate : StandardJapanCorporate</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Corporate:StandardNorthAmericanCorporate')>selected="selected"</#if> value="Credit:SingleName:Corporate:StandardNorthAmericanCorporate">Credit : SingleName : Corporate : StandardNorthAmericanCorporate</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Corporate:StandardSingaporeCorporate')>selected="selected"</#if> value="Credit:SingleName:Corporate:StandardSingaporeCorporate">Credit : SingleName : Corporate : StandardSingaporeCorporate</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Loans:LCDS')>selected="selected"</#if> value="Credit:SingleName:Loans:LCDS">Credit : SingleName : Loans : LCDS</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Sovereign:AsiaSovereign')>selected="selected"</#if> value="Credit:SingleName:Sovereign:AsiaSovereign">Credit : SingleName : Sovereign : AsiaSovereign</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Sovereign:EmergingEuropeanAndMiddleEasternSovereign')>selected="selected"</#if> value="Credit:SingleName:Sovereign:EmergingEuropeanAndMiddleEasternSovereign">Credit : SingleName : Sovereign : EmergingEuropeanAndMiddleEasternSovereign</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Sovereign:LatinAmericaSovereign')>selected="selected"</#if> value="Credit:SingleName:Sovereign:LatinAmericaSovereign">Credit : SingleName : Sovereign : LatinAmericaSovereign</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Sovereign:StandardAsiaSovereign')>selected="selected"</#if> value="Credit:SingleName:Sovereign:StandardAsiaSovereign">Credit : SingleName : Sovereign : StandardAsiaSovereign</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Sovereign:StandardAustraliaSovereign')>selected="selected"</#if> value="Credit:SingleName:Sovereign:StandardAustraliaSovereign">Credit : SingleName : Sovereign : StandardAustraliaSovereign</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Sovereign:StandardEmergingEuropeanAndMiddleEasternSovereign')>selected="selected"</#if> value="Credit:SingleName:Sovereign:StandardEmergingEuropeanAndMiddleEasternSovereign">Credit : SingleName : Sovereign : StandardEmergingEuropeanAndMiddleEasternSovereign</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Sovereign:StandardLatinAmericaSovereign')>selected="selected"</#if> value="Credit:SingleName:Sovereign:StandardLatinAmericaSovereign">Credit : SingleName : Sovereign : StandardLatinAmericaSovereign</option>
                                                                                                <option <#if (trade.product?string == 'Credit:SingleName:Sovereign:StandardWesternEuropeanSovereign')>selected="selected"</#if> value="Credit:SingleName:Sovereign:StandardWesternEuropeanSovereign">Credit : SingleName : Sovereign : StandardWesternEuropeanSovereign</option>
                                                                                                <option <#if (trade.product?string == 'Credit:Swaptions:Corporate:CDSSwaption')>selected="selected"</#if> value="Credit:Swaptions:Corporate:CDSSwaption">Credit : Swaptions : Corporate : CDSSwaption</option>
                                                                                                <option <#if (trade.product?string == 'Credit:TotalReturnSwap')>selected="selected"</#if> value="Credit:TotalReturnSwap">Credit : TotalReturnSwap</option>
                                                                                                <option <#if (trade.product?string == 'Equity:Cash')>selected="selected"</#if> value="Equity:Cash">Equity : Cash</option>
                                                                                                <option <#if (trade.product?string == 'Equity:Option:PriceReturnBasicPerformance:SingleIndex')>selected="selected"</#if> value="Equity:Option:PriceReturnBasicPerformance:SingleIndex">Equity : Option : PriceReturnBasicPerformance : SingleIndex</option>
                                                                                                <option <#if (trade.product?string == 'Equity:Option:PriceReturnBasicPerformance:SingleName')>selected="selected"</#if> value="Equity:Option:PriceReturnBasicPerformance:SingleName">Equity : Option : PriceReturnBasicPerformance : SingleName</option>
                                                                                                <option <#if (trade.product?string == 'Equity:Other')>selected="selected"</#if> value="Equity:Other">Equity : Other</option>
                                                                                                <option <#if (trade.product?string == 'Equity:Swap:PriceReturnBasicPerformance:Basket')>selected="selected"</#if> value="Equity:Swap:PriceReturnBasicPerformance:Basket">Equity : Swap : PriceReturnBasicPerformance : Basket</option>
                                                                                                <option <#if (trade.product?string == 'Equity:Swap:PriceReturnBasicPerformance:SingleIndex')>selected="selected"</#if> value="Equity:Swap:PriceReturnBasicPerformance:SingleIndex">Equity : Swap : PriceReturnBasicPerformance : SingleIndex</option>
                                                                                                <option <#if (trade.product?string == 'Equity:Swap:PriceReturnBasicPerformance:SingleName')>selected="selected"</#if> value="Equity:Swap:PriceReturnBasicPerformance:SingleName">Equity : Swap : PriceReturnBasicPerformance : SingleName</option>
                                                                                                <option <#if (trade.product?string == 'ExchangeTraded:Future:Commodit')>selected="selected"</#if> value="ExchangeTraded:Future:Commodit">ExchangeTraded : Future : Commodit</option>
                                                                                                <option <#if (trade.product?string == 'ExchangeTraded:Future:Equity')>selected="selected"</#if> value="ExchangeTraded:Future:Equity">ExchangeTraded : Future : Equity</option>
                                                                                                <option <#if (trade.product?string == 'ExchangeTraded:Future:FX')>selected="selected"</#if> value="ExchangeTraded:Future:FX">ExchangeTraded : Future : FX</option>
                                                                                                <option <#if (trade.product?string == 'ExchangeTraded:Future:InterestRate')>selected="selected"</#if> value="ExchangeTraded:Future:InterestRate">ExchangeTraded : Future : InterestRate</option>
                                                                                                <option <#if (trade.product?string == 'ExchangeTraded:Option:Commodity')>selected="selected"</#if> value="ExchangeTraded:Option:Commodity">ExchangeTraded : Option : Commodity</option>
                                                                                                <option <#if (trade.product?string == 'ExchangeTraded:Option:FX')>selected="selected"</#if> value="ExchangeTraded:Option:FX">ExchangeTraded : Option : FX</option>
                                                                                                <option <#if (trade.product?string == 'ExchangeTraded:Option:InterestRate')>selected="selected"</#if> value="ExchangeTraded:Option:InterestRate">ExchangeTraded : Option : InterestRate</option>
                                                                                                <option <#if (trade.product?string == 'FixedIncome:Bond')>selected="selected"</#if> value="FixedIncome:Bond">FixedIncome : Bond</option>
                                                                                                <option <#if (trade.product?string == 'ForeignExchange:ComplexExotic')>selected="selected"</#if> value="ForeignExchange:ComplexExotic">ForeignExchange : ComplexExotic</option>
                                                                                                <option <#if (trade.product?string == 'ForeignExchange:DualCurrencyDeposit')>selected="selected"</#if> value="ForeignExchange:DualCurrencyDeposit">ForeignExchange : DualCurrencyDeposit</option>
                                                                                                <option <#if (trade.product?string == 'ForeignExchange:Forward')>selected="selected"</#if> value="ForeignExchange:Forward">ForeignExchange : Forward</option>
                                                                                                <option <#if (trade.product?string == 'ForeignExchange:NDF')>selected="selected"</#if> value="ForeignExchange:NDF">ForeignExchange : NDF</option>
                                                                                                <option <#if (trade.product?string == 'ForeignExchange:NDO')>selected="selected"</#if> value="ForeignExchange:NDO">ForeignExchange : NDO</option>
                                                                                                <option <#if (trade.product?string == 'ForeignExchange:SimpleExotic:Barrier')>selected="selected"</#if> value="ForeignExchange:SimpleExotic:Barrier">ForeignExchange : SimpleExotic : Barrier</option>
                                                                                                <option <#if (trade.product?string == 'ForeignExchange:SimpleExotic:Digital')>selected="selected"</#if> value="ForeignExchange:SimpleExotic:Digital">ForeignExchange : SimpleExotic : Digital</option>
                                                                                                <option <#if (trade.product?string == 'ForeignExchange:Spot')>selected="selected"</#if> value="ForeignExchange:Spot">ForeignExchange : Spot</option>
                                                                                                <option <#if (trade.product?string == 'ForeignExchange:VanillaOption')>selected="selected"</#if> value="ForeignExchange:VanillaOption">ForeignExchange : VanillaOption</option>
                                                                                                <option <#if (trade.product?string == 'InterestRate:CapFloor')>selected="selected"</#if> value="InterestRate:CapFloor">InterestRate : CapFloor</option>
                                                                                                <option <#if (trade.product?string == 'InterestRate:CrossCurrency:Basis')>selected="selected"</#if> value="InterestRate:CrossCurrency:Basis">InterestRate : CrossCurrency : Basis</option>
                                                                                                <option <#if (trade.product?string == 'InterestRate:CrossCurrency:FixedFixed')>selected="selected"</#if> value="InterestRate:CrossCurrency:FixedFixed">InterestRate : CrossCurrency : FixedFixed</option>
                                                                                                <option <#if (trade.product?string == 'InterestRate:CrossCurrency:FixedFloat')>selected="selected"</#if> value="InterestRate:CrossCurrency:FixedFloat">InterestRate : CrossCurrency : FixedFloat</option>
                                                                                                <option <#if (trade.product?string == 'InterestRate:Exotic')>selected="selected"</#if> value="InterestRate:Exotic">InterestRate : Exotic</option>
                                                                                                <option <#if (trade.product?string == 'InterestRate:FRA')>selected="selected"</#if> value="InterestRate:FRA">InterestRate : FRA</option>
                                                                                                <option <#if (trade.product?string == 'InterestRate:IRSwap:Basis')>selected="selected"</#if> value="InterestRate:IRSwap:Basis">InterestRate : IRSwap : Basis</option>
                                                                                                <option <#if (trade.product?string == 'InterestRate:IRSwap:FixedFixed')>selected="selected"</#if> value="InterestRate:IRSwap:FixedFixed">InterestRate : IRSwap : FixedFixed</option>
                                                                                                <option <#if (trade.product?string == 'InterestRate:IRSwap:FixedFloat')>selected="selected"</#if> value="InterestRate:IRSwap:FixedFloat">InterestRate : IRSwap : FixedFloat</option>
                                                                                                <option <#if (trade.product?string == 'InterestRate:IRSwap:OIS')>selected="selected"</#if> value="InterestRate:IRSwap:OIS">InterestRate : IRSwap : OIS</option>
                                                                                                <option <#if (trade.product?string == 'InterestRate:Option:Debtoption')>selected="selected"</#if> value="InterestRate:Option:Debtoption">InterestRate : Option : Debtoption</option>
                                                                                                <option <#if (trade.product?string == 'InterestRate:Option:Swaption')>selected="selected"</#if> value="InterestRate:Option:Swaption">InterestRate : Option : Swaption</option>
                                                                                                <option <#if (trade.product?string == 'LoanDeposit')>selected="selected"</#if> value="LoanDeposit">LoanDeposit</option>
                                                                                                <option <#if (trade.product?string == 'MoneyMarket')>selected="selected"</#if> value="MoneyMarket">MoneyMarket</option>
                                                                                                <option <#if (trade.product?string == 'Securitiesfinance')>selected="selected"</#if> value="Securitiesfinance">Securitiesfinance</option>
                                                                                                <option <#if (trade.product?string == 'SecuritiesFinance:BuySellBack')>selected="selected"</#if> value="SecuritiesFinance:BuySellBack">SecuritiesFinance : BuySellBack</option>
                                                                                                <option <#if (trade.product?string == 'SecuritiesFinance:RepurchaseAgreement')>selected="selected"</#if> value="SecuritiesFinance:RepurchaseAgreement">SecuritiesFinance : RepurchaseAgreement</option>
                                                                                                <option <#if (trade.product?string == 'SecuritiesFinance:RepurchaseAgreement:Evergreen')>selected="selected"</#if> value="SecuritiesFinance:RepurchaseAgreement:Evergreen">SecuritiesFinance : RepurchaseAgreement : Evergreen</option>
                                                                                                <option <#if (trade.product?string == 'SecuritiesFinance:RepurchaseAgreement:Extendible')>selected="selected"</#if> value="SecuritiesFinance:RepurchaseAgreement:Extendible">SecuritiesFinance : RepurchaseAgreement : Extendible</option>
                                                                                                <option <#if (trade.product?string == 'SecuritiesFinance:SecuritiesLending')>selected="selected"</#if> value="SecuritiesFinance:SecuritiesLending">SecuritiesFinance : SecuritiesLending</option>
                                                                                                <option <#if (trade.product?string == 'SecuritiesFinance:SecuritiesLending::Evergreen')>selected="selected"</#if> value="SecuritiesFinance:SecuritiesLending::Evergreen">SecuritiesFinance : SecuritiesLending :  : Evergreen</option>
                                                                                                <option <#if (trade.product?string == 'SecuritiesFinance:SecuritiesLending::Extendible')>selected="selected"</#if> value="SecuritiesFinance:SecuritiesLending::Extendible">SecuritiesFinance : SecuritiesLending :  : Extendible</option>
                                                                                                <option <#if (trade.product?string == 'SecuritiesFinance:SecuritiesLending:CashDriven')>selected="selected"</#if> value="SecuritiesFinance:SecuritiesLending:CashDriven">SecuritiesFinance : SecuritiesLending : CashDriven</option>
                                                                                                <option <#if (trade.product?string == 'undefined')>selected="selected"</#if> value="undefined">undefined</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Originating Event</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_03" name = "originating_event">
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Amendment:Retracted')>selected="selected"</#if> value="Cancel:Amendment:Retracted">Cancel : Amendment : Retracted</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Amendment:TradeAffirmed:Validated')>selected="selected"</#if> value="Cancel:Amendment:TradeAffirmed:Validated">Cancel : Amendment : TradeAffirmed : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Termination:Retracted')>selected="selected"</#if> value="Cancel:Termination:Retracted">Cancel : Termination : Retracted</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Termination:TradeAffirmed')>selected="selected"</#if> value="Cancel:Termination:TradeAffirmed">Cancel : Termination : TradeAffirmed</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Termination:TradeAffirmed:Validated')>selected="selected"</#if> value="Cancel:Termination:TradeAffirmed:Validated">Cancel : Termination : TradeAffirmed : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:ClearingCompletedNotification')>selected="selected"</#if> value="Cancel:Trade:ClearingCompletedNotification">Cancel : Trade : ClearingCompletedNotification</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:ClearingCompletedNotificat:Validated')>selected="selected"</#if> value="Cancel:Trade:ClearingCompletedNotificat:Validated">Cancel : Trade : ClearingCompletedNotificat : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:Retracted')>selected="selected"</#if> value="Cancel:Trade:Retracted">Cancel : Trade : Retracted</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:Retracted:Validated')>selected="selected"</#if> value="Cancel:Trade:Retracted:Validated">Cancel : Trade : Retracted : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed">Cancel : Trade : TradeAffirmed</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:BOCheck')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:BOCheck">Cancel : Trade : TradeAffirmed : BOCheck</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:BOCheck|CLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:BOCheck|CLIENT">Cancel : Trade : TradeAffirmed : BOCheck|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:BOCheck|MARKETSINGLECLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:BOCheck|MARKETSINGLECLIENT">Cancel : Trade : TradeAffirmed : BOCheck|MARKETSINGLECLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:BORejected')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:BORejected">Cancel : Trade : TradeAffirmed : BORejected</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:BORejected|CLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:BORejected|CLIENT">Cancel : Trade : TradeAffirmed : BORejected|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:BORejected|MARKET_MULTIPLE_CLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:BORejected|MARKET_MULTIPLE_CLIENT">CancelITrade : TradeAffirmed : BORejected|MARKET_MULTIPLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:BORejected|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:BORejected|MARKET_SINGLE_CLIENT">Cancel : Trade : TradeAffirmed : BORejected|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:CHKP')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:CHKP">Cancel : Trade : TradeAffirmed : CHKP</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:CancelledFO/RefusedMO')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:CancelledFO/RefusedMO">Cancel : Trade : TradeAffirmed : Cancelled FO / Refused MO</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:FODiscarded')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:FODiscarded">Cancel : Trade : TradeAffirmed : FODiscarded</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:INPT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:INPT">Cancel : Trade : TradeAffirmed : INPT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:InitialState')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:InitialState">Cancel : Trade : TradeAffirmed : InitialState</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:MO_Peding')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:MO_Peding">Cancel : Trade : TradeAffirmed : MO_Peding</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:ModifiedFO/RefusedMO')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:ModifiedFO/RefusedMO">Cancel : Trade : TradeAffirmed : Modified FO /Refused MO</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:ModifiedFO/RefusedMO|CLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:ModifiedFO/RefusedMO|CLIENT">Cancel : Trade : TradeAffirmed : Modified FO /Refused MO|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:ModifiedFORefusedMO|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:ModifiedFORefusedMO|MARKET_SINGLE_CLIENT">Cancel : Trade : TradeAffirmed : ModifiedFORefused MO|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:Validated')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:Validated">Cancel : Trade : TradeAffirmed : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:Validated|CLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:Validated|CLIENT">Cancel : Trade : TradeAffirmed : Validated|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:Validated|MARKET_MULTIPLE_CLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:Validated|MARKET_MULTIPLE_CLIENT">Cancel : Trade : TradeAffirmed : Validated|MARKET_MULTIPLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT">Cancel : Trade : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed|CLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed|CLIENT">Cancel : Trade : TradeAffirmed|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed|MARKET__CLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed|MARKET__CLIENT">Cancel : Trade : TradeAffirmed|MARKET__CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed|MARKET_MULTIPLE_CLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed|MARKET_MULTIPLE_CLIENT">Cancel : Trade : TradeAffirmed|MARKET_MULTIPLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:Trade:TradeAffirmed|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="Cancel:Trade:TradeAffirmed|MARKET_SINGLE_CLIENT">Cancel : Trade : TradeAffirmed|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:drawdown:Retracted')>selected="selected"</#if> value="Cancel:drawdown:Retracted">Cancel : drawdown : Retracted</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:drawdown:TradeAffirmed')>selected="selected"</#if> value="Cancel:drawdown:TradeAffirmed">Cancel : drawdown : TradeAffirmed</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:drawdown:TradeAffirmed:Validated')>selected="selected"</#if> value="Cancel:drawdown:TradeAffirmed:Validated">Cancel : drawdown : TradeAffirmed : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'Cancel:expiry:TradeAffirmed:Validated')>selected="selected"</#if> value="Cancel:expiry:TradeAffirmed:Validated">Cancel : expiry : TradeAffirmed : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'Margin:New:MarginReporting')>selected="selected"</#if> value="Margin:New:MarginReporting">Margin : New : MarginReporting</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:ClearingCompletedNotification')>selected="selected"</#if> value="New:Amendment:ClearingCompletedNotification">New : Amendment : ClearingCompletedNotification</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:ClearingCompletedNotification:Validated')>selected="selected"</#if> value="New:Amendment:ClearingCompletedNotification:Validated">New : Amendment : ClearingCompletedNotification : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed')>selected="selected"</#if> value="New:Amendment:TradeAffirmed">New : Amendment : TradeAffirmed</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:BOCheck')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:BOCheck">New : Amendment : TradeAffirmed : BOCheck</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:BOCheck|CLIENT')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:BOCheck|CLIENT">New : Amendment : TradeAffirmed : BOCheck|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:BOCheck|MARKET_MULTIPLE_CLIENT')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:BOCheck|MARKET_MULTIPLE_CLIENT">New : Amendment : TradeAffirmed : BOCheck|MARKET_MULTIPLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:BOCheck|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:BOCheck|MARKET_SINGLE_CLIENT">New : Amendment : TradeAffirmed : BOCheck|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:BORejected')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:BORejected">New : Amendment : TradeAffirmed : BORejected</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:FO_Discarded')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:FO_Discarded">New : Amendment : TradeAffirmed : FO_Discarded</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:INPT')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:INPT">New : Amendment : TradeAffirmed : INPT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:InitialState')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:InitialState">New : Amendment : TradeAffirmed : InitialState</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:InitialState|CLIENT')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:InitialState|CLIENT">New : Amendment : TradeAffirmed : InitialState|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:ModifiedFO/RefusedMO')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:ModifiedFO/RefusedMO">New : Amendment : TradeAffirmed : Modified FO / Refused MO</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:ModifiedFO/RefusedMO|CLIENT')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:ModifiedFO/RefusedMO|CLIENT">New : Amendment : TradeAffirmed : Modified FO / Refused MO|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:ModifiedFO/RefusedMO|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:ModifiedFO/RefusedMO|MARKET_SINGLE_CLIENT">New : Amendment : TradeAffirmed : Modified FO / Refused MO|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:Validated')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:Validated">New : Amendment : TradeAffirmed : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:Validated|CLIENT')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:Validated|CLIENT">New : Amendment : TradeAffirmed : Validated|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:Validated|MARKET_MULTIPLE_CLIENT')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:Validated|MARKET_MULTIPLE_CLIENT">New : Amendment : TradeAffirmed : Validated|MARKET_MULTIPLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="New:Amendment:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT">New : Amendment : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed')>selected="selected"</#if> value="New:Amendment:TradeAffirmed">New : Amendment : TradeAffirmed</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed|CLIENT')>selected="selected"</#if> value="New:Amendment:TradeAffirmed|CLIENT">New : Amendment : TradeAffirmed|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed|MARKET_MULTIPLE_CLIENT')>selected="selected"</#if> value="New:Amendment:TradeAffirmed|MARKET_MULTIPLE_CLIENT">New : Amendment : TradeAffirmed|MARKET_MULTIPLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Amendment:TradeAffirmed|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="New:Amendment:TradeAffirmed|MARKET_SINGLE_CLIENT">New : Amendment : TradeAffirmed|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Exercise:TradeAffirmed')>selected="selected"</#if> value="New:Exercise:TradeAffirmed">New : Exercise : TradeAffirmed</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Exercise:TradeAffirmed:BOCheck')>selected="selected"</#if> value="New:Exercise:TradeAffirmed:BOCheck">New : Exercise : TradeAffirmed : BOCheck</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Exercise:TradeAffirmed:BOCheck|CLIENT')>selected="selected"</#if> value="New:Exercise:TradeAffirmed:BOCheck|CLIENT">New : Exercise : TradeAffirmed : BOCheck|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Exercise:TradeAffirmed:BOCheck|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="New:Exercise:TradeAffirmed:BOCheck|MARKET_SINGLE_CLIENT">New : Exercise : TradeAffirmed : BOCheck|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Exercise:TradeAffirmed:InitialState')>selected="selected"</#if> value="New:Exercise:TradeAffirmed:InitialState">New : Exercise : TradeAffirmed : InitialState</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Exercise:TradeAffirmed:Validated')>selected="selected"</#if> value="New:Exercise:TradeAffirmed:Validated">New : Exercise : TradeAffirmed : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Exercise:TradeAffirmed:Validated|CLIENT')>selected="selected"</#if> value="New:Exercise:TradeAffirmed:Validated|CLIENT">New : Exercise : TradeAffirmed : Validated|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Exercise:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="New:Exercise:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT">New : Exercise : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Termination:ClearingCompletedNotification:Validated')>selected="selected"</#if> value="New:Termination:ClearingCompletedNotification:Validated">New : Termination : ClearingCompletedNotification : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Termination:TradeAffirmed')>selected="selected"</#if> value="New:Termination:TradeAffirmed">New : Termination : TradeAffirmed</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Termination:TradeAffirmed:BOChecl')>selected="selected"</#if> value="New:Termination:TradeAffirmed:BOChecl">New : Termination : TradeAffirmed : BOChecl</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Termination:TradeAffirmed:Initialstate')>selected="selected"</#if> value="New:Termination:TradeAffirmed:Initialstate">New : Termination : TradeAffirmed : Initialstate</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Termination:TradeAffirmed:Validated')>selected="selected"</#if> value="New:Termination:TradeAffirmed:Validated">New : Termination : TradeAffirmed : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'lew:Termination:TradeAffirmed:Validated|CLIENT')>selected="selected"</#if> value="lew:Termination:TradeAffirmed:Validated|CLIENT">lew : Termination : TradeAffirmed : Validated|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Termination:TradeAffirmed:Validated|MARKET_SINGLEC_LIENT')>selected="selected"</#if> value="New:Termination:TradeAffirmed:Validated|MARKET_SINGLEC_LIENT">New : Termination : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:ClearingCompletedNotification')>selected="selected"</#if> value="New:Trade:ClearingCompletedNotification">New : Trade : ClearingCompletedNotification</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:CollateralPosting')>selected="selected"</#if> value="New:Trade:CollateralPosting">New : Trade : CollateralPosting</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed')>selected="selected"</#if> value="New:Trade:TradeAffirmed">New : Trade : TradeAffirmed</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:BOCheck')>selected="selected"</#if> value="New:Trade:TradeAffirmed:BOCheck">New : Trade : TradeAffirmed : BOCheck</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:BOCheck|CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed:BOCheck|CLIENT">New : Trade : TradeAffirmed : BOCheck|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:BOCheck|MARKET_MULTIPLE_CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed:BOCheck|MARKET_MULTIPLE_CLIENT">New : Trade : TradeAffirmed : BOCheck|MARKET_MULTIPLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:BOCheck|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed:BOCheck|MARKET_SINGLE_CLIENT">New : Trade : TradeAffirmed : BOCheck|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:BORejected')>selected="selected"</#if> value="New:Trade:TradeAffirmed:BORejected">New : Trade : TradeAffirmed : BORejected</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:BORejected|CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed:BORejected|CLIENT">New : Trade : TradeAffirmed : BORejected|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:BORejected|MARKET_MULTIPLE_CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed:BORejected|MARKET_MULTIPLE_CLIENT">New : Trade : TradeAffirmed : BORejected|MARKET_MULTIPLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:CHKP')>selected="selected"</#if> value="New:Trade:TradeAffirmed:CHKP">New : Trade : TradeAffirmed : CHKP</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:Fo_Discarded')>selected="selected"</#if> value="New:Trade:TradeAffirmed:Fo_Discarded">New : Trade : TradeAffirmed : Fo_Discarded</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:INPT')>selected="selected"</#if> value="New:Trade:TradeAffirmed:INPT">New : Trade : TradeAffirmed : INPT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:Initialstate')>selected="selected"</#if> value="New:Trade:TradeAffirmed:Initialstate">New : Trade : TradeAffirmed : Initialstate</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:InitialState|CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed:InitialState|CLIENT">New : Trade : TradeAffirmed : InitialState|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:InitialState|MARKET_MULTIPLE_CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed:InitialState|MARKET_MULTIPLE_CLIENT">New : Trade : TradeAffirmed : InitialState|MARKET_MULTIPLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:InitialState|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed:InitialState|MARKET_SINGLE_CLIENT">New : Trade : TradeAffirmed : InitialState|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:Validated')>selected="selected"</#if> value="New:Trade:TradeAffirmed:Validated">New : Trade : TradeAffirmed : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:Validated|CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed:Validated|CLIENT">New : Trade : TradeAffirmed : Validated|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:Validated|MARKET_MULTIPLE_CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed:Validated|MARKET_MULTIPLE_CLIENT">New : Trade : TradeAffirmed : Validated|MARKET_MULTIPLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT">New : Trade : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed|CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed|CLIENT">New : Trade : TradeAffirmedCLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed|MARKET_MULTIPLE_CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed|MARKET_MULTIPLE_CLIENT">New : Trade : TradeAffirmed|MARKET_MULTIPLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed|MARKET_SINGLE_CLIENT">New : Trade : TradeAffirmed|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:TradeAffirmed|MARKET_ALL_CLIENT')>selected="selected"</#if> value="New:Trade:TradeAffirmed|MARKET_ALL_CLIENT">New : Trade : TradeAffirmed|MARKET_ALL_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:Trade:ValuationReference')>selected="selected"</#if> value="New:Trade:ValuationReference">New : Trade : ValuationReference</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:drawdown:TradeAffirmed')>selected="selected"</#if> value="New:drawdown:TradeAffirmed">New : drawdown : TradeAffirmed</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:drawdown:TradeAffirmed:BOCheck')>selected="selected"</#if> value="New:drawdown:TradeAffirmed:BOCheck">New : drawdown : TradeAffirmed : BOCheck</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:drawdown:TradeAffirmed:Validated')>selected="selected"</#if> value="New:drawdown:TradeAffirmed:Validated">New : drawdown : TradeAffirmed : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:expiry:TradeAffirmed:BOCheck')>selected="selected"</#if> value="New:expiry:TradeAffirmed:BOCheck">New : expiry : TradeAffirmed : BOCheck</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:expiry:TradeAffirmed:Validated')>selected="selected"</#if> value="New:expiry:TradeAffirmed:Validated">New : expiry : TradeAffirmed : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:expiry:TradeAffirmed:Validated|CLIENT')>selected="selected"</#if> value="New:expiry:TradeAffirmed:Validated|CLIENT">New : expiry : TradeAffirmed : Validated|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:expiry:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="New:expiry:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT">New : expiry : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:optionEvent:TradeAffirmed')>selected="selected"</#if> value="New:optionEvent:TradeAffirmed">New : optionEvent : TradeAffirmed</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:optionEvent:TradeAffirmed:BOCheck')>selected="selected"</#if> value="New:optionEvent:TradeAffirmed:BOCheck">New : optionEvent : TradeAffirmed : BOCheck</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:optionEvent:TradeAffirmed:InitialState')>selected="selected"</#if> value="New:optionEvent:TradeAffirmed:InitialState">New : optionEvent : TradeAffirmed : InitialState</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:optionEvent:TradeAffirmed:Validated')>selected="selected"</#if> value="New:optionEvent:TradeAffirmed:Validated">New : optionEvent : TradeAffirmed : Validated</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:optionEvent:TradeAffirmed:Validated|CLIENT')>selected="selected"</#if> value="New:optionEvent:TradeAffirmed:Validated|CLIENT">New : optionEvent : TradeAffirmed : Validated|CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:optionEvent:TradeAffirmed:Validated|MARKET_MULTIPLE_CLIENT')>selected="selected"</#if> value="New:optionEvent:TradeAffirmed:Validated|MARKET_MULTIPLE_CLIENT">New : optionEvent : TradeAffirmed : Validated|MARKET_MULTIPLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'New:optionEvent:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT')>selected="selected"</#if> value="New:optionEvent:TradeAffirmed:Validated|MARKET_SINGLE_CLIENT">New : optionEvent : TradeAffirmed : Validated|MARKET_SINGLE_CLIENT</option>
                                                                                                <option <#if (trade.originating_event?string == 'Reuse:New:ReuseReporting')>selected="selected"</#if> value="Reuse:New:ReuseReporting">Reuse : New : ReuseReporting</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Reporting Regime</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_04" name = "reporting_regime">
                                                                                                <option <#if (trade.reporting_regime?string == '')>selected="selected"</#if> value="NA">NA</option>
                                                                                                <option <#if (trade.reporting_regime?string == 'MiFIR-ARM,MiFIR-APA')>selected="selected"</#if> value="MiFIR-ARM,MiFIR-APA">MiFIR-ARM,MiFIR-APA</option>
                                                                                                <option <#if (trade.reporting_regime?string == 'MiFIR-ARM,MiFIR-RTS23')>selected="selected"</#if> value="MiFIR-ARM,MiFIR-RTS23">MiFIR-ARM,MiFIR-RTS23</option>
                                                                                                <option <#if (trade.reporting_regime?string == 'FCA-SFTR')>selected="selected"</#if> value="FCA-SFTR">FCA-SFTR</option>
                                                                                                <option <#if (trade.reporting_regime?string == 'MiFIR-ARM,SFTR')>selected="selected"</#if> value="MiFIR-ARM,SFTR">MiFIR-ARM,SFTR</option>
                                                                                                <option <#if (trade.reporting_regime?string == 'SFTR')>selected="selected"</#if> value="SFTR">SFTR</option>
                                                                                                <option <#if (trade.reporting_regime?string == 'MiFIR-APA')>selected="selected"</#if> value="MiFIR-APA">MiFIR-APA</option>
                                                                                                <option <#if (trade.reporting_regime?string == 'MiFIR-RTS23')>selected="selected"</#if> value="MiFIR-RTS23">MiFIR-RTS23</option>
                                                                                                <option <#if (trade.reporting_regime?string == 'MiFIR-ARM')>selected="selected"</#if> value="MiFIR-ARM">MiFIR-ARM</option>
                                                                                                <option <#if (trade.reporting_regime?string == 'MiFIR-ARM,MiFIR-APA,SFTR')>selected="selected"</#if> value="MiFIR-ARM,MiFIR-APA,SFTR">MiFIR-ARM,MiFIR-APA,SFTR</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">USI Issuer</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_05" name = "usi_issuer">
                                                                                                <option <#if (trade.usi_issuer?string == '')>selected="selected"</#if> value="NA">NA</option>
                                                                                                <option <#if (trade.usi_issuer?string == 'YCDYZNMZ3J')>selected="selected"</#if> value="YCDYZNMZ3J">YCDYZNMZ3J</option>
                                                                                                <option <#if (trade.usi_issuer?string == '1N6DM40ZPS')>selected="selected"</#if> value="1N6DM40ZPS">1N6DM40ZPS</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">USI Value</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_06" name = "usi_value">
                                                                                                <option <#if (trade.usi_value?string == '1KJTIIGC8YBBG')>selected="selected"</#if> value="1KJTIIGC8YBBG">1KJTIIGC8YBBG</option>
                                                                                                <option <#if (trade.usi_value?string == '1SAICMBREPOD')>selected="selected"</#if> value="1SAICMBREPOD">1SAICMBREPOD</option>
                                                                                                <option <#if (trade.usi_value?string == 'F2KUVLIFOY')>selected="selected"</#if> value="F2KUVLIFOY">F2KUVLIFOY</option>
                                                                                                <option <#if (trade.usi_value?string == 'GLMXD')>selected="selected"</#if> value="GLMXD">GLMXD</option>
                                                                                                <option <#if (trade.usi_value?string == 'LCHCSDE')>selected="selected"</#if> value="LCHCSDE">LCHCSDE</option>
                                                                                                <option <#if (trade.usi_value?string == 'XLCHRDSCR')>selected="selected"</#if> value="XLCHRDSCR">XLCHRDSCR</option>
                                                                                                <option <#if (trade.usi_value?string == '')>selected="selected"</#if> value="NA">NA</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">UTI Qriginator</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_07" name = "uti_originator">
                                                                                                <option <#if (trade.uti_originator?string == 'INTERNAL_UTI')>selected="selected"</#if> value="INTERNAL_UTI">INTERNAL_UTI</option>
                                                                                                <option <#if (trade.uti_originator?string == 'ISDA')>selected="selected"</#if> value="ISDA">ISDA</option>
                                                                                                <option <#if (trade.uti_originator?string == 'UNCLASSIFIED_UTI')>selected="selected"</#if> value="UNCLASSIFIED_UTI">UNCLASSIFIED_UTI</option>
                                                                                                <option <#if (trade.uti_originator?string == 'CONFIRMATION_PLATFORM_UTI')>selected="selected"</#if> value="CONFIRMATION_PLATFORM_UTI">CONFIRMATION_PLATFORM_UTI</option>
                                                                                                <option <#if (trade.uti_originator?string == 'VENUE_UTI')>selected="selected"</#if> value="VENUE_UTI">VENUE_UTI</option>
                                                                                                <option <#if (trade.uti_originator?string == 'NO_UTI')>selected="selected"</#if> value="NO_UTI">NO_UTI</option>
                                                                                                <option <#if (trade.uti_originator?string == 'CCP_UTI')>selected="selected"</#if> value="CCP_UTI">CCP_UTI</option>
                                                                                                <option <#if (trade.uti_originator?string == 'CPTY_UTI')>selected="selected"</#if> value="CPTY_UTI">CPTY_UTI</option>
                                                                                                <option <#if (trade.uti_originator?string == '')>selected="selected"</#if> value="NA">NA</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Outgoing</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_08" name = "outgoing">
                                                                                                <option <#if (trade.outgoing?string == '1')>selected="selected"</#if> value="1">1</option>
                                                                                                <option <#if (trade.outgoing?string == '0')>selected="selected"</#if> value="0">0</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Has Ack Nack</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_09" name = "has_ack_nack">
                                                                                                <option <#if (trade.has_ack_nack?string == '1')>selected="selected"</#if> value="1">1</option>
                                                                                                <option <#if (trade.has_ack_nack?string == '0')>selected="selected"</#if> value="0">0</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Tr Determined Rep Role</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_10" name = "tr_determined_rep_role">
                                                                                                <option <#if (trade.tr_determined_rep_role?string == 'ReportingParty')>selected="selected"</#if> value="ReportingParty">Reporting Party</option>
                                                                                                <option <#if (trade.tr_determined_rep_role?string == '')>selected="selected"</#if> value="NA" selected="selected">NA</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Intent To Clear</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_11" name = "intent_to_clear">
                                                                                                <option <#if (trade.intent_to_clear?string == 'N')>selected="selected"</#if> value="N" selected="selected">N</option>
                                                                                                <option <#if (trade.intent_to_clear?string == 'Y')>selected="selected"</#if> value="Y">Y</option>
                                                                                                <option <#if (trade.intent_to_clear?string == '')>selected="selected"</#if> value="NA">NA</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Execution Venue</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_12" name = "execution_venue">
                                                                                                <option <#if (trade.execution_venue?string == '')>selected="selected"</#if> value="NA" selected="selected">NA</option>
                                                                                                <option <#if (trade.execution_venue?string == 'RILFO74P1CM8P6PCT96')>selected="selected"</#if> value="RILFO74P1CM8P6PCT96">RILFO74P1CM8P6PCT96</option>
                                                                                                <option <#if (trade.execution_venue?string == '54930MDYVVHJ8D1DW28')>selected="selected"</#if> value="54930MDYVVHJ8D1DW28">54930MDYVVHJ8D1DW28</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">System Trade Source</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_13" name = "system_trade_source">
                                                                                                <option <#if (trade.system_trade_source?string == 'UTS')>selected="selected"</#if> value="UTS">UTS</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'FEDS')>selected="selected"</#if> value="FEDS">FEDS</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'CIS')>selected="selected"</#if> value="CIS">CIS</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'Murex')>selected="selected"</#if> value="Murex">Murex</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'MxCMS')>selected="selected"</#if> value="MxCMS">MxCMS</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'VELOCITY')>selected="selected"</#if> value="VELOCITY">VELOCITY</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'DZH')>selected="selected"</#if> value="DZH">DZH</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'MARTINI')>selected="selected"</#if> value="MARTINI">MARTINI</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'EINVESTMENT')>selected="selected"</#if> value="EINVESTMENT">EINVESTMENT</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'EQCONNECT')>selected="selected"</#if> value="EQCONNECT">EQCONNECT</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'OPICS')>selected="selected"</#if> value="OPICS">OPICS</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'S2BX')>selected="selected"</#if> value="S2BX">S2BX</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'Velocity')>selected="selected"</#if> value="Velocity">Velocity</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'EDR')>selected="selected"</#if> value="EDR">EDR</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'Blade')>selected="selected"</#if> value="Blade">Blade</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'SABRE')>selected="selected"</#if> value="SABRE">SABRE</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'Martini')>selected="selected"</#if> value="Martini">Martini</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'GLTRADE')>selected="selected"</#if> value="GLTRADE">GLTRADE</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'RiskRunnerSTP')>selected="selected"</#if> value="RiskRunnerSTP">RiskRunnerSTP</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'FICONNECT')>selected="selected"</#if> value="FICONNECT">FICONNECT</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'MX_FXCASH')>selected="selected"</#if> value="MX_FXCASH">MX_FXCASH</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'BCSSTELLA')>selected="selected"</#if> value="BCSSTELLA">BCSSTELLA</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'BTS')>selected="selected"</#if> value="BTS">BTS</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'Sophis')>selected="selected"</#if> value="Sophis">Sophis</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'WSD')>selected="selected"</#if> value="WSD">WSD</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'FIConnect')>selected="selected"</#if> value="FIConnect">FIConnect</option>
                                                                                                <option <#if (trade.system_trade_source?string == 'T24')>selected="selected"</#if> value="T24">T24</option>
                                                                                                <option <#if (trade.system_trade_source?string == '')>selected="selected"</#if> value="NA">NA</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Notional Ccy_1</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_14" name = "notional_ccy_1">
                                                                                                <option <#if (trade.notional_ccy_1?string == 'AED')>selected="selected"</#if> value="AED">AED</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'AFN')>selected="selected"</#if> value="AFN">AFN</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'AFI')>selected="selected"</#if> value="AFI">AFI</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'AOA')>selected="selected"</#if> value="AOA">AOA</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'ARS')>selected="selected"</#if> value="ARS">ARS</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'AUD')>selected="selected"</#if> value="AUD">AUD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'AZN')>selected="selected"</#if> value="AZN">AZN</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'BDT')>selected="selected"</#if> value="BDT">BDT</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'BGN')>selected="selected"</#if> value="BGN">BGN</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'BHD')>selected="selected"</#if> value="BHD">BHD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'BND')>selected="selected"</#if> value="BND">BND</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'BOB')>selected="selected"</#if> value="BOB">BOB</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'BRL')>selected="selected"</#if> value="BRL">BRL</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'BWP')>selected="selected"</#if> value="BWP">BWP</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'CAD')>selected="selected"</#if> value="CAD">CAD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'CHF')>selected="selected"</#if> value="CHF">CHF</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'CLF')>selected="selected"</#if> value="CLF">CLF</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'CLO')>selected="selected"</#if> value="CLO">CLO</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'CNH')>selected="selected"</#if> value="CNH">CNH</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'CNO')>selected="selected"</#if> value="CNO">CNO</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'CNY')>selected="selected"</#if> value="CNY">CNY</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'COP')>selected="selected"</#if> value="COP">COP</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'CZK')>selected="selected"</#if> value="CZK">CZK</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'DKK')>selected="selected"</#if> value="DKK">DKK</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'EGP')>selected="selected"</#if> value="EGP">EGP</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'ETB')>selected="selected"</#if> value="ETB">ETB</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'ETH')>selected="selected"</#if> value="ETH">ETH</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'EUR')>selected="selected"</#if> value="EUR">EUR</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'GBP')>selected="selected"</#if> value="GBP">GBP</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'GBX')>selected="selected"</#if> value="GBX">GBX</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'GHS')>selected="selected"</#if> value="GHS">GHS</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'GMD')>selected="selected"</#if> value="GMD">GMD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'GS')>selected="selected"</#if> value="GS">GS</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'HKD')>selected="selected"</#if> value="HKD">HKD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'HRK')>selected="selected"</#if> value="HRK">HRK</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'HUF')>selected="selected"</#if> value="HUF">HUF</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'IDR')>selected="selected"</#if> value="IDR">IDR</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'IDY')>selected="selected"</#if> value="IDY">IDY</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'ILS')>selected="selected"</#if> value="ILS">ILS</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'INR')>selected="selected"</#if> value="INR">INR</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'IQD')>selected="selected"</#if> value="IQD">IQD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'JOD')>selected="selected"</#if> value="JOD">JOD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'JPT')>selected="selected"</#if> value="JPT">JPT</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'JPY')>selected="selected"</#if> value="JPY">JPY</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'KES')>selected="selected"</#if> value="KES">KES</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'KRO')>selected="selected"</#if> value="KRO">KRO</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'KRW')>selected="selected"</#if> value="KRW">KRW</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'KWD')>selected="selected"</#if> value="KWD">KWD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'KZT')>selected="selected"</#if> value="KZT">KZT</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'LKH')>selected="selected"</#if> value="LKH">LKH</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'LKR')>selected="selected"</#if> value="LKR">LKR</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'MAD')>selected="selected"</#if> value="MAD">MAD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'MOP')>selected="selected"</#if> value="MOP">MOP</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'MUR')>selected="selected"</#if> value="MUR">MUR</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'MWK')>selected="selected"</#if> value="MWK">MWK</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'MXN')>selected="selected"</#if> value="MXN">MXN</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'MYO')>selected="selected"</#if> value="MYO">MYO</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'MYR')>selected="selected"</#if> value="MYR">MYR</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'MYZ')>selected="selected"</#if> value="MYZ">MYZ</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'MZH')>selected="selected"</#if> value="MZH">MZH</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'MZN')>selected="selected"</#if> value="MZN">MZN</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'NAD')>selected="selected"</#if> value="NAD">NAD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'NGN')>selected="selected"</#if> value="NGN">NGN</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'NOK')>selected="selected"</#if> value="NOK">NOK</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'NPR')>selected="selected"</#if> value="NPR">NPR</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'NZD')>selected="selected"</#if> value="NZD">NZD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'OMR')>selected="selected"</#if> value="OMR">OMR</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'PEN')>selected="selected"</#if> value="PEN">PEN</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'PEO')>selected="selected"</#if> value="PEO">PEO</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'PHP')>selected="selected"</#if> value="PHP">PHP</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'PKH')>selected="selected"</#if> value="PKH">PKH</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'PKR')>selected="selected"</#if> value="PKR">PKR</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'PLN')>selected="selected"</#if> value="PLN">PLN</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'QAR')>selected="selected"</#if> value="QAR">QAR</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'RON')>selected="selected"</#if> value="RON">RON</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'RSD')>selected="selected"</#if> value="RSD">RSD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'RUB')>selected="selected"</#if> value="RUB">RUB</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'RWF')>selected="selected"</#if> value="RWF">RWF</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'SAR')>selected="selected"</#if> value="SAR">SAR</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'SEK')>selected="selected"</#if> value="SEK">SEK</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'SGD')>selected="selected"</#if> value="SGD">SGD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'SGO')>selected="selected"</#if> value="SGO">SGO</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'SLL')>selected="selected"</#if> value="SLL">SLL</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'SZL')>selected="selected"</#if> value="SZL">SZL</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'THB')>selected="selected"</#if> value="THB">THB</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'TND')>selected="selected"</#if> value="TND">TND</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'TRB')>selected="selected"</#if> value="TRB">TRB</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'TRY')>selected="selected"</#if> value="TRY">TRY</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'TWD')>selected="selected"</#if> value="TWD">TWD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'TZS')>selected="selected"</#if> value="TZS">TZS</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'UAH')>selected="selected"</#if> value="UAH">UAH</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'UGX')>selected="selected"</#if> value="UGX">UGX</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'USD')>selected="selected"</#if> value="USD">USD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'UYU')>selected="selected"</#if> value="UYU">UYU</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'UZS')>selected="selected"</#if> value="UZS">UZS</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'VND')>selected="selected"</#if> value="VND">VND</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'XAF')>selected="selected"</#if> value="XAF">XAF</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'XAG')>selected="selected"</#if> value="XAG">XAG</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'XAU')>selected="selected"</#if> value="XAU">XAU</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'XOF')>selected="selected"</#if> value="XOF">XOF</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'XOH')>selected="selected"</#if> value="XOH">XOH</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'XPD')>selected="selected"</#if> value="XPD">XPD</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'XPT')>selected="selected"</#if> value="XPT">XPT</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'XUC')>selected="selected"</#if> value="XUC">XUC</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'ZAR')>selected="selected"</#if> value="ZAR">ZAR</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'ZMW')>selected="selected"</#if> value="ZMW">ZMW</option>
                                                                                                <option <#if (trade.notional_ccy_1?string == 'ZWL')>selected="selected"</#if> value="ZWL">ZWL</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Notional Ccy_2</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_15" name = "notional_ccy_2">
                                                                                                <option <#if (trade.notional_ccy_2?string == 'AED')>selected="selected"</#if> value="AED">AED</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'AOA')>selected="selected"</#if> value="AOA">AOA</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'ARS')>selected="selected"</#if> value="ARS">ARS</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'AUD')>selected="selected"</#if> value="AUD">AUD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'BDT')>selected="selected"</#if> value="BDT">BDT</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'BGN')>selected="selected"</#if> value="BGN">BGN</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'BHD')>selected="selected"</#if> value="BHD">BHD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'BND')>selected="selected"</#if> value="BND">BND</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'BRL')>selected="selected"</#if> value="BRL">BRL</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'BWP')>selected="selected"</#if> value="BWP">BWP</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'CAD')>selected="selected"</#if> value="CAD">CAD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'CHE')>selected="selected"</#if> value="CHE">CHE</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'CLP')>selected="selected"</#if> value="CLP">CLP</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'CNH')>selected="selected"</#if> value="CNH">CNH</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'CNY')>selected="selected"</#if> value="CNY">CNY</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'COP')>selected="selected"</#if> value="COP">COP</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'CZK')>selected="selected"</#if> value="CZK">CZK</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'DKK')>selected="selected"</#if> value="DKK">DKK</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'EGP')>selected="selected"</#if> value="EGP">EGP</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'ETB')>selected="selected"</#if> value="ETB">ETB</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'EUR')>selected="selected"</#if> value="EUR">EUR</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'GBP')>selected="selected"</#if> value="GBP">GBP</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'GHS')>selected="selected"</#if> value="GHS">GHS</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'GMD')>selected="selected"</#if> value="GMD">GMD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'HKD')>selected="selected"</#if> value="HKD">HKD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'HRK')>selected="selected"</#if> value="HRK">HRK</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'HUF')>selected="selected"</#if> value="HUF">HUF</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'IDR')>selected="selected"</#if> value="IDR">IDR</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'ILS')>selected="selected"</#if> value="ILS">ILS</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'INR')>selected="selected"</#if> value="INR">INR</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'LQD')>selected="selected"</#if> value="LQD">LQD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'JOD')>selected="selected"</#if> value="JOD">JOD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'JPY')>selected="selected"</#if> value="JPY">JPY</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'KES')>selected="selected"</#if> value="KES">KES</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'KMF')>selected="selected"</#if> value="KMF">KMF</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'KRW')>selected="selected"</#if> value="KRW">KRW</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'KWD')>selected="selected"</#if> value="KWD">KWD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'KZT')>selected="selected"</#if> value="KZT">KZT</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'LKR')>selected="selected"</#if> value="LKR">LKR</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'MAD')>selected="selected"</#if> value="MAD">MAD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'MGA')>selected="selected"</#if> value="MGA">MGA</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'MOP')>selected="selected"</#if> value="MOP">MOP</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'MUR')>selected="selected"</#if> value="MUR">MUR</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'MWK')>selected="selected"</#if> value="MWK">MWK</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'MXN')>selected="selected"</#if> value="MXN">MXN</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'MYR')>selected="selected"</#if> value="MYR">MYR</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'MYZ')>selected="selected"</#if> value="MYZ">MYZ</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'MZN')>selected="selected"</#if> value="MZN">MZN</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'NAD')>selected="selected"</#if> value="NAD">NAD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'NGN')>selected="selected"</#if> value="NGN">NGN</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'NOK')>selected="selected"</#if> value="NOK">NOK</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'NPR')>selected="selected"</#if> value="NPR">NPR</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'NZD')>selected="selected"</#if> value="NZD">NZD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'OMR')>selected="selected"</#if> value="OMR">OMR</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'PEN')>selected="selected"</#if> value="PEN">PEN</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'PHP')>selected="selected"</#if> value="PHP">PHP</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'PKR')>selected="selected"</#if> value="PKR">PKR</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'PLN')>selected="selected"</#if> value="PLN">PLN</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'QAR')>selected="selected"</#if> value="QAR">QAR</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'RON')>selected="selected"</#if> value="RON">RON</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'RSD')>selected="selected"</#if> value="RSD">RSD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'RUB')>selected="selected"</#if> value="RUB">RUB</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'SAR')>selected="selected"</#if> value="SAR">SAR</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'SEK')>selected="selected"</#if> value="SEK">SEK</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'SGD')>selected="selected"</#if> value="SGD">SGD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'SGO')>selected="selected"</#if> value="SGO">SGO</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'SLL')>selected="selected"</#if> value="SLL">SLL</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'SZL')>selected="selected"</#if> value="SZL">SZL</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'THB')>selected="selected"</#if> value="THB">THB</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'TND')>selected="selected"</#if> value="TND">TND</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'TRY')>selected="selected"</#if> value="TRY">TRY</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'TWD')>selected="selected"</#if> value="TWD">TWD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'TZS')>selected="selected"</#if> value="TZS">TZS</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'UAH')>selected="selected"</#if> value="UAH">UAH</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'UGX')>selected="selected"</#if> value="UGX">UGX</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'USD')>selected="selected"</#if> value="USD">USD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'VND')>selected="selected"</#if> value="VND">VND</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'XAF')>selected="selected"</#if> value="XAF">XAF</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'XAG')>selected="selected"</#if> value="XAG">XAG</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'XAU')>selected="selected"</#if> value="XAU">XAU</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'XG4')>selected="selected"</#if> value="XG4">XG4</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'XGI')>selected="selected"</#if> value="XGI">XGI</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'XOF')>selected="selected"</#if> value="XOF">XOF</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'XOH')>selected="selected"</#if> value="XOH">XOH</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'XPD')>selected="selected"</#if> value="XPD">XPD</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'XPT')>selected="selected"</#if> value="XPT">XPT</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'XRH')>selected="selected"</#if> value="XRH">XRH</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'ZAR')>selected="selected"</#if> value="ZAR">ZAR</option>
                                                                                                <option <#if (trade.notional_ccy_2?string == 'ZMW')>selected="selected"</#if> value="ZMW">ZMW</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Quantity</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_16" name = "quantity">
                                                                                                <option <#if (trade.quantity?string == 'AED')>selected="selected"</#if> value="AED">AED</option>
                                                                                                <option <#if (trade.quantity?string == 'AOA')>selected="selected"</#if> value="AOA">AOA</option>
                                                                                                <option <#if (trade.quantity?string == 'AUD')>selected="selected"</#if> value="AUD">AUD</option>
                                                                                                <option <#if (trade.quantity?string == 'AZN')>selected="selected"</#if> value="AZN">AZN</option>
                                                                                                <option <#if (trade.quantity?string == 'BDT')>selected="selected"</#if> value="BDT">BDT</option>
                                                                                                <option <#if (trade.quantity?string == 'BGN')>selected="selected"</#if> value="BGN">BGN</option>
                                                                                                <option <#if (trade.quantity?string == 'BHD')>selected="selected"</#if> value="BHD">BHD</option>
                                                                                                <option <#if (trade.quantity?string == 'BND')>selected="selected"</#if> value="BND">BND</option>
                                                                                                <option <#if (trade.quantity?string == 'BRL')>selected="selected"</#if> value="BRL">BRL</option>
                                                                                                <option <#if (trade.quantity?string == 'BWP')>selected="selected"</#if> value="BWP">BWP</option>
                                                                                                <option <#if (trade.quantity?string == 'CAD')>selected="selected"</#if> value="CAD">CAD</option>
                                                                                                <option <#if (trade.quantity?string == 'CHF')>selected="selected"</#if> value="CHF">CHF</option>
                                                                                                <option <#if (trade.quantity?string == 'CLF')>selected="selected"</#if> value="CLF">CLF</option>
                                                                                                <option <#if (trade.quantity?string == 'CLP')>selected="selected"</#if> value="CLP">CLP</option>
                                                                                                <option <#if (trade.quantity?string == 'CNH')>selected="selected"</#if> value="CNH">CNH</option>
                                                                                                <option <#if (trade.quantity?string == 'CNY')>selected="selected"</#if> value="CNY">CNY</option>
                                                                                                <option <#if (trade.quantity?string == 'COP')>selected="selected"</#if> value="COP">COP</option>
                                                                                                <option <#if (trade.quantity?string == 'CZK')>selected="selected"</#if> value="CZK">CZK</option>
                                                                                                <option <#if (trade.quantity?string == 'DKK')>selected="selected"</#if> value="DKK">DKK</option>
                                                                                                <option <#if (trade.quantity?string == 'DOP')>selected="selected"</#if> value="DOP">DOP</option>
                                                                                                <option <#if (trade.quantity?string == 'EGP')>selected="selected"</#if> value="EGP">EGP</option>
                                                                                                <option <#if (trade.quantity?string == 'EUR')>selected="selected"</#if> value="EUR">EUR</option>
                                                                                                <option <#if (trade.quantity?string == 'GBP')>selected="selected"</#if> value="GBP">GBP</option>
                                                                                                <option <#if (trade.quantity?string == 'GBX')>selected="selected"</#if> value="GBX">GBX</option>
                                                                                                <option <#if (trade.quantity?string == 'GHS')>selected="selected"</#if> value="GHS">GHS</option>
                                                                                                <option <#if (trade.quantity?string == 'GMD')>selected="selected"</#if> value="GMD">GMD</option>
                                                                                                <option <#if (trade.quantity?string == 'GS')>selected="selected"</#if> value="GS">GS</option>
                                                                                                <option <#if (trade.quantity?string == 'HKD')>selected="selected"</#if> value="HKD">HKD</option>
                                                                                                <option <#if (trade.quantity?string == 'HRK')>selected="selected"</#if> value="HRK">HRK</option>
                                                                                                <option <#if (trade.quantity?string == 'HUF')>selected="selected"</#if> value="HUF">HUF</option>
                                                                                                <option <#if (trade.quantity?string == 'IDR')>selected="selected"</#if> value="IDR">IDR</option>
                                                                                                <option <#if (trade.quantity?string == 'ILS')>selected="selected"</#if> value="ILS">ILS</option>
                                                                                                <option <#if (trade.quantity?string == 'INR')>selected="selected"</#if> value="INR">INR</option>
                                                                                                <option <#if (trade.quantity?string == 'IQD')>selected="selected"</#if> value="IQD">IQD</option>
                                                                                                <option <#if (trade.quantity?string == 'JOD')>selected="selected"</#if> value="JOD">JOD</option>
                                                                                                <option <#if (trade.quantity?string == 'JPT')>selected="selected"</#if> value="JPT">JPT</option>
                                                                                                <option <#if (trade.quantity?string == 'JPY')>selected="selected"</#if> value="JPY">JPY</option>
                                                                                                <option <#if (trade.quantity?string == 'KES')>selected="selected"</#if> value="KES">KES</option>
                                                                                                <option <#if (trade.quantity?string == 'KMF')>selected="selected"</#if> value="KMF">KMF</option>
                                                                                                <option <#if (trade.quantity?string == 'KRW')>selected="selected"</#if> value="KRW">KRW</option>
                                                                                                <option <#if (trade.quantity?string == 'KWD')>selected="selected"</#if> value="KWD">KWD</option>
                                                                                                <option <#if (trade.quantity?string == 'LKR')>selected="selected"</#if> value="LKR">LKR</option>
                                                                                                <option <#if (trade.quantity?string == 'MAD')>selected="selected"</#if> value="MAD">MAD</option>
                                                                                                <option <#if (trade.quantity?string == 'MGA')>selected="selected"</#if> value="MGA">MGA</option>
                                                                                                <option <#if (trade.quantity?string == 'MOP')>selected="selected"</#if> value="MOP">MOP</option>
                                                                                                <option <#if (trade.quantity?string == 'MUR')>selected="selected"</#if> value="MUR">MUR</option>
                                                                                                <option <#if (trade.quantity?string == 'MWK')>selected="selected"</#if> value="MWK">MWK</option>
                                                                                                <option <#if (trade.quantity?string == 'MXN')>selected="selected"</#if> value="MXN">MXN</option>
                                                                                                <option <#if (trade.quantity?string == 'MYR')>selected="selected"</#if> value="MYR">MYR</option>
                                                                                                <option <#if (trade.quantity?string == 'MYZ')>selected="selected"</#if> value="MYZ">MYZ</option>
                                                                                                <option <#if (trade.quantity?string == 'MZN')>selected="selected"</#if> value="MZN">MZN</option>
                                                                                                <option <#if (trade.quantity?string == 'NAD')>selected="selected"</#if> value="NAD">NAD</option>
                                                                                                <option <#if (trade.quantity?string == 'NGN')>selected="selected"</#if> value="NGN">NGN</option>
                                                                                                <option <#if (trade.quantity?string == 'NOK')>selected="selected"</#if> value="NOK">NOK</option>
                                                                                                <option <#if (trade.quantity?string == 'NPR')>selected="selected"</#if> value="NPR">NPR</option>
                                                                                                <option <#if (trade.quantity?string == 'NZD')>selected="selected"</#if> value="NZD">NZD</option>
                                                                                                <option <#if (trade.quantity?string == 'OMR')>selected="selected"</#if> value="OMR">OMR</option>
                                                                                                <option <#if (trade.quantity?string == 'PEN')>selected="selected"</#if> value="PEN">PEN</option>
                                                                                                <option <#if (trade.quantity?string == 'PHP')>selected="selected"</#if> value="PHP">PHP</option>
                                                                                                <option <#if (trade.quantity?string == 'PKR')>selected="selected"</#if> value="PKR">PKR</option>
                                                                                                <option <#if (trade.quantity?string == 'PLN')>selected="selected"</#if> value="PLN">PLN</option>
                                                                                                <option <#if (trade.quantity?string == 'QAR')>selected="selected"</#if> value="QAR">QAR</option>
                                                                                                <option <#if (trade.quantity?string == 'RON')>selected="selected"</#if> value="RON">RON</option>
                                                                                                <option <#if (trade.quantity?string == 'RSD')>selected="selected"</#if> value="RSD">RSD</option>
                                                                                                <option <#if (trade.quantity?string == 'RUB')>selected="selected"</#if> value="RUB">RUB</option>
                                                                                                <option <#if (trade.quantity?string == 'SAR')>selected="selected"</#if> value="SAR">SAR</option>
                                                                                                <option <#if (trade.quantity?string == 'SEK')>selected="selected"</#if> value="SEK">SEK</option>
                                                                                                <option <#if (trade.quantity?string == 'SGD')>selected="selected"</#if> value="SGD">SGD</option>
                                                                                                <option <#if (trade.quantity?string == 'SGO')>selected="selected"</#if> value="SGO">SGO</option>
                                                                                                <option <#if (trade.quantity?string == 'SLL')>selected="selected"</#if> value="SLL">SLL</option>
                                                                                                <option <#if (trade.quantity?string == 'SZL')>selected="selected"</#if> value="SZL">SZL</option>
                                                                                                <option <#if (trade.quantity?string == 'THB')>selected="selected"</#if> value="THB">THB</option>
                                                                                                <option <#if (trade.quantity?string == 'TRY')>selected="selected"</#if> value="TRY">TRY</option>
                                                                                                <option <#if (trade.quantity?string == 'TWD')>selected="selected"</#if> value="TWD">TWD</option>
                                                                                                <option <#if (trade.quantity?string == 'TZS')>selected="selected"</#if> value="TZS">TZS</option>
                                                                                                <option <#if (trade.quantity?string == 'UAH')>selected="selected"</#if> value="UAH">UAH</option>
                                                                                                <option <#if (trade.quantity?string == 'UGX')>selected="selected"</#if> value="UGX">UGX</option>
                                                                                                <option <#if (trade.quantity?string == 'USD')>selected="selected"</#if> value="USD">USD</option>
                                                                                                <option <#if (trade.quantity?string == 'UYU')>selected="selected"</#if> value="UYU">UYU</option>
                                                                                                <option <#if (trade.quantity?string == 'UZS')>selected="selected"</#if> value="UZS">UZS</option>
                                                                                                <option <#if (trade.quantity?string == 'VND')>selected="selected"</#if> value="VND">VND</option>
                                                                                                <option <#if (trade.quantity?string == 'XAF')>selected="selected"</#if> value="XAF">XAF</option>
                                                                                                <option <#if (trade.quantity?string == 'XAG')>selected="selected"</#if> value="XAG">XAG</option>
                                                                                                <option <#if (trade.quantity?string == 'XAU')>selected="selected"</#if> value="XAU">XAU</option>
                                                                                                <option <#if (trade.quantity?string == 'XG4')>selected="selected"</#if> value="XG4">XG4</option>
                                                                                                <option <#if (trade.quantity?string == 'XGI')>selected="selected"</#if> value="XGI">XGI</option>
                                                                                                <option <#if (trade.quantity?string == 'XOF')>selected="selected"</#if> value="XOF">XOF</option>
                                                                                                <option <#if (trade.quantity?string == 'XOH')>selected="selected"</#if> value="XOH">XOH</option>
                                                                                                <option <#if (trade.quantity?string == 'XPD')>selected="selected"</#if> value="XPD">XPD</option>
                                                                                                <option <#if (trade.quantity?string == 'XPT')>selected="selected"</#if> value="XPT">XPT</option>
                                                                                                <option <#if (trade.quantity?string == 'XRH')>selected="selected"</#if> value="XRH">XRH</option>
                                                                                                <option <#if (trade.quantity?string == 'XUC')>selected="selected"</#if> value="XUC">XUC</option>
                                                                                                <option <#if (trade.quantity?string == 'ZAR')>selected="selected"</#if> value="ZAR">ZAR</option>
                                                                                                <option <#if (trade.quantity?string == 'ZMW')>selected="selected"</#if> value="ZMW">ZMW</option>
                                                                                                <option <#if (trade.quantity?string == 'ZWL')>selected="selected"</#if> value="ZWL">ZWL</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Net Amount</label>
                                                                                        <div class="col-lg-6">
                                                                                            <input type="text" class="form-control" id="trade_info_17" name = "net_amount" value="${trade.net_amount}">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Price</label>
                                                                                        <div class="col-lg-6">
                                                                                            <input type="text" class="form-control" id="trade_info_18" name = "price" value="${trade.price}">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Option Type</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_19" name = "option_type">
                                                                                                <option <#if (trade.option_type?string == 'Call')>selected="selected"</#if> value="Call">Call</option>
                                                                                                <option <#if (trade.option_type?string == 'Put')>selected="selected"</#if> value="Put">Put</option>
                                                                                                <option <#if (trade.option_type?string == 'Strd')>selected="selected"</#if> value="Strd">Strd</option>
                                                                                                <option <#if (trade.option_type?string == 'Other')>selected="selected"</#if> value="Other">Other</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Strike Price</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_20" name = "strike_price">
                                                                                                <option <#if (trade.strike_price?string == 'Pending')>selected="selected"</#if> value="Pending">Pending</option>
                                                                                                <option <#if (trade.strike_price?string == 'Percentage')>selected="selected"</#if> value="Percentage">Percentage</option>
                                                                                                <option <#if (trade.strike_price?string == 'PendingPercentage')>selected="selected"</#if> value="PendingPercentage">PendingPercentage</option>
                                                                                                <option <#if (trade.strike_price?string == 'Monetary')>selected="selected"</#if> value="Monetary">Monetary</option>
                                                                                                <option <#if (trade.strike_price?string == 'NoAvailable')>selected="selected"</#if> value="NoAvailable">NoAvailable</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Option Exercise Style</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_21" name = "option_exercise_style">
                                                                                                <option <#if (trade.option_exercise_style?string == 'AMER')>selected="selected"</#if> value="AMER">AMER</option>
                                                                                                <option <#if (trade.option_exercise_style?string == 'BERM')>selected="selected"</#if> value="BERM">BERM</option>
                                                                                                <option <#if (trade.option_exercise_style?string == 'EURO')>selected="selected"</#if> value="EURO">EURO</option>
                                                                                                <option <#if (trade.option_exercise_style?string == 'OTHR')>selected="selected"</#if> value="OTHR">OTHR</option>
                                                                                                <option <#if (trade.option_exercise_style?string == '')>selected="selected"</#if> value="NA">NA</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Delivery Type</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_22" name = "delivery_type">
                                                                                                <option <#if (trade.delivery_type?string == 'CASH')>selected="selected"</#if> value="CASH">CASH</option>
                                                                                                <option <#if (trade.delivery_type?string == 'PHYS')>selected="selected"</#if> value="PHYS">PHYS</option>
                                                                                                <option <#if (trade.delivery_type?string == 'OPTL')>selected="selected"</#if> value="OPTL">OPTL</option>
                                                                                                <option <#if (trade.delivery_type?string == 'R')>selected="selected"</#if> value="R">R</option>
                                                                                                <option <#if (trade.delivery_type?string == '')>selected="selected"</#if> value="NA">NA</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Deriv Notional Change</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_23" name = "deriv_notional_change">
                                                                                                <option <#if (trade.deriv_notional_change?string == 'Decrease')>selected="selected"</#if> value="Decrease">Decrease</option>
                                                                                                <option <#if (trade.deriv_notional_change?string == 'Increase')>selected="selected"</#if> value="Increase">Increase</option>
                                                                                                <option <#if (trade.deriv_notional_change?string == '')>selected="selected"</#if> value="NA">NA</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Upfront Payment</label>
                                                                                        <div class="col-lg-6">
                                                                                            <input name="upfront_payment" type="text" class="form-control" id="trade_info_24" value="${trade.upfront_payment}">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Upfront Payment Currency</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_25" name="upfront_payment_currency">
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'AED')>selected="selected"</#if> value="AED">AED</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'AUD')>selected="selected"</#if> value="AUD">AUD</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'BRL')>selected="selected"</#if> value="BRL">BRL</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'CAD')>selected="selected"</#if> value="CAD">CAD</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'CHF')>selected="selected"</#if> value="CHF">CHF</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'CNY')>selected="selected"</#if> value="CNY">CNY</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'COP')>selected="selected"</#if> value="COP">COP</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'CZK')>selected="selected"</#if> value="CZK">CZK</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'EUR')>selected="selected"</#if> value="EUR">EUR</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'GBI')>selected="selected"</#if> value="GBI">GBI</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'GBP')>selected="selected"</#if> value="GBP">GBP</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'GHS')>selected="selected"</#if> value="GHS">GHS</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'HKD')>selected="selected"</#if> value="HKD">HKD</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'HUF')>selected="selected"</#if> value="HUF">HUF</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'IDR')>selected="selected"</#if> value="IDR">IDR</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'INR')>selected="selected"</#if> value="INR">INR</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'JPY')>selected="selected"</#if> value="JPY">JPY</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'KES')>selected="selected"</#if> value="KES">KES</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'KRW')>selected="selected"</#if> value="KRW">KRW</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'MXN')>selected="selected"</#if> value="MXN">MXN</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'MYR')>selected="selected"</#if> value="MYR">MYR</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'NOK')>selected="selected"</#if> value="NOK">NOK</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'NZD')>selected="selected"</#if> value="NZD">NZD</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'PLN')>selected="selected"</#if> value="PLN">PLN</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'RUB')>selected="selected"</#if> value="RUB">RUB</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'SAR')>selected="selected"</#if> value="SAR">SAR</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'SEK')>selected="selected"</#if> value="SEK">SEK</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'SGD')>selected="selected"</#if> value="SGD">SGD</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'TRY')>selected="selected"</#if> value="TRY">TRY</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'TWD')>selected="selected"</#if> value="TWD">TWD</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'USD')>selected="selected"</#if> value="USD">USD</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'XAG')>selected="selected"</#if> value="XAG">XAG</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'XAU')>selected="selected"</#if> value="XAU">XAU</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'XPD')>selected="selected"</#if> value="XPD">XPD</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'XPT')>selected="selected"</#if> value="XPT">XPT</option>
                                                                                                <option <#if (trade.upfront_payment_currency?string == 'ZAR')>selected="selected"</#if> value="ZAR">ZAR</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Price Multiplier</label>
                                                                                        <div class="col-lg-6">
                                                                                            <input name="price_multiplier" type="text" class="form-control" value="${trade.price_multiplier}">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Sftr Ind</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_27" name = "sftr_ind">
                                                                                                <option <#if (trade.sftr_ind?string == '1')>selected="selected"</#if> value="1">1</option>
                                                                                                <option <#if (trade.sftr_ind?string == '0')>selected="selected"</#if> value="0">0</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Waiver Ind</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_28" name = "waiver_ind">
                                                                                                <option <#if (trade.waiver_ind?string == 'ILQD')>selected="selected"</#if> value="ILQD">ILQD</option>
                                                                                                <option <#if (trade.waiver_ind?string == 'ILQD,ILQD')>selected="selected"</#if> value="ILQD,ILQD">ILQD,ILQD</option>
                                                                                                <option <#if (trade.waiver_ind?string == 'ILQD,SIZE')>selected="selected"</#if> value="ILQD,SIZE">ILQD,SIZE</option>
                                                                                                <option <#if (trade.waiver_ind?string == 'LRGS2')>selected="selected"</#if> value="LRGS2">LRGS2</option>
                                                                                                <option <#if (trade.waiver_ind?string == 'LRGS2,ILQD')>selected="selected"</#if> value="LRGS2,ILQD">LRGS2,ILQD</option>
                                                                                                <option <#if (trade.waiver_ind?string == 'LRGS2,SIZE')>selected="selected"</#if> value="LRGS2,SIZE">LRGS2,SIZE</option>
                                                                                                <option <#if (trade.waiver_ind?string == 'RFPT')>selected="selected"</#if> value="RFPT">RFPT</option>
                                                                                                <option <#if (trade.waiver_ind?string == 'RFPT,ILQD')>selected="selected"</#if> value="RFPT,ILQD">RFPT,ILQD</option>
                                                                                                <option <#if (trade.waiver_ind?string == 'RFPT,SIZE')>selected="selected"</#if> value="RFPT,SIZE">RFPT,SIZE</option>
                                                                                                <option <#if (trade.waiver_ind?string == 'SIZE')>selected="selected"</#if> value="SIZE">SIZE</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Short Selling Ind</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_29" name = "short_selling_ind">
                                                                                                <option <#if (trade.short_selling_ind?string == 'UNDI')>selected="selected"</#if> value="UNDI">UNDI</option>
                                                                                                <option <#if (trade.short_selling_ind?string == 'SSEX')>selected="selected"</#if> value="SSEX">SSEX</option>
                                                                                                <option <#if (trade.short_selling_ind?string == 'SESH')>selected="selected"</#if> value="SESH">SESH</option>
                                                                                                <option <#if (trade.short_selling_ind?string == 'SELL')>selected="selected"</#if> value="SELL">SELL</option>
                                                                                                <option <#if (trade.short_selling_ind?string == '')>selected="selected"</#if> value="NA">NA</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Otc Post Trade Ind</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_30" name = "otc_post_trade_ind">
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND')>selected="selected"</#if> value="AMND">AMND</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:DECR')>selected="selected"</#if> value="AMND:DECR">AMND : DECR</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:DECR:ILQD')>selected="selected"</#if> value="AMND:DECR:ILQD">AMND : DECR : ILQD</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:DECR:LRGS:ILQD:SIZE')>selected="selected"</#if> value="AMND:DECR:LRGS:ILQD:SIZE">AMND : DECR : LRGS : ILQD : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:DECR:LRGS:SIZE')>selected="selected"</#if> value="AMND:DECR:LRGS:SIZE">AMND : DECR : LRGS : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:ILQD')>selected="selected"</#if> value="AMND:ILQD">AMND : ILQD</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:ILQD:SIZE')>selected="selected"</#if> value="AMND:ILQD:SIZE">AMND : ILQD : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:INCR')>selected="selected"</#if> value="AMND:INCR">AMND : INCR</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:INCR:ILQD')>selected="selected"</#if> value="AMND:INCR:ILQD">AMND : INCR : ILQD</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:INCR:ILQD:SIZE')>selected="selected"</#if> value="AMND:INCR:ILQD:SIZE">AMND : INCR : ILQD : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:INCR:LRGS:ILQD:SIZE')>selected="selected"</#if> value="AMND:INCR:LRGS:ILQD:SIZE">AMND : INCR : LRGS : ILQD : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:INCR:LRGS:SIZE')>selected="selected"</#if> value="AMND:INCR:LRGS:SIZE">AMND : INCR : LRGS : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:LRGS:ILQD:SIZE')>selected="selected"</#if> value="AMND:LRGS:ILQD:SIZE">AMND : LRGS : ILQD : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:LRGS:SIZE')>selected="selected"</#if> value="AMND:LRGS:SIZE">AMND : LRGS : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'AMND:SIZE')>selected="selected"</#if> value="AMND:SIZE">AMND : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'DECR')>selected="selected"</#if> value="DECR">DECR</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'DECR:ILQD')>selected="selected"</#if> value="DECR:ILQD">DECR : ILQD</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'DECR:LRGS:ILQD:SIZE')>selected="selected"</#if> value="DECR:LRGS:ILQD:SIZE">DECR : LRGS : ILQD : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'DECR:LRGS:SIZE')>selected="selected"</#if> value="DECR:LRGS:SIZE">DECR : LRGS : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'ILQD')>selected="selected"</#if> value="ILQD">ILQD</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'ILQD:ACTX')>selected="selected"</#if> value="ILQD:ACTX">ILQD : ACTX</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'ILQD:SIZE')>selected="selected"</#if> value="ILQD:SIZE">ILQD : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'LRGS')>selected="selected"</#if> value="LRGS">LRGS</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'LRGS:ILQD:SIZE')>selected="selected"</#if> value="LRGS:ILQD:SIZE">LRGS : ILQD : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'LRGS:ILQD:SIZE:ACTX')>selected="selected"</#if> value="LRGS:ILQD:SIZE:ACTX">LRGS : ILQD : SIZE : ACTX</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'LRGS:SIZE')>selected="selected"</#if> value="LRGS:SIZE">LRGS : SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'LRGS:SIZE:ACTX')>selected="selected"</#if> value="LRGS:SIZE:ACTX">LRGS : SIZE : ACTX</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'SIZE')>selected="selected"</#if> value="SIZE">SIZE</option>
                                                                                                <option <#if (trade.otc_post_trade_ind?string == 'SIZE:ACTX')>selected="selected"</#if> value="SIZE:ACTX">SIZE : ACTX</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Commodity Deriv Ind</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_31" name = "commodity_deriv_ind">
                                                                                                <option <#if (trade.commodity_deriv_ind?string == '1')>selected="selected"</#if> value="1">1</option>
                                                                                                <option <#if (trade.commodity_deriv_ind?string == '0')>selected="selected"</#if> value="0" selected="selected">0</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Excuting entity</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_32" name = "excuting_entity">
                                                                                                <option <#if (trade.excuting_entity?string == '213800IZX4SV7RCMNE25')>selected="selected"</#if> value="213800IZX4SV7RCMNE25">213800IZX4SV7RCMNE25</option>
                                                                                                <option <#if (trade.excuting_entity?string == '2138007187UGEtOBY710')>selected="selected"</#if> value="2138007187UGEtOBY710">2138007187UGEtOBY710</option>
                                                                                                <option <#if (trade.excuting_entity?string == '25490022T8SZMUPAZM15')>selected="selected"</#if> value="25490022T8SZMUPAZM15">25490022T8SZMUPAZM15</option>
                                                                                                <option <#if (trade.excuting_entity?string == '25490030VHP330DMKT69')>selected="selected"</#if> value="25490030VHP330DMKT69">25490030VHP330DMKT69</option>
                                                                                                <option <#if (trade.excuting_entity?string == '2549003YGUN/4HYXE454')>selected="selected"</#if> value="2549003YGUN/4HYXE454">2549003YGUN/4HYXE454</option>
                                                                                                <option <#if (trade.excuting_entity?string == '2549007VITN8D0159J38')>selected="selected"</#if> value="2549007VITN8D0159J38">2549007VITN8D0159J38</option>
                                                                                                <option <#if (trade.excuting_entity?string == '254900¢XIT0JDKIHU681')>selected="selected"</#if> value="254900¢XIT0JDKIHU681">254900¢XIT0JDKIHU681</option>
                                                                                                <option <#if (trade.excuting_entity?string == '254900NZQKE939N6BF95')>selected="selected"</#if> value="254900NZQKE939N6BF95">254900NZQKE939N6BF95</option>
                                                                                                <option <#if (trade.excuting_entity?string == '254900]4GUMH2X2ZKR94')>selected="selected"</#if> value="254900]4GUMH2X2ZKR94">254900]4GUMH2X2ZKR94</option>
                                                                                                <option <#if (trade.excuting_entity?string == '2549003XW27PLB87UT53')>selected="selected"</#if> value="2549003XW27PLB87UT53">2549003XW27PLB87UT53</option>
                                                                                                <option <#if (trade.excuting_entity?string == '254900L0RXIN1D4ZUY76')>selected="selected"</#if> value="254900L0RXIN1D4ZUY76">254900L0RXIN1D4ZUY76</option>
                                                                                                <option <#if (trade.excuting_entity?string == '254900MLZK6GJCJ7YQ75')>selected="selected"</#if> value="254900MLZK6GJCJ7YQ75">254900MLZK6GJCJ7YQ75</option>
                                                                                                <option <#if (trade.excuting_entity?string == '254900MT7DC77WH5GE51')>selected="selected"</#if> value="254900MT7DC77WH5GE51">254900MT7DC77WH5GE51</option>
                                                                                                <option <#if (trade.excuting_entity?string == '2549000903AU0358LI06')>selected="selected"</#if> value="2549000903AU0358LI06">2549000903AU0358LI06</option>
                                                                                                <option <#if (trade.excuting_entity?string == '254900SA4MUWBPPSVA28')>selected="selected"</#if> value="254900SA4MUWBPPSVA28">254900SA4MUWBPPSVA28</option>
                                                                                                <option <#if (trade.excuting_entity?string == '254900WYTOSH5CMVKR91')>selected="selected"</#if> value="254900WYTOSH5CMVKR91">254900WYTOSH5CMVKR91</option>
                                                                                                <option <#if (trade.excuting_entity?string == '254900716RVF4Z5V1A58')>selected="selected"</#if> value="254900716RVF4Z5V1A58">254900716RVF4Z5V1A58</option>
                                                                                                <option <#if (trade.excuting_entity?string == '54930016MQBB2N05NB47')>selected="selected"</#if> value="54930016MQBB2N05NB47">54930016MQBB2N05NB47</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300247QDZHDI30A83')>selected="selected"</#if> value="549300247QDZHDI30A83">549300247QDZHDI30A83</option>
                                                                                                <option <#if (trade.excuting_entity?string == '5493002W420BT9C14552')>selected="selected"</#if> value="5493002W420BT9C14552">5493002W420BT9C14552</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300440RDPODF3OG15')>selected="selected"</#if> value="549300440RDPODF3OG15">549300440RDPODF3OG15</option>
                                                                                                <option <#if (trade.excuting_entity?string == '54930046DYEYLX3RUR52')>selected="selected"</#if> value="54930046DYEYLX3RUR52">54930046DYEYLX3RUR52</option>
                                                                                                <option <#if (trade.excuting_entity?string == '5493004GZFY008YRNS98')>selected="selected"</#if> value="5493004GZFY008YRNS98">5493004GZFY008YRNS98</option>
                                                                                                <option <#if (trade.excuting_entity?string == '5493007VY27WWF8FF542')>selected="selected"</#if> value="5493007VY27WWF8FF542">5493007VY27WWF8FF542</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300CYJBF26U1AR886')>selected="selected"</#if> value="549300CYJBF26U1AR886">549300CYJBF26U1AR886</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300DGSLALKOXQ4V30')>selected="selected"</#if> value="549300DGSLALKOXQ4V30">549300DGSLALKOXQ4V30</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300DRD7CCI4121590')>selected="selected"</#if> value="549300DRD7CCI4121590">549300DRD7CCI4121590</option>
                                                                                                <option <#if (trade.excuting_entity?string == '5493003778G2QBI8KD48')>selected="selected"</#if> value="5493003778G2QBI8KD48">5493003778G2QBI8KD48</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300JUM4009TZRX045')>selected="selected"</#if> value="549300JUM4009TZRX045">549300JUM4009TZRX045</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300LTA4EIL7Q64454')>selected="selected"</#if> value="549300LTA4EIL7Q64454">549300LTA4EIL7Q64454</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW28')>selected="selected"</#if> value="549300MDYVVHJ8D1DW28">549300MDYVVHJ8D1DW28</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW29')>selected="selected"</#if> value="549300MDYVVHJ8D1DW29">549300MDYVVHJ8D1DW29</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW30')>selected="selected"</#if> value="549300MDYVVHJ8D1DW30">549300MDYVVHJ8D1DW30</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW31')>selected="selected"</#if> value="549300MDYVVHJ8D1DW31">549300MDYVVHJ8D1DW31</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW32')>selected="selected"</#if> value="549300MDYVVHJ8D1DW32">549300MDYVVHJ8D1DW32</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW33')>selected="selected"</#if> value="549300MDYVVHJ8D1DW33">549300MDYVVHJ8D1DW33</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW34')>selected="selected"</#if> value="549300MDYVVHJ8D1DW34">549300MDYVVHJ8D1DW34</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW35')>selected="selected"</#if> value="549300MDYVVHJ8D1DW35">549300MDYVVHJ8D1DW35</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW36')>selected="selected"</#if> value="549300MDYVVHJ8D1DW36">549300MDYVVHJ8D1DW36</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW37')>selected="selected"</#if> value="549300MDYVVHJ8D1DW37">549300MDYVVHJ8D1DW37</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW38')>selected="selected"</#if> value="549300MDYVVHJ8D1DW38">549300MDYVVHJ8D1DW38</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW39')>selected="selected"</#if> value="549300MDYVVHJ8D1DW39">549300MDYVVHJ8D1DW39</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW40')>selected="selected"</#if> value="549300MDYVVHJ8D1DW40">549300MDYVVHJ8D1DW40</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW41')>selected="selected"</#if> value="549300MDYVVHJ8D1DW41">549300MDYVVHJ8D1DW41</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW42')>selected="selected"</#if> value="549300MDYVVHJ8D1DW42">549300MDYVVHJ8D1DW42</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW43')>selected="selected"</#if> value="549300MDYVVHJ8D1DW43">549300MDYVVHJ8D1DW43</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW44')>selected="selected"</#if> value="549300MDYVVHJ8D1DW44">549300MDYVVHJ8D1DW44</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW45')>selected="selected"</#if> value="549300MDYVVHJ8D1DW45">549300MDYVVHJ8D1DW45</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW46')>selected="selected"</#if> value="549300MDYVVHJ8D1DW46">549300MDYVVHJ8D1DW46</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW47')>selected="selected"</#if> value="549300MDYVVHJ8D1DW47">549300MDYVVHJ8D1DW47</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW48')>selected="selected"</#if> value="549300MDYVVHJ8D1DW48">549300MDYVVHJ8D1DW48</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW49')>selected="selected"</#if> value="549300MDYVVHJ8D1DW49">549300MDYVVHJ8D1DW49</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW50')>selected="selected"</#if> value="549300MDYVVHJ8D1DW50">549300MDYVVHJ8D1DW50</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW51')>selected="selected"</#if> value="549300MDYVVHJ8D1DW51">549300MDYVVHJ8D1DW51</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW52')>selected="selected"</#if> value="549300MDYVVHJ8D1DW52">549300MDYVVHJ8D1DW52</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW53')>selected="selected"</#if> value="549300MDYVVHJ8D1DW53">549300MDYVVHJ8D1DW53</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW54')>selected="selected"</#if> value="549300MDYVVHJ8D1DW54">549300MDYVVHJ8D1DW54</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW55')>selected="selected"</#if> value="549300MDYVVHJ8D1DW55">549300MDYVVHJ8D1DW55</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW56')>selected="selected"</#if> value="549300MDYVVHJ8D1DW56">549300MDYVVHJ8D1DW56</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW57')>selected="selected"</#if> value="549300MDYVVHJ8D1DW57">549300MDYVVHJ8D1DW57</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW58')>selected="selected"</#if> value="549300MDYVVHJ8D1DW58">549300MDYVVHJ8D1DW58</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW59')>selected="selected"</#if> value="549300MDYVVHJ8D1DW59">549300MDYVVHJ8D1DW59</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW60')>selected="selected"</#if> value="549300MDYVVHJ8D1DW60">549300MDYVVHJ8D1DW60</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW61')>selected="selected"</#if> value="549300MDYVVHJ8D1DW61">549300MDYVVHJ8D1DW61</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW62')>selected="selected"</#if> value="549300MDYVVHJ8D1DW62">549300MDYVVHJ8D1DW62</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW63')>selected="selected"</#if> value="549300MDYVVHJ8D1DW63">549300MDYVVHJ8D1DW63</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW64')>selected="selected"</#if> value="549300MDYVVHJ8D1DW64">549300MDYVVHJ8D1DW64</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW65')>selected="selected"</#if> value="549300MDYVVHJ8D1DW65">549300MDYVVHJ8D1DW65</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW66')>selected="selected"</#if> value="549300MDYVVHJ8D1DW66">549300MDYVVHJ8D1DW66</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW67')>selected="selected"</#if> value="549300MDYVVHJ8D1DW67">549300MDYVVHJ8D1DW67</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW68')>selected="selected"</#if> value="549300MDYVVHJ8D1DW68">549300MDYVVHJ8D1DW68</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW69')>selected="selected"</#if> value="549300MDYVVHJ8D1DW69">549300MDYVVHJ8D1DW69</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW70')>selected="selected"</#if> value="549300MDYVVHJ8D1DW70">549300MDYVVHJ8D1DW70</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW71')>selected="selected"</#if> value="549300MDYVVHJ8D1DW71">549300MDYVVHJ8D1DW71</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW72')>selected="selected"</#if> value="549300MDYVVHJ8D1DW72">549300MDYVVHJ8D1DW72</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW73')>selected="selected"</#if> value="549300MDYVVHJ8D1DW73">549300MDYVVHJ8D1DW73</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW74')>selected="selected"</#if> value="549300MDYVVHJ8D1DW74">549300MDYVVHJ8D1DW74</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW75')>selected="selected"</#if> value="549300MDYVVHJ8D1DW75">549300MDYVVHJ8D1DW75</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW76')>selected="selected"</#if> value="549300MDYVVHJ8D1DW76">549300MDYVVHJ8D1DW76</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW77')>selected="selected"</#if> value="549300MDYVVHJ8D1DW77">549300MDYVVHJ8D1DW77</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW78')>selected="selected"</#if> value="549300MDYVVHJ8D1DW78">549300MDYVVHJ8D1DW78</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW79')>selected="selected"</#if> value="549300MDYVVHJ8D1DW79">549300MDYVVHJ8D1DW79</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW80')>selected="selected"</#if> value="549300MDYVVHJ8D1DW80">549300MDYVVHJ8D1DW80</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW81')>selected="selected"</#if> value="549300MDYVVHJ8D1DW81">549300MDYVVHJ8D1DW81</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW82')>selected="selected"</#if> value="549300MDYVVHJ8D1DW82">549300MDYVVHJ8D1DW82</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW83')>selected="selected"</#if> value="549300MDYVVHJ8D1DW83">549300MDYVVHJ8D1DW83</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW84')>selected="selected"</#if> value="549300MDYVVHJ8D1DW84">549300MDYVVHJ8D1DW84</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW85')>selected="selected"</#if> value="549300MDYVVHJ8D1DW85">549300MDYVVHJ8D1DW85</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW86')>selected="selected"</#if> value="549300MDYVVHJ8D1DW86">549300MDYVVHJ8D1DW86</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW87')>selected="selected"</#if> value="549300MDYVVHJ8D1DW87">549300MDYVVHJ8D1DW87</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW88')>selected="selected"</#if> value="549300MDYVVHJ8D1DW88">549300MDYVVHJ8D1DW88</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW89')>selected="selected"</#if> value="549300MDYVVHJ8D1DW89">549300MDYVVHJ8D1DW89</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW90')>selected="selected"</#if> value="549300MDYVVHJ8D1DW90">549300MDYVVHJ8D1DW90</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW91')>selected="selected"</#if> value="549300MDYVVHJ8D1DW91">549300MDYVVHJ8D1DW91</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW92')>selected="selected"</#if> value="549300MDYVVHJ8D1DW92">549300MDYVVHJ8D1DW92</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW93')>selected="selected"</#if> value="549300MDYVVHJ8D1DW93">549300MDYVVHJ8D1DW93</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW94')>selected="selected"</#if> value="549300MDYVVHJ8D1DW94">549300MDYVVHJ8D1DW94</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW95')>selected="selected"</#if> value="549300MDYVVHJ8D1DW95">549300MDYVVHJ8D1DW95</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW96')>selected="selected"</#if> value="549300MDYVVHJ8D1DW96">549300MDYVVHJ8D1DW96</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW97')>selected="selected"</#if> value="549300MDYVVHJ8D1DW97">549300MDYVVHJ8D1DW97</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW98')>selected="selected"</#if> value="549300MDYVVHJ8D1DW98">549300MDYVVHJ8D1DW98</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW99')>selected="selected"</#if> value="549300MDYVVHJ8D1DW99">549300MDYVVHJ8D1DW99</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW100')>selected="selected"</#if> value="549300MDYVVHJ8D1DW100">549300MDYVVHJ8D1DW100</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW101')>selected="selected"</#if> value="549300MDYVVHJ8D1DW101">549300MDYVVHJ8D1DW101</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW102')>selected="selected"</#if> value="549300MDYVVHJ8D1DW102">549300MDYVVHJ8D1DW102</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW103')>selected="selected"</#if> value="549300MDYVVHJ8D1DW103">549300MDYVVHJ8D1DW103</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW104')>selected="selected"</#if> value="549300MDYVVHJ8D1DW104">549300MDYVVHJ8D1DW104</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW105')>selected="selected"</#if> value="549300MDYVVHJ8D1DW105">549300MDYVVHJ8D1DW105</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW106')>selected="selected"</#if> value="549300MDYVVHJ8D1DW106">549300MDYVVHJ8D1DW106</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW107')>selected="selected"</#if> value="549300MDYVVHJ8D1DW107">549300MDYVVHJ8D1DW107</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW108')>selected="selected"</#if> value="549300MDYVVHJ8D1DW108">549300MDYVVHJ8D1DW108</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW109')>selected="selected"</#if> value="549300MDYVVHJ8D1DW109">549300MDYVVHJ8D1DW109</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW110')>selected="selected"</#if> value="549300MDYVVHJ8D1DW110">549300MDYVVHJ8D1DW110</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW111')>selected="selected"</#if> value="549300MDYVVHJ8D1DW111">549300MDYVVHJ8D1DW111</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW112')>selected="selected"</#if> value="549300MDYVVHJ8D1DW112">549300MDYVVHJ8D1DW112</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW113')>selected="selected"</#if> value="549300MDYVVHJ8D1DW113">549300MDYVVHJ8D1DW113</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW114')>selected="selected"</#if> value="549300MDYVVHJ8D1DW114">549300MDYVVHJ8D1DW114</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW115')>selected="selected"</#if> value="549300MDYVVHJ8D1DW115">549300MDYVVHJ8D1DW115</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW116')>selected="selected"</#if> value="549300MDYVVHJ8D1DW116">549300MDYVVHJ8D1DW116</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW117')>selected="selected"</#if> value="549300MDYVVHJ8D1DW117">549300MDYVVHJ8D1DW117</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW118')>selected="selected"</#if> value="549300MDYVVHJ8D1DW118">549300MDYVVHJ8D1DW118</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW119')>selected="selected"</#if> value="549300MDYVVHJ8D1DW119">549300MDYVVHJ8D1DW119</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW120')>selected="selected"</#if> value="549300MDYVVHJ8D1DW120">549300MDYVVHJ8D1DW120</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW121')>selected="selected"</#if> value="549300MDYVVHJ8D1DW121">549300MDYVVHJ8D1DW121</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW122')>selected="selected"</#if> value="549300MDYVVHJ8D1DW122">549300MDYVVHJ8D1DW122</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW123')>selected="selected"</#if> value="549300MDYVVHJ8D1DW123">549300MDYVVHJ8D1DW123</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW124')>selected="selected"</#if> value="549300MDYVVHJ8D1DW124">549300MDYVVHJ8D1DW124</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW125')>selected="selected"</#if> value="549300MDYVVHJ8D1DW125">549300MDYVVHJ8D1DW125</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW126')>selected="selected"</#if> value="549300MDYVVHJ8D1DW126">549300MDYVVHJ8D1DW126</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW127')>selected="selected"</#if> value="549300MDYVVHJ8D1DW127">549300MDYVVHJ8D1DW127</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW128')>selected="selected"</#if> value="549300MDYVVHJ8D1DW128">549300MDYVVHJ8D1DW128</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW129')>selected="selected"</#if> value="549300MDYVVHJ8D1DW129">549300MDYVVHJ8D1DW129</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW130')>selected="selected"</#if> value="549300MDYVVHJ8D1DW130">549300MDYVVHJ8D1DW130</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW131')>selected="selected"</#if> value="549300MDYVVHJ8D1DW131">549300MDYVVHJ8D1DW131</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW132')>selected="selected"</#if> value="549300MDYVVHJ8D1DW132">549300MDYVVHJ8D1DW132</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW133')>selected="selected"</#if> value="549300MDYVVHJ8D1DW133">549300MDYVVHJ8D1DW133</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW134')>selected="selected"</#if> value="549300MDYVVHJ8D1DW134">549300MDYVVHJ8D1DW134</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW135')>selected="selected"</#if> value="549300MDYVVHJ8D1DW135">549300MDYVVHJ8D1DW135</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300MDYVVHJ8D1DW136')>selected="selected"</#if> value="549300MDYVVHJ8D1DW136">549300MDYVVHJ8D1DW136</option>
                                                                                                <option <#if (trade.excuting_entity?string == '54930001LQYCQ7G1IM57')>selected="selected"</#if> value="54930001LQYCQ7G1IM57">54930001LQYCQ7G1IM57</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300P08UORMR8IFS20')>selected="selected"</#if> value="549300P08UORMR8IFS20">549300P08UORMR8IFS20</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300Q00QU7BNARF391')>selected="selected"</#if> value="549300Q00QU7BNARF391">549300Q00QU7BNARF391</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300Q9EATCGRJBFQ89')>selected="selected"</#if> value="549300Q9EATCGRJBFQ89">549300Q9EATCGRJBFQ89</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300QJE01B92LSHZ06')>selected="selected"</#if> value="549300QJE01B92LSHZ06">549300QJE01B92LSHZ06</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300R0Q58QYRNZLS10')>selected="selected"</#if> value="549300R0Q58QYRNZLS10">549300R0Q58QYRNZLS10</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300RBHWW5EJIRG629')>selected="selected"</#if> value="549300RBHWW5EJIRG629">549300RBHWW5EJIRG629</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300RBM4G44LYTMM82')>selected="selected"</#if> value="549300RBM4G44LYTMM82">549300RBM4G44LYTMM82</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300RLNUU3GJS6MK84')>selected="selected"</#if> value="549300RLNUU3GJS6MK84">549300RLNUU3GJS6MK84</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300SU7VZY2XMGCD79')>selected="selected"</#if> value="549300SU7VZY2XMGCD79">549300SU7VZY2XMGCD79</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300U4J5NBE08DCV24')>selected="selected"</#if> value="549300U4J5NBE08DCV24">549300U4J5NBE08DCV24</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300V1V3MFDTT08Q77')>selected="selected"</#if> value="549300V1V3MFDTT08Q77">549300V1V3MFDTT08Q77</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300VGE7QN15BPTZ72')>selected="selected"</#if> value="549300VGE7QN15BPTZ72">549300VGE7QN15BPTZ72</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300VJGFAO55EWKF41')>selected="selected"</#if> value="549300VJGFAO55EWKF41">549300VJGFAO55EWKF41</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300W7CNYGJ68XGD27')>selected="selected"</#if> value="549300W7CNYGJ68XGD27">549300W7CNYGJ68XGD27</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300WDT1HWUMTUW770')>selected="selected"</#if> value="549300WDT1HWUMTUW770">549300WDT1HWUMTUW770</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300WFGKTC3MGDCX95')>selected="selected"</#if> value="549300WFGKTC3MGDCX95">549300WFGKTC3MGDCX95</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300XJESP6341F9L82')>selected="selected"</#if> value="549300XJESP6341F9L82">549300XJESP6341F9L82</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300YTOMKUNPUTB551')>selected="selected"</#if> value="549300YTOMKUNPUTB551">549300YTOMKUNPUTB551</option>
                                                                                                <option <#if (trade.excuting_entity?string == '549300Z02855WTVM0K61')>selected="selected"</#if> value="549300Z02855WTVM0K61">549300Z02855WTVM0K61</option>
                                                                                                <option <#if (trade.excuting_entity?string == 'NUXTG47HHHM1K2LOSG39')>selected="selected"</#if> value="NUXTG47HHHM1K2LOSG39">NUXTG47HHHM1K2LOSG39</option>
                                                                                                <option <#if (trade.excuting_entity?string == 'RILF074KP1CM8P6PCT96')>selected="selected"</#if> value="RILF074KP1CM8P6PCT96">RILF074KP1CM8P6PCT96</option>
                                                                                                <option <#if (trade.excuting_entity?string == 'U4LOSYZ7VGAW355F2G91')>selected="selected"</#if> value="U4LOSYZ7VGAW355F2G91">U4LOSYZ7VGAW355F2G91</option>
                                                                                                <option <#if (trade.excuting_entity?string == 'X5AV1MBDXGRPX5UGMX13')>selected="selected"</#if> value="X5AV1MBDXGRPX5UGMX13">X5AV1MBDXGRPX5UGMX13</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Manual Replay Status</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_33" name = "manual_replay_status">
                                                                                                <option <#if (trade.manual_replay_status?string == '1')>selected="selected"</#if> value="1">1</option>
                                                                                                <option <#if (trade.manual_replay_status?string == '0')>selected="selected"</#if> value="0">0</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Routing To</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_34" name = "routing_to">
                                                                                                <option <#if (trade.routing_to?string == 'Bloomberg-APA')>selected="selected"</#if> value="Bloomberg-APA">Bloomberg-APA</option>
                                                                                                <option <#if (trade.routing_to?string == 'Bloomberg-APA|ORCID')>selected="selected"</#if> value="Bloomberg-APA|ORCID">Bloomberg-APA|ORCID</option>
                                                                                                <option <#if (trade.routing_to?string == 'Bloomberg-APA|UnaVista')>selected="selected"</#if> value="Bloomberg-APA|UnaVista">Bloomberg-APA|UnaVista</option>
                                                                                                <option <#if (trade.routing_to?string == 'Bloomberg-APA|UnaVista|ORCID')>selected="selected"</#if> value="Bloomberg-APA|UnaVista|ORCID">Bloomberg-APA|UnaVista|ORCID</option>
                                                                                                <option <#if (trade.routing_to?string == 'Nex-APA')>selected="selected"</#if> value="Nex-APA">Nex-APA</option>
                                                                                                <option <#if (trade.routing_to?string == 'Nex-APA|ORCID')>selected="selected"</#if> value="Nex-APA|ORCID">Nex-APA|ORCID</option>
                                                                                                <option <#if (trade.routing_to?string == 'Nex-APA|UnaVista')>selected="selected"</#if> value="Nex-APA|UnaVista">Nex-APA|UnaVista</option>
                                                                                                <option <#if (trade.routing_to?string == 'Nex-APA|UnaVista|ORCID')>selected="selected"</#if> value="Nex-APA|UnaVista|ORCID">Nex-APA|UnaVista|ORCID</option>
                                                                                                <option <#if (trade.routing_to?string == 'ORCID')>selected="selected"</#if> value="ORCID">ORCID</option>
                                                                                                <option <#if (trade.routing_to?string == 'Tradeweb-APA-FCA|ORCID')>selected="selected"</#if> value="Tradeweb-APA-FCA|ORCID">Tradeweb-APA-FCA|ORCID</option>
                                                                                                <option <#if (trade.routing_to?string == 'Tradeweb-APA-FCA|UnaVista|ORCID')>selected="selected"</#if> value="Tradeweb-APA-FCA|UnaVista|ORCID">Tradeweb-APA-FCA|UnaVista|ORCID</option>
                                                                                                <option <#if (trade.routing_to?string == 'Tradeweb-APA|UnaVista|ORCID')>selected="selected"</#if> value="Tradeweb-APA|UnaVista|ORCID">Tradeweb-APA|UnaVista|ORCID</option>
                                                                                                <option <#if (trade.routing_to?string == 'UnaVista')>selected="selected"</#if> value="UnaVista">UnaVista</option>
                                                                                                <option <#if (trade.routing_to?string == 'UnaVista-FCA|ORCID')>selected="selected"</#if> value="UnaVista-FCA|ORCID">UnaVista-FCA|ORCID</option>
                                                                                                <option <#if (trade.routing_to?string == 'UnaVista-FCA|UnaVistb|ORCID')>selected="selected"</#if> value="UnaVista-FCA|UnaVistb|ORCID">UnaVista-FCA|UnaVistb|ORCID</option>
                                                                                                <option <#if (trade.routing_to?string == 'UnaVista|ORCID')>selected="selected"</#if> value="UnaVista|ORCID">UnaVista|ORCID</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Routing To Purpose</label>
                                                                                        <div class="col-lg-6">
                                                                                            <select class="default-select wide form-control" id="trade_info_43" name = "routing_to_purpose">
                                                                                                <option <#if (trade.routing_to_purpose?string == 'ACR')>selected="selected"</#if> value="ACR">ACR</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'BEAM')>selected="selected"</#if> value="BEAM">BEAM</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'BEAM|MiFIRARMReporting|MiFIRAPAReporting')>selected="selected"</#if> value="BEAM|MiFIRARMReporting|MiFIRAPAReporting">BEAM|MiFIRARMReporting|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'BTS')>selected="selected"</#if> value="BTS">BTS</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'DQMA')>selected="selected"</#if> value="DQMA">DQMA</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'EXCEPTION_TICKETING')>selected="selected"</#if> value="EXCEPTION_TICKETING">EXCEPTION_TICKETING</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'GPTM')>selected="selected"</#if> value="GPTM">GPTM</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'GPTM|MiFTRARMReporting')>selected="selected"</#if> value="GPTM|MiFTRARMReporting">GPTM|MiFTRARMReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'GPIM|MiFIRARMReporting|MiFIRAPAReporting')>selected="selected"</#if> value="GPIM|MiFIRARMReporting|MiFIRAPAReporting">GPIM|MiFIRARMReporting|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'ISIN_SERVICE')>selected="selected"</#if> value="ISIN_SERVICE">ISIN_SERVICE</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'ISIN_SERVICE|MiFIRAPAReporting')>selected="selected"</#if> value="ISIN_SERVICE|MiFIRAPAReporting">ISIN_SERVICE|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'ISIN_SERVICE|MiFIRARMReporting')>selected="selected"</#if> value="ISIN_SERVICE|MiFIRARMReporting">ISIN_SERVICE|MiFIRARMReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'ISIN_SERVICE|MiFIRARMReporting|MiFIRAPAReporting')>selected="selected"</#if> value="ISIN_SERVICE|MiFIRARMReporting|MiFIRAPAReporting">ISIN_SERVICE|MiFIRARMReporting|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'ISIN_SERVICE|MiFIRARMReporting|MiFIRRTS23Reporting')>selected="selected"</#if> value="ISIN_SERVICE|MiFIRARMReporting|MiFIRRTS23Reporting">ISIN_SERVICE|MiFIRARMReporting|MiFIRRTS23Reporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'ISIN_SERVICE|MiFIRRIS23Reporting')>selected="selected"</#if> value="ISIN_SERVICE|MiFIRRIS23Reporting">ISIN_SERVICE|MiFIRRIS23Reporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'ISIN_SERVICE|MiFIRRTS23Reporting|MiFIRARMReporting')>selected="selected"</#if> value="ISIN_SERVICE|MiFIRRTS23Reporting|MiFIRARMReporting">ISIN_SERVICE|MiFIRRTS23Reporting|MiFIRARMReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'KOFIA')>selected="selected"</#if> value="KOFIA">KOFIA</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MAR')>selected="selected"</#if> value="MAR">MAR</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MARGINMAN')>selected="selected"</#if> value="MARGINMAN">MARGINMAN</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRAPAReporting')>selected="selected"</#if> value="MiFIRAPAReporting">MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRAPAReporting|EXCEPTION_TICKETING')>selected="selected"</#if> value="MiFIRAPAReporting|EXCEPTION_TICKETING">MiFIRAPAReporting|EXCEPTION_TICKETING</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRAPAReporting|ORCID')>selected="selected"</#if> value="MiFIRAPAReporting|ORCID">MiFIRAPAReporting|ORCID</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting')>selected="selected"</#if> value="MiFIRARMReporting">MiFIRARMReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|ACR')>selected="selected"</#if> value="MiFIRARMReporting|ACR">MiFIRARMReporting|ACR</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|ACR|MiFIRAPAReporting')>selected="selected"</#if> value="MiFIRARMReporting|ACR|MiFIRAPAReporting">MiFIRARMReporting|ACR|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|BTS')>selected="selected"</#if> value="MiFIRARMReporting|BTS">MiFIRARMReporting|BTS</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|BTS|MiFIRAPAReporting')>selected="selected"</#if> value="MiFIRARMReporting|BTS|MiFIRAPAReporting">MiFIRARMReporting|BTS|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|EXCEPTION_TICKETING')>selected="selected"</#if> value="MiFIRARMReporting|EXCEPTION_TICKETING">MiFIRARMReporting|EXCEPTION_TICKETING</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|ISIN_SERVICE')>selected="selected"</#if> value="MiFIRARMReporting|ISIN_SERVICE">MiFIRARMReporting|ISIN_SERVICE</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|ISIN_SERVICE|MiFIRAPAReporting')>selected="selected"</#if> value="MiFIRARMReporting|ISIN_SERVICE|MiFIRAPAReporting">MiFIRARMReporting|ISIN_SERVICE|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|ISIN_SERVICE|MiEIRRTS23Reporting')>selected="selected"</#if> value="MiFIRARMReporting|ISIN_SERVICE|MiEIRRTS23Reporting">MiFIRARMReporting|ISIN_SERVICE|MiEIRRTS23Reporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|MiFIRAPAReporting')>selected="selected"</#if> value="MiFIRARMReporting|MiFIRAPAReporting">MiFIRARMReporting|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|MiFIRAPAReporting|EXCEPTION_TICKETING')>selected="selected"</#if> value="MiFIRARMReporting|MiFIRAPAReporting|EXCEPTION_TICKETING">MiFIRARMReporting|MiFIRAPAReporting|EXCEPTION_TICKETING</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|MiFIRAPAReporting|ORCID')>selected="selected"</#if> value="MiFIRARMReporting|MiFIRAPAReporting|ORCID">MiFIRARMReporting|MiFIRAPAReporting|ORCID</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|MiFIRRTS23Reporting|TL_Remediation')>selected="selected"</#if> value="MiFIRARMReporting|MiFIRRTS23Reporting|TL_Remediation">MiFIRARMReporting|MiFIRRTS23Reporting|TL_Remediation</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|MiFIRRTS23Reporting|TradeLake')>selected="selected"</#if> value="MiFIRARMReporting|MiFIRRTS23Reporting|TradeLake">MiFIRARMReporting|MiFIRRTS23Reporting|TradeLake</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|ORCID')>selected="selected"</#if> value="MiFIRARMReporting|ORCID">MiFIRARMReporting|ORCID</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|RATAN')>selected="selected"</#if> value="MiFIRARMReporting|RATAN">MiFIRARMReporting|RATAN</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|TL_Remediation')>selected="selected"</#if> value="MiFIRARMReporting|TL_Remediation">MiFIRARMReporting|TL_Remediation</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|TradeLake')>selected="selected"</#if> value="MiFIRARMReporting|TradeLake">MiFIRARMReporting|TradeLake</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRARMReporting|TradeLake|MiFIRAPAReporting')>selected="selected"</#if> value="MiFIRARMReporting|TradeLake|MiFIRAPAReporting">MiFIRARMReporting|TradeLake|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRRTS23Reporting')>selected="selected"</#if> value="MiFIRRTS23Reporting">MiFIRRTS23Reporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'MiFIRRTS23Reporting|ORCID')>selected="selected"</#if> value="MiFIRRTS23Reporting|ORCID">MiFIRRTS23Reporting|ORCID</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'ORCHID')>selected="selected"</#if> value="ORCHID">ORCHID</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'ORCID')>selected="selected"</#if> value="ORCID">ORCID</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'RATAN')>selected="selected"</#if> value="RATAN">RATAN</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'RAZOR')>selected="selected"</#if> value="RAZOR">RAZOR</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'RAZOR|MiFIRARMReporting')>selected="selected"</#if> value="RAZOR|MiFIRARMReporting">RAZOR|MiFIRARMReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'RAZOR|MiFIRARMReporting|MiFIRAPAReporting')>selected="selected"</#if> value="RAZOR|MiFIRARMReporting|MiFIRAPAReporting">RAZOR|MiFIRARMReporting|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting')>selected="selected"</#if> value="SFTRTransactionReporting">SFTRTransactionReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting|EXCEPTION_TICKETING')>selected="selected"</#if> value="SFTRTransactionReporting|EXCEPTION_TICKETING">SFTRTransactionReporting|EXCEPTION_TICKETING</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting|GPTM')>selected="selected"</#if> value="SFTRTransactionReporting|GPTM">SFTRTransactionReporting|GPTM</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting|ISIN_SERVICE')>selected="selected"</#if> value="SFTRTransactionReporting|ISIN_SERVICE">SFTRTransactionReporting|ISIN_SERVICE</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting|MARTINI')>selected="selected"</#if> value="SFTRTransactionReporting|MARTINI">SFTRTransactionReporting|MARTINI</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting|MiFIRARMReporting')>selected="selected"</#if> value="SFTRTransactionReporting|MiFIRARMReporting">SFTRTransactionReporting|MiFIRARMReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting')>selected="selected"</#if> value="SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting">SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting|EXCEPTION_TICKETIN')>selected="selected"</#if> value="SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting|EXCEPTION_TICKETIN">SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting|EXCEPTION_TICKETIN</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting|ORCID')>selected="selected"</#if> value="SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting|ORCID">SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting|ORCID</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting|MiFIRARMReporting|ORCID')>selected="selected"</#if> value="SFTRTransactionReporting|MiFIRARMReporting|ORCID">SFTRTransactionReporting|MiFIRARMReporting|ORCID</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting|ORCID')>selected="selected"</#if> value="SFTRTransactionReporting|ORCID">SFTRTransactionReporting|ORCID</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting|TL_SCBML_ENHANCER')>selected="selected"</#if> value="SFTRTransactionReporting|TL_SCBML_ENHANCER">SFTRTransactionReporting|TL_SCBML_ENHANCER</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting|TL_SCBML_ENHANCER|MiFIRARMReporting')>selected="selected"</#if> value="SFTRTransactionReporting|TL_SCBML_ENHANCER|MiFIRARMReporting">SFTRTransactionReporting|TL_SCBML_ENHANCER|MiFIRARMReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SFTRTransactionReporting|TL_SCEML_ENHANCER|MiFIRARNReporting|NiFIRAPAReporting')>selected="selected"</#if> value="SFTRTransactionReporting|TL_SCEML_ENHANCER|MiFIRARNReporting|NiFIRAPAReporting">SFTRTransactionReporting|TL_SCEML_ENHANCER|MiFIRARNReporting|NiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SHARK')>selected="selected"</#if> value="SHARK">SHARK</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SHARK|MiFIRAPAReporting')>selected="selected"</#if> value="SHARK|MiFIRAPAReporting">SHARK|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SHARK|MiFIRARMReporting')>selected="selected"</#if> value="SHARK|MiFIRARMReporting">SHARK|MiFIRARMReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'SHARK|MiFIRARMReporting|MiFIRAPAReporting')>selected="selected"</#if> value="SHARK|MiFIRARMReporting|MiFIRAPAReporting">SHARK|MiFIRARMReporting|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TDS2')>selected="selected"</#if> value="TDS2">TDS2</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TDS2|MiFIRARMReporting')>selected="selected"</#if> value="TDS2|MiFIRARMReporting">TDS2|MiFIRARMReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TDS2|MiFIRARMReporting|MiFIRAPAReporting')>selected="selected"</#if> value="TDS2|MiFIRARMReporting|MiFIRAPAReporting">TDS2|MiFIRARMReporting|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TL_REMEDIATION')>selected="selected"</#if> value="TL_REMEDIATION">TL_REMEDIATION</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TL_REMEDIATION|MiFIRAPAReporting')>selected="selected"</#if> value="TL_REMEDIATION|MiFIRAPAReporting">TL_REMEDIATION|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TL_REMEDIATION|MiFIRMPAReporting')>selected="selected"</#if> value="TL_REMEDIATION|MiFIRMPAReporting">TL_REMEDIATION|MiFIRMPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TL_REMEDIATION|MiFIRMPAReporting|MiFIRAPAReporting')>selected="selected"</#if> value="TL_REMEDIATION|MiFIRMPAReporting|MiFIRAPAReporting">TL_REMEDIATION|MiFIRMPAReporting|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TL_REMEDIATION|MiFIRMPAReporting|MiFIRRTS23Reporting')>selected="selected"</#if> value="TL_REMEDIATION|MiFIRMPAReporting|MiFIRRTS23Reporting">TL_REMEDIATION|MiFIRMPAReporting|MiFIRRTS23Reporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TL_REMEDIATION|MiFIRRTS23Reporting')>selected="selected"</#if> value="TL_REMEDIATION|MiFIRRTS23Reporting">TL_REMEDIATION|MiFIRRTS23Reporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TL_REMEDIATION|SFTRTransactionReporting')>selected="selected"</#if> value="TL_REMEDIATION|SFTRTransactionReporting">TL_REMEDIATION|SFTRTransactionReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TL_REMEDIATION|SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting')>selected="selected"</#if> value="TL_REMEDIATION|SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting">TL_REMEDIATION|SFTRTransactionReporting|MiFIRARMReporting|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TL_SCBML_ENHANCER')>selected="selected"</#if> value="TL_SCBML_ENHANCER">TL_SCBML_ENHANCER</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TL_SCBML_ENHANCER|MiFIRARMReporting')>selected="selected"</#if> value="TL_SCBML_ENHANCER|MiFIRARMReporting">TL_SCBML_ENHANCER|MiFIRARMReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TL_SCBML_ENHANCER|MiFIRARMReporting|MiFIRAPAReporting')>selected="selected"</#if> value="TL_SCBML_ENHANCER|MiFIRARMReporting|MiFIRAPAReporting">TL_SCBML_ENHANCER|MiFIRARMReporting|MiFIRAPAReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TRUST')>selected="selected"</#if> value="TRUST">TRUST</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TRUST2')>selected="selected"</#if> value="TRUST2">TRUST2</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TRUST2|MiFIRARMReporting')>selected="selected"</#if> value="TRUST2|MiFIRARMReporting">TRUST2|MiFIRARMReporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TRUST2|MiFIRARMReporting|MiFIRRTS23Reporting')>selected="selected"</#if> value="TRUST2|MiFIRARMReporting|MiFIRRTS23Reporting">TRUST2|MiFIRARMReporting|MiFIRRTS23Reporting</option>
                                                                                                <option <#if (trade.routing_to_purpose?string == 'TradeLake')>selected="selected"</#if> value="TradeLake">Trade Lake</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Reason Code</label>
                                                                                        <div class="col-lg-6">
                                                                                            <input type="text" class="form-control" value="${trade.reason_code}" disabled>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-lg-4 col-form-label">Enum Value</label>
                                                                                        <div class="col-lg-6">
                                                                                            <input type="text" class="form-control" value="${trade.enum_value}" disabled>
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
                                                                        <div class="modal-footer">
                                                                            <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Close</button>
                                                                            <button type="button" class="btn btn-primary" >Save changes</button>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal fade bd-example-modal-lg_${trade.trade_id}_detail" role="dialog" aria-hidden="true">
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
                                                                                    <label class="col-lg-4 col-form-label">Notional Ccy_1</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.notional_ccy_1}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Notional Ccy_2</label>
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
                                                                                    <label class="col-lg-4 col-form-label">Upfront Payment Currency</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.upfront_payment_currency}" disabled>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-lg-4 col-form-label">Price Multiplier</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.price_multiplier}" disabled>
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
                                                                                    <label class="col-lg-4 col-form-label">Excuting entity</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.excuting_entity}" disabled>
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
                                                                                    <label class="col-lg-4 col-form-label">Enum Value</label>
                                                                                    <div class="col-lg-6">
                                                                                        <input type="text" class="form-control" value="${trade.enum_value}" disabled>
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
    </div>

    <script src="./vendor/global/global.min.js"></script>

<!-- Datatable -->
    <script src="./vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="./js/plugins-init/datatables.init.js"></script>
    <script src="./vendor/jquery-nice-select/js/jquery.nice-select.min.js"></script>
    <script src="./js/custom.min.js"></script>
    <script src="./js/dlabnav-init.js"></script>
</body>
</html>