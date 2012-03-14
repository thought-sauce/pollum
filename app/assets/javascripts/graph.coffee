$ ->
  Highcharts.setOptions
    global:
      useUTC: false
  $(".graph").each ->
    graph = $(this)
    chart = new Highcharts.Chart
      chart: 
        renderTo: this
        zoomType: "xy"
      credits:
        enabled: false
      rangeSelector:
        enabled: true
        buttons: [{
        	type: 'minute',
        	count: 60,
        	text: '1h'
        }, {
        	type: 'day',
        	count: 1,
        	text: '1day'
        }, {
        	type: 'month',
        	count: 1,
        	text: '1m'
        }, {
        	type: 'month',
        	text: '6m'
        }, {
        	type: 'year',
        	count: 1,
        	text: '1y'
        }, {
        	type: 'all',
        	text: 'All'
        }]
      navigator:
        enabled: true
      scrollbar:
        enabled: true
      title:
        text: null
      legend:
        borderWidth: 0
        layout: "vertical"
      xAxis:
        type: 'datetime'
        title:
          text: null
      yAxis:
        allowDecimals: false
        min: 0
        gridLineColor: "#eeeeee"
        title:
          text: null
      series: graph.data("series")