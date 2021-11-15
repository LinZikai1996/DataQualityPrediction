function dayDashboard(total){
    Morris.Donut({
        element: 'day_dashboard',
        data: [{
            label: "\xa0 \xa0 Trade Normal \xa0 \xa0",
            value: total,
        }, {
            label: "\xa0 \xa0 Trade Exception \xa0 \xa0",
            value: 10
        }],
        resize: true,
        redraw: true,
        colors: ['#44814e', 'rgb(255, 92, 0)'],
    });
}
function weekDashboard(){
    Morris.Bar({
        element: 'morris_bar_stalked',
        data: [{
            y: 'Sun',
            a: 66,
            b: 34
        }, {
            y: 'Mon',
            a: 75,
            b: 25
        }, {
            y: 'Tue',
            a: 50,
            b: 50
        }, {
            y: 'Wed',
            a: 75,
            b: 25
        }, {
            y: 'Thur',
            a: 50,
            b: 50
        }, {
            y: 'Fri',
            a: 16,
            b: 84
        }, {
            y: 'Sat',
            a: 70,
            b: 30
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['A', 'B'],
        barColors: ['#44814e', 'rgb(255, 92, 0)'],
        hideHover: 'auto',
        gridLineColor: 'transparent',
        resize: true,
        barSizeRatio: 0.25,
        stacked: true,
        behaveLikeLine: true,
        //redraw: true

        // barRadius: [6, 6, 0, 0]
    });

}