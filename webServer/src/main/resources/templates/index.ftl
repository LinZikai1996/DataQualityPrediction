
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>index</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="robots" content="noindex">
  <!-- Prism Syntax Highlighting-->
  <link rel="stylesheet" href="./css/prism-toolbar.css">
  <link rel="stylesheet" href="./css/prism-okaidia.css">
  <!-- The Main Theme stylesheet (Contains also Bootstrap CSS)-->
  <link rel="stylesheet" href="./css/style_index.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/bubbly/1-1/css/custom.0a822280.css">
  <!-- Favicon-->
  <link href="./images/SystemLogo.png" rel="icon">
</head>
<body>
<!-- navbar-->
<header class="header">
  <nav class="navbar navbar-expand-lg px-4 py-2 bg-white shadow">
    <a class="sidebar-toggler text-gray-500 me-4 me-lg-5 lead" href="#"><i class="fas fa-align-left"></i></a>
    <a class="navbar-brand fw-bold text-uppercase text-base" href="#">
      <span class="d-none d-brand-partial">BJTU System </span><span class="d-none d-sm-inline">Dashboard</span></a>
    <ul class="ms-auto d-flex align-items-center list-unstyled mb-0">
      <li class="nav-item dropdown">
        <form class="ms-auto me-4 d-none d-lg-block" id="searchForm">
          <div class="input-group input-group-sm input-group-navbar">
            <input class="form-control" id="searchInput" type="search" placeholder="Search">
            <button class="btn" type="button"> <i class="fas fa-search"></i></button>
          </div>
        </form>
        <div class="dropdown-menu dropdown-menu-animated text-sm" id="searchDropdownMenu">
          <h6 class="dropdown-header text-uppercase fw-normal">Recent pages</h6><a class="dropdown-item py-1" href="cms-post.html"> <i class="far fa-file me-2"> </i>Posts</a><a class="dropdown-item py-1" href="widgets-stats.html"> <i class="far fa-file me-2"> </i>Widgets</a><a class="dropdown-item py-1" href="pages-profile.html"> <i class="far fa-file me-2"> </i>Profile</a>
          <div class="dropdown-divider"></div>
          <h6 class="dropdown-header text-uppercase fw-normal">Users</h6><a class="dropdown-item py-1" href="pages-profile.html"> <img class="avatar avatar-xs p-1 me-2" src="https://d19m59y37dris4.cloudfront.net/bubbly/1-1/img/avatar-0.jpg" alt="Jason Doe"><span>Jason Doe</span></a><a class="dropdown-item py-1" href="pages-profile.html"> <img class="avatar avatar-xs p-1 me-2" src="https://d19m59y37dris4.cloudfront.net/bubbly/1-1/img/avatar-1.jpg" alt="Frank Williams"><span>Frank Williams</span></a><a class="dropdown-item py-1" href="pages-profile.html"> <img class="avatar avatar-xs p-1 me-2" src="https://d19m59y37dris4.cloudfront.net/bubbly/1-1/img/avatar-2.jpg" alt="Ashley Wood"><span>Ashley Wood</span></a>
          <div class="dropdown-divider"></div>
          <h6 class="dropdown-header text-uppercase fw-normal">Filters</h6><a class="dropdown-item py-1" href="#!"> <span class="badge me-2 badge-success-light">Posts</span><span class="text-xs">Search all posts</span></a><a class="dropdown-item py-1" href="#!"> <span class="badge me-2 badge-danger-light">Users</span><span class="text-xs">Only in users</span></a><a class="dropdown-item py-1" href="#!"> <span class="badge me-2 badge-warning-light">Campaigns</span><span class="text-xs">Only in campaigns</span></a>
        </div>
      </li>
      <li class="nav-item dropdown me-2">
        <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated text-sm" aria-labelledby="notifications"><a class="dropdown-item" href="#">
            <div class="d-flex align-items-center">
              <div class="icon icon-sm bg-indigo text-white"><i class="fab fa-twitter"></i></div>
              <div class="text ms-2">
                <p class="mb-0">You have 2 followers</p>
              </div>
            </div></a><a class="dropdown-item" href="#">
            <div class="d-flex align-items-center">
              <div class="icon icon-sm bg-green text-white"><i class="fas fa-envelope"></i></div>
              <div class="text ms-2">
                <p class="mb-0">You have 6 new messages</p>
              </div>
            </div></a><a class="dropdown-item" href="#">
            <div class="d-flex align-items-center">
              <div class="icon icon-sm bg-blue text-white"><i class="fas fa-upload"></i></div>
              <div class="text ms-2">
                <p class="mb-0">Server rebooted</p>
              </div>
            </div></a><a class="dropdown-item" href="#">
            <div class="d-flex align-items-center">
              <div class="icon icon-sm bg-indigo text-white"><i class="fab fa-twitter"></i></div>
              <div class="text ms-2">
                <p class="mb-0">You have 2 followers</p>
              </div>
            </div></a>
          <div class="dropdown-divider"></div><a class="dropdown-item text-center" href="#"><small class="fw-bold text-uppercase">View all notifications</small></a>
        </div>
      </li>
      <li class="nav-item dropdown ms-auto"><a class="nav-link pe-0" id="userInfo" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img class="avatar p-1" src="https://d19m59y37dris4.cloudfront.net/bubbly/1-1/img/avatar-6.jpg" alt="Jason Doe"></a>
        <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated" aria-labelledby="userInfo">
          <div class="dropdown-header text-gray-700">
            <h6 class="text-uppercase font-weight-bold">Mark Stephen</h6><small>Web Developer</small>
          </div>
          <div class="dropdown-divider"></div><a class="dropdown-item" href="#">Settings</a><a class="dropdown-item" href="#">Activity log       </a>
          <div class="dropdown-divider"></div><a class="dropdown-item" href="login.html">Logout</a>
        </div>
      </li>
    </ul>
  </nav>
</header>
<div class="d-flex align-items-stretch">
  <div class="sidebar py-3" id="sidebar">
    <h6 class="sidebar-heading">Main</h6>
    <ul class="list-unstyled">
      <li class="sidebar-list-item"><a class="sidebar-link text-muted active" href="#">
          <span class="sidebar-link-title">Dashboard</span></a></li>
    </ul>
  </div>
  <div class="page-holder bg-gray-100">
    <div class="container-fluid px-lg-4 px-xl-5">
      <section class="mb-4 mb-lg-5">
        <h2 class="section-heading section-heading-ms">Dashboard 📈 </h2>
        <div class="col-lg-7 mb-4 mb-lg-0">
          <div class="card h-100">
            <div class="card-header">
              <h4 class="card-heading">Trade&ensp;Info</h4>
            </div>
            <div class="card-body">
              <form class="row g-3 needs-validation" action="/tradeSubmit.do">
                <div class="col-md-4">
                  <label class="form-label" for="validationCustom04" >Primary Asset Class</label>
                  <select class="form-select" id="validationCustom04" name = "primary_asset_class">
                    <option selected="" disabled="" value="">Choose...</option>
                    <option value="1">Commodity</option>
                    <option value="2">Credit</option>
                    <option value="3">CrossAsset</option>
                    <option value="4">Equity</option>
                    <option value="5">ExchangeTraded</option>
                    <option value="6">FixedIncome</option>
                    <option value="7">ForeignExchange</option>
                    <option value="8">InterestRate</option>
                    <option value="9">MoneyMarket</option>
                    <option value="10">SecuritiesFinance</option>
                  </select>
                  <div class="valid-feedback">Looks good!</div>
                  <div class="invalid-feedback">Please select a country.</div>
                </div>
                <div class="col-md-4">
                  <label class="form-label" for="validationCustom04" >Prodict Value</label>
                  <select class="form-select" id="validationCustom04" name = "prodict_value">
                    <option selected="" disabled="" value="">Choose...</option>
                    <option value="Commodity:Metals:NonPrecious:Option:Cash">Commodity:Metals:NonPrecious:Option:Cash</option>
                    <option value="Commodity:Metals:Precious:Option:Physical">Commodity:Metals:Precious:Option:Physical</option>
                    <option value="Commodity:Metals:Precious:SpotFwd:Physical">Commodity:Metals:Precious:SpotFwd:Physical</option>
                    <option value="Credit:SingleName:Sovereign:StandardAsiaSovereign">Credit:SingleName:Sovereign:StandardAsiaSovereign</option>
                    <option value="Credit:TotalReturnSwap">Credit:TotalReturnSwap</option>
                    <option value="Equity:Cash">Equity:Cash</option>
                    <option value="Equity:Option:PriceReturnBasicPerformanceSingleName">Equity:Option:PriceReturnBasicPerformanceSingleName</option>
                    <option value="Equity:Other">Equity:Other</option>
                    <option value="Equty:Swap:PriceReturnBasicPerformance:SingleIndex">Equty:Swap:PriceReturnBasicPerformance:SingleIndex</option>
                    <option value="Equty:Swap:PriceReturBasicPerformance:SingleName">Equty:Swap:PriceReturBasicPerformance:SingleName</option>
                    <option value="ExchangeTraded:Future:Commodity">ExchangeTraded:Future:Commodity</option>
                    <option value="ExchangeTraded:Future:Commodity">ExchangeTraded:Future:Commodity</option>
                    <option value="ExchangeTraded:Future:FX">ExchangeTraded:Future:FX</option>
                    <option value="ExchangeTraded:Future:lnterestRate">ExchangeTraded:Future:lnterestRate</option>
                    <option value="FixedIncome:Bond">FixedIncome:Bond</option>
                    <option value="ForeignExchange:ComplexExotic">ForeignExchange:ComplexExotic</option>
                    <option value="ForeignExchange:Forward">ForeignExchange:Forward</option>
                    <option value="ForeignExchange:NDF">ForeignExchange:NDF</option>
                    <option value="ForeignExchange:NDO">ForeignExchange:NDO</option>
                    <option value="ForeignExchange:SimpleExoticDigital">ForeignExchange:SimpleExoticDigital</option>
                    <option value="ForeignExchange:VanillaOption">ForeignExchange:VanillaOption</option>
                    <option value="InterestRate:CrossCurrency:Basis">InterestRate:CrossCurrency:Basis</option>
                    <option value="InterestRate:CrossCurrency:FixedFloat">InterestRate:CrossCurrency:FixedFloat</option>
                    <option value="InterestRate:Exotic">InterestRate:Exotic</option>
                    <option value="InterestRate:lRSwap:Basis">InterestRate:lRSwap:Basis</option>
                  </select>
                  <div class="valid-feedback">Looks good!</div>
                  <div class="invalid-feedback">Please select a country.</div>
                </div>
                <div class="col-12">
                  <button class="btn btn-primary" type="submit">Submit form</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
</div>
<!-- JavaScript files-->
<script src="https://d19m59y37dris4.cloudfront.net/bubbly/1-1/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
<!-- Init Charts on Homepage-->
<script src="https://d19m59y37dris4.cloudfront.net/bubbly/1-1/vendor/chart.js/Chart.min.js"></script>
<script src="js/charts-defaults.4032ce71.js"></script>
<script src="js/charts-home.a757f7e5.js"></script>
<!-- Main Theme JS File-->
<script src="js/theme.413b8ff4.js"></script>
<!-- Prism for syntax highlighting-->
<script src="https://d19m59y37dris4.cloudfront.net/bubbly/1-1/vendor/prismjs/prism.js"></script>
<script src="https://d19m59y37dris4.cloudfront.net/bubbly/1-1/vendor/prismjs/plugins/normalize-whitespace/prism-normalize-whitespace.min.js"></script>
<script src="https://d19m59y37dris4.cloudfront.net/bubbly/1-1/vendor/prismjs/plugins/toolbar/prism-toolbar.min.js"></script>
<script src="https://d19m59y37dris4.cloudfront.net/bubbly/1-1/vendor/prismjs/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js"></script>
<script type="text/javascript">
  // Optional
  Prism.plugins.NormalizeWhitespace.setDefaults({
    'remove-trailing': true,
    'remove-indent': true,
    'left-trim': true,
    'right-trim': true,
  });

</script>
<!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</body>
</html>