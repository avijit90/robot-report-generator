<html>
<head>
    <title>Welcome!</title>
</head>
<body>
<h1>Welcome </h1>
<p>Our latest templateSuite:
    <a href="hello"">labels: [<#list templateSuite.subTemplateSuites as subproduct>${subproduct.name}<#sep>, </#list>]</a>
</body>
</html>
<script>
    /*This is Doughnut*/
       /*This is Doughnut*/
       if ($("#templateSuite-coverage").length) {
         var ctx = document.getElementById('templateSuite-coverage').getContext("2d")

         <#list templateSuite.subTemplateSuites as subproduct>
		var gradientStroke${subproduct.name?replace(" ", "")} = ctx.createLinearGradient(0, 0, 0, 200);
		gradientStroke${subproduct.name?replace(" ", "")}.addColorStop(0, ${subproduct.firstCoverageColor});
		gradientStroke${subproduct.name?replace(" ", "")}.addColorStop(0, ${subproduct.secondCoverageColor});
		var gradientLegend${subproduct.name?replace(" ", "")} = 'linear-gradient(to right, ${subproduct.firstCoverageColor}, ${subproduct.secondCoverageColor})';
         </#list>

         var trafficChartData = {
           datasets: [{
             data: [6, 9, 12],
				 backgroundColor: [
				    <#list templateSuite.subTemplateSuites as subproduct>
				        gradientStroke${subproduct.name?replace(" ", "")}<#sep>,
				    </#list>
				 ],
				 hoverBackgroundColor: [
				   <#list templateSuite.subTemplateSuites as subproduct>
				        gradientStroke${subproduct.name?replace(" ", "")}<#sep>,
				    </#list>
				 ],
				 borderColor: [
				   <#list templateSuite.subTemplateSuites as subproduct>
				        gradientStroke${subproduct.name?replace(" ", "")}<#sep>,
				    </#list>
				 ],
				 legendColor: [
				    <#list templateSuite.subTemplateSuites as subproduct>
				        gradientLegend${subproduct.name?replace(" ", "")}<#sep>,
				    </#list>
				 ]

           }],

           // These labels appear in the legend and in the tooltips when hovering different arcs
           labels: ['Fund Transfer', 'Term Deposit', 'System Features']
         };
         var trafficChartOptions = {
           responsive: true,
           animation: {
             animateScale: true,
             animateRotate: true
           },
           legend: false,
           legendCallback: function(chart) {
             var text = [];
             text.push('<ul>');
             for (var i = 0; i < trafficChartData.datasets[0].data.length; i++) {
                 text.push('<li><span class="legend-dots" style="background:' +
                 trafficChartData.datasets[0].legendColor[i] +
                             '"></span>');
                 if (trafficChartData.labels[i]) {
                     text.push(trafficChartData.labels[i]);
                 }
                 text.push('<span class="float-right">'+trafficChartData.datasets[0].data[i]+'</span>')
                 text.push('</li>');
             }
             text.push('</ul>');
             return text.join('');
           }
         };
         var trafficChartCanvas = $("#templateSuite-coverage").get(0).getContext("2d");
         var trafficChart = new Chart(trafficChartCanvas, {
           type: 'doughnut',
           data: trafficChartData,
           options: trafficChartOptions
         });
         $("#templateSuite-coverage-legend").html(trafficChart.generateLegend());
       }
     });
</script>