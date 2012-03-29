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
        enabled: true
      rangeSelector:
        enabled: true
        selected: 6
        buttons: [{
        	type: 'minute',
        	count: 360,
        	text: '6h'
        }, {
        	type: 'day',
        	count: 1,
        	text: '1day'
        }, {
        	type: 'week',
        	count: 1,
        	text: '1w'
#        }, {
#        	type: 'month',
#        	count: 1,
#        	text: '1m'
#        }, {
#        	type: 'month',
#        	count: 3,
#        	text: '3m'
#        }, {
#        	type: 'all',
#        	text: 'All'
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
        align: 'right'
        verticalAlign: 'middle'
      xAxis:
        type: 'datetime'
        title:
          text: null
      yAxis:
        allowDecimals: false
        min: 0
        gridLineColor: "#eeeeee"
        plotLines: graph.data("levels")
        title:
          text: null
      series: graph.data("series")

    $("#toggle").click ->
        for series in chart.series
          if series.visible
            series.hide()
          else
            series.show()