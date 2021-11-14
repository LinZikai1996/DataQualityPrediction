<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
    <div class="dlabnav">
        <div class="dlabnav-scroll">
            <div class="dropdown header-profile2 ">
                <a class="nav-link " href="javascript:void(0);"  role="button" data-bs-toggle="dropdown">
                    <div class="header-info2 d-flex align-items-center border">
                        <img src="images/pic.png" alt=""/>
                        <div class="d-flex align-items-center sidebar-info">
                            <div>
                                <span class="font-w700 d-block mb-2">${user}</span>
                                <small class="text-end font-w400">Super Admin</small>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <ul class="metismenu" id="menu">
                <li><a class="has-arrow " href="javascript:void(0)" aria-expanded="false">
                        <i class="fas fa-tachometer-alt"></i>
                        <span class="nav-text">Dashboard</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="/toIndex.do">Trade</a></li>
                        <li><a href="/showAllTradeData.do">Show Data</a></li>
                        <li><a href="/toReportPage.do">Trade Report</a></li>
                        <li><a href="#">Personal Report</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>