Morris.Area({
    element: 'line_chart_2',
    data: [
        {
            period: '2021-01',
            smartphone: 0,
            windows: 0,
            mac: 0
        }, {
            period: '2021-02',
            smartphone: 90,
            windows: 60,
            mac: 25
        }, {
            period: '2021-03',
            smartphone: 40,
            windows: 80,
            mac: 35
        }, {
            period: '2021-04',
            smartphone: 30,
            windows: 47,
            mac: 17
        }, {
            period: '2021-05',
            smartphone: 150,
            windows: 40,
            mac: 120
        }, {
            period: '2021-06',
            smartphone: 25,
            windows: 80,
            mac: 40
        }, {
            period: '2021-07',
            smartphone: 10,
            windows: 10,
            mac: 10
        }, {
            period: '2021-08',
            smartphone: 10,
            windows: 10,
            mac: 10
        }, {
            period: '2021-09',
            smartphone: 10,
            windows: 10,
            mac: 10
        }, {
            period: '2021-10',
            smartphone: 10,
            windows: 10,
            mac: 10
        }, {
            period: '2021-11',
            smartphone: 10,
            windows: 10,
            mac: 10
        }, {
            period: '2021-12',
            smartphone: 10,
            windows: 10,
            mac: 10
        }
    ],
    xkey: 'period',
    ykeys: ['smartphone', 'windows', 'mac'],
    labels: ['Phone', 'Windows', 'Mac'],
    pointSize: 3,
    fillOpacity: 0,
    pointStrokeColors: ['#EE3C3C', '#ffaa2b', '#44814e'],
    behaveLikeLine: true,
    gridLineColor: 'transparent',
    lineWidth: 3,
    hideHover: 'auto',
    lineColors: ['rgb(238, 60, 60)', 'rgb(0, 171, 197)', '#44814e'],
    resize: true

});