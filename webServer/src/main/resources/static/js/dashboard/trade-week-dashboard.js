var options = {
    series: [
        {
            name: 'Trade Normal',
            data: [1105, 1008, 715, 840, 994, 757, 1770],
        },
        {
            name: 'Trade Exception',
            data: [180, 149, 55, 218, 45, 35, 182]
        },
    ],
    chart: {
        type: 'bar',
        height: 370,

        toolbar: {
            show: false,
        },

    },
    plotOptions: {
        bar: {
            horizontal: false,
            columnWidth: '57%',
            endingShape: "rounded",
            borderRadius: 12,
        },

    },
    states: {
        hover: {
            filter: 'none',
        }
    },
    colors:['#D2D2D2', '#EBEBEB'],
    dataLabels: {
        enabled: false,
    },
    markers: {
        shape: "circle",
    },


    legend: {
        show: false,
        fontSize: '12px',
        labels: {
            colors: '#000000',

        },
        markers: {
            width: 18,
            height: 18,
            strokeWidth: 10,
            strokeColor: '#fff',
            fillColors: undefined,
            radius: 12,
        }
    },
    stroke: {
        show: true,
        width: 4,
        curve: 'smooth',
        lineCap: 'round',
        colors: ['transparent']
    },
    grid: {
        borderColor: '#eee',
    },
    xaxis: {
        position: 'top',
        categories: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
        labels: {
            style: {
                colors: '#787878',
                fontSize: '13px',
                fontFamily: 'poppins',
                fontWeight: 100,
                cssClass: 'apexcharts-xaxis-label',
            },
        },
        crosshairs: {
            show: false,
        }
    },
    yaxis: {
        labels: {
            offsetX:-16,
            style: {
                colors: '#787878',
                fontSize: '13px',
                fontFamily: 'poppins',
                fontWeight: 100,
                cssClass: 'apexcharts-xaxis-label',
            },
        },
    },
    fill: {
        opacity: 1,
        colors:['var(--primary)', 'rgb(255, 92, 0)'],
    },
    tooltip: {
        y: {
            formatter: function (val) {
                return "Volume :" + val
            }
        }
    },
};

var chart = new ApexCharts(document.querySelector("#tradeChartBarBar"), options);
chart.render();