<!DOCTYPE html>
<html>
<title>Robot Results</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}

table {
  font-family: "Raleway", sans-serif;
  border-collapse: collapse;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(odd) {
    background: #CCC;
}

</style>

<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
    <span class="w3-bar-item w3-right">© FINASTRA</span>
</div>


${sidebar}

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer"
     title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

    <!-- Header -->
    <header class="w3-container" style="padding-top:22px">
        <h5><b><i class="fa fa-dashboard"></i> ${templateSuite.name} Dashboard</b></h5>
    </header>

    <div class="row">
        <div>
            <div style="float:left; width:25%; height:100%; margin-right: -25px;">
                <div class="w3-card-4"
                     style="border-radius: 50%; width: 100px; height: 100px; background: ${templateSuite.status}; margin-left: 70px; text-align: center; line-height: 95px">
                    <strong>Status</strong></div>
            </div>
            <div style="width: 75%; float: right; height:100%; margin-right: 10px;">
                <h5></h5>
                Total Pass : ${templateSuite.passPercent}%
                <#if templateSuite.passPercent == 0>
                <div class="w3-grey">
                    <div class="w3-container w3-center w3-padding w3-grey"/>
                </div>
                <#else>
                <div class="w3-grey">
                    <div class="w3-container w3-center w3-padding w3-green" style="width:${templateSuite.passPercent}%"/>
                </div>
                </#if>
        </div>
        <br>
        Total Failed : ${templateSuite.failPercent}%
        <#if templateSuite.failPercent == 0>
            <div class="w3-grey">
                <div class="w3-container w3-center w3-padding w3-grey"/>
            </div>
        <#else>
            <div class="w3-grey">
                <div class="w3-container w3-center w3-padding w3-red" style="width:${templateSuite.failPercent}%"/>
            </div>
        </#if>
</div>
<br>
</div>
<hr>
</div>

<div style="margin-top: 180px; margin-left: 100px;">
    <div style="float: left">
        <table class="w3-card-4">
            <tr class="w3-grey">
                <th>Product Code</th>
                <th>Pass</th>
                <th>Fail</th>
                <th>Total</th>
            </tr>
            <#list templateSuite.subTemplateSuites as subproduct>
            <tr class="w3-hover-green">
                <td>${subproduct.name}</td>
                <td>${subproduct.pass}</td>
                <td>${subproduct.fail}</td>
                <td>${subproduct.total}</td>
            </tr>
        </#list>
        </table>
    </div>
    <div style="float: left; margin-left: 10%;" class="w3-card-4" id="piechart"/>
</div>


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
    overlayBg.style.display = "none";
  } else {
    mySidebar.style.display = 'block';
    overlayBg.style.display = "block";
  }
}

// Close the sidebar with the close button
function w3_close() {
  mySidebar.style.display = "none";
  overlayBg.style.display = "none";
}

// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Sub-templateSuite Code', 'Test run'],
  <#list templateSuite.subTemplateSuites as subproduct>
   ['${subproduct.name}', ${subproduct.total}],
  </#list>
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Breakdown by Product Types','width':500, 'height':300};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}


</script>

</body>
</html>