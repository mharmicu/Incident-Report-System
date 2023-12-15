// date settings
function isoDayOfWeek(dt) {
    let wd = dt.getDay(); // 0..6, from sunday
    wd = (wd + 6) % 7 + 1 // 1..7 starting week monday
    return '' + wd; // string so it gets parsed 
};

//testing code block 
function dataFromDBPurok7() {
    const d = new Date();
    const today = new Date(d.getFullYear(), d.getMonth(), d.getDate(), 0, 0, 0, 0);
    const data2 = [];
    const end = today;
    let dt = new Date(new Date().setDate(end.getDate() - 365));

    while (dt <= end) {
        const iso = dt.toISOString().substr(0, 10);

        if (x_purok7.indexOf(iso) !== -1) {
            const indexNum = (element) => element == iso;

            data2.push({
                x: iso,
                y: isoDayOfWeek(dt),
                d: iso,
                v: y_purok7[x_purok7.findIndex(indexNum)]
            });
        } else {
            data2.push({
                x: iso,
                y: isoDayOfWeek(dt),
                d: iso,
                v: 0
            });
        }

        //console.log(dt);
        dt = new Date(dt.setDate(dt.getDate() + 1));
    }
    //console.log(data2);
    return data2;
}

//setup block
const dataPrk7 = {
    datasets: [{
        label: 'Heat Map - Purok 7',
        data: dataFromDBPurok7(),
        backgroundColor(c) {
            const value = c.dataset.data[c.dataIndex].v
            let alpha = (10 + value) / 20;
            if (alpha > 0.5) {
                return `rgba(0, 200, 0, ${alpha})`;
            } else {
                return `rgba(230, 230, 230, 0.5)`;
            }
        },
        borderColor: 'green',
        borderRadius: 1,
        borderWidth: 1,
        hoverBackgroundColor: 'rgba(255, 26, 104, 0.2)',
        hoverBorderColor: 'rgba(255, 26, 104, 1)',
        width(c) {
            const a = c.chart.chartArea || {};
            return (a.right - a.left) / 53 - 1;
        },
        height(c) {
            const a = c.chart.chartArea || {};
            return (a.bottom - a.top) / 7 - 1;
        },
    }]
};

// scales block 
const scalesPrk7 = {
    y: {
        type: 'time',
        offset: true,
        time: {
            unit: 'day',
            round: 'day',
            isoWeek: 1,
            parser: 'i',
            displayFormats: {
                day: 'iii'
            }
        },
        reverse: true,
        position: 'right',
        ticks: {
            maxRotation: 0,
            autoSkip: true,
            padding: 1,
            font: {
                size: 9
            }
        },
        grid: {
            display: false,
            drawBorder: false,
            tickLength: 0
        }
    },
    x: {
        type: 'time',
        position: 'bottom',
        offset: true,
        time: {
            unit: 'week',
            round: 'week',
            isoWeekDay: 1,
            displayFormats: {
                week: 'MMM dd'
            }
        },
        ticks: {
            maxRotation: 0,
            autoSkip: true,
            font: {
                size: 9
            }
        },
        grid: {
            display: false,
            drawBorder: false,
            tickLength: 0
        }
    }
};

// config 
const configPrk7 = {
    type: 'matrix',
    data: dataPrk7,
    options: {
        maintainAspectRatio: false,
        scales: scalesPrk7,
        plugins: {
            tooltip: {
                callbacks: {
                    title: function (context) {
                        //console.log(context[0].raw.x);
                        const d = new Date(context[0].raw.x);
                        const formattedDate = d.toLocaleString([], {
                            year: 'numeric',
                            month: 'short',
                            day: 'numeric'
                        });
                        return `${context[0].raw.v} reports on ${formattedDate}`;
                    },
                    label: function (context) {
                        return ``
                    }
                },
            },
            legend: {
                display: false
            }
        }
    }
};

// render init block
const matrixPrk7 = new Chart(
    document.getElementById('matrixChartPurok7'),
    configPrk7
);