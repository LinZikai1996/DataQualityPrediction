function dayDashboard(total, exception){
    Morris.Donut({
        element: 'day_dashboard',
        data: [{
            label: "\xa0 \xa0 Trade Normal \xa0 \xa0",
            value: total,
        }, {
            label: "\xa0 \xa0 Trade Exception \xa0 \xa0",
            value: exception
        }],
        resize: true,
        redraw: true,
        colors: ['#44814e', 'rgb(255, 92, 0)'],
    });
}

function weekDashboard(totalList, exceptionList){
    let dataList = [];

    for(var k in totalList){
        dataList[k] = {y: totalList[k].name, total: totalList[k].number, exception: exceptionList[k].number}
    }

    Morris.Bar({
        element: 'morris_bar_stalked',
        data: dataList,
        xkey: 'y',
        ykeys: ['total', 'exception'],
        labels: ['Total', 'Exception'],
        barColors: ['#44814e', 'rgb(255, 92, 0)'],
        hideHover: 'auto',
        gridLineColor: 'transparent',
        resize: true,
        barSizeRatio: 0.25,
        stacked: true,
        behaveLikeLine: true,
    });

}