<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Consolidated Report</title>
    <link rel="shortcut icon" href="images/favicon.png"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="dependencies/app.css">
</head>
<body>
    <div class="container-scroller">
        <!-- partial:partials/_navbar.html -->
        <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row border-navbar">
            <#if searchList?has_content>
                <h4 class="page-header-report">TEST REPORT - ${product.name}</h4>
                <div class="search-field d-none d-md-block">
                    <div class="dropdown" style="margin-left: 10px;">
                        <button class="btn btn-block btn-lg btn-gradient-primary mt-2 nav-buttons-with-icons" type="button" data-toggle="dropdown">
                            <i style="float: left;" class="large material-icons cursor-pointer-icon color-black">search</i>
                            Click to Search</button>
                        <ul class="dropdown-menu">
                            <input style="background: #282626; color: #ffffff;" class="form-control" id="myInput" type="text" placeholder="Enter search text here ...">
                                <#list searchList as searchObject>
                                    <li class="text-center search-nav-cursor-pointer search-nav-li-border">
                                        <a class="search-list-text" href="${searchObject.url}">${searchObject.text}</a>
                                    </li>
                                </#list>
                        </ul>
                    </div>
                </div>
            <#else>
                <h4 class="page-header-report-extended">TEST REPORT - ${product.name}</h4>
            </#if>
            <div class="search-field d-none d-md-block">
                <div class="dropdown" style="margin-left: 10px;">
                    <button id="fullscreen-button" class="nav-buttons-with-icons btn btn-block btn-lg btn-gradient-primary mt-2" type="button">
                        <i style="float: left" class="large material-icons cursor-pointer-icon color-black" >fullscreen</i>
                        Toggle Screen</button>
                </div>
            </div>
        </nav>

        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
            <!-- partial:partials/_sidebar.html -->
            <nav class="sidebar sidebar-offcanvas" id="sidebar">
                <ul class="nav">
                    <li class="nav-item cursor-pointer">
                        <a class="nav-link" href="${homePage}">
                            <span class="menu-title">Dashboard</span>
                            <i style="margin-left: 20px" class="material-icons">home</i>
                        </a>
                    </li>
                        <#list product.subproducts as subproduct>
                            <#if subproduct.subproducts?has_content>
                                <li class="nav-item cursor-pointer">
                                    <a class="nav-link" href="${subproduct.detailView}">
                                        <span class="menu-title">${subproduct.name}</span>
                                    </a>
                                </li>
                            </#if>
                        </#list>
                    <li class="nav-item sidebar-actions">
                        <span class="nav-link">
                            <div class="border-bottom">
                                <h4 class="mb-3">Robot Execution Data</h4>
                            </div>
                            <li class="nav-item cursor-pointer">
                                <a class="nav-link" href="robotFiles/report.html">
                                    <span class="menu-title">Report</span>
                                    <i style="margin-left: 20px" class="material-icons">receipt</i>
                                </a>
                            </li>
                            <li class="nav-item cursor-pointer">
                                <a class="nav-link" href="robotFiles/output.xml">
                                    <span class="menu-title">Output</span>
                                    <i style="margin-left: 20px" class="material-icons">reorder</i>
                                </a>
                            </li>
                            <li class="nav-item cursor-pointer">
                                <a class="nav-link" href="robotFiles/log.html">
                                    <span class="menu-title">Log</span>
                                    <i style="margin-left: 20px" class="material-icons">report</i>
                                </a>
                            </li>
                        </span>
                    </li>
                </ul>
            </nav>
            <!-- partial -->
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-md-4 stretch-card grid-margin">
                            <div class="card bg-gradient-success card-img-holder text-white">
                                <div class="card-body">
                                    <h4 class="font-weight-normal mb-3">Pass Percentage
                                        <i class="mdi mdi-diamond mdi-24px float-right"></i>
                                    </h4>
                                    <h2 class="mb-5">${product.passPercent} %</h2>
                                    <h6 class="card-text">Total tests passed : ${product.pass}</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 stretch-card grid-margin">
                            <div class="card bg-gradient-danger card-img-holder text-white">
                                <div class="card-body">
                                    <h4 class="font-weight-normal mb-3">Fail Percentage
                                        <i class="mdi mdi-chart-line mdi-24px float-right"></i>
                                    </h4>
                                    <h2 class="mb-5">${product.failPercent} %</h2>
                                    <h6 class="card-text">Total tests failed : ${product.fail}</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 stretch-card grid-margin">
                            <div class="card bg-gradient-info card-img-holder text-white">
                                <div class="card-body">
                                    <h4 class="font-weight-normal mb-3">Total Tests Executed
                                        <i class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
                                    </h4>
                                    <h2 class="mb-5">${product.total}</h2>
                                    <div style="margin-top: -185px; float: right;">
                                        <canvas id="total-status-gauge" width="200" height="200"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Product Coverage</h4>
                                    <canvas id="product-coverage"></canvas>
                                    <div id="product-coverage-legend"
                                         class="rounded-legend legend-vertical legend-bottom-left pt-4"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Product Wise Breakdown</h4>
                                    <p class="card-description"></p>
                                    <table class="table table-striped">
                                        <thead>
                                        <tr>
                                            <th>
                                                Product
                                            </th>
                                            <th>
                                                Progress
                                            </th>
                                            <th>
                                                Pass
                                            </th>
                                            <th>
                                                Fail
                                            </th>
                                            <th>
                                                Total
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <#list product.subproducts as subproduct>
                                        <tr>
                                            <td class="py-1">
                                                ${subproduct.name}
                                            </td>
                                            <td>
                                                <div class="progress">
                                                    <div class="progress-bar bg-success" role="progressbar"
                                                         style="width: ${subproduct.passPercent}%;" aria-valuenow="${subproduct.passPercent}" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                            <td>
                                                ${subproduct.pass}
                                            </td>
                                            <td>
                                                ${subproduct.fail}
                                            </td>
                                            <td>
                                                ${subproduct.total}
                                            </td>
                                        </tr>
                                        </#list>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
                <!-- partial:partials/_footer.html -->
                <footer class="footer">
                    <div class="d-sm-flex justify-content-center justify-content-sm-between">
                        <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Customized for Robot Test Execution</span>
                    </div>
                </footer>
                <!-- partial -->
            </div>
            <!-- main-panel ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <script src="dependencies/base.js"></script>
    <script src="dependencies/addons.js"></script>
    <!-- custom js for this page -->
    <script type="text/javascript">
        $(function() {
        Chart.defaults.global.legend.labels.usePointStyle = true;

        //fullscreen
            $("#fullscreen-button").on("click", function toggleFullScreen() {
              if ((document.fullScreenElement !== undefined && document.fullScreenElement === null) || (document.msFullscreenElement !== undefined && document.msFullscreenElement === null) || (document.mozFullScreen !== undefined && !document.mozFullScreen) || (document.webkitIsFullScreen !== undefined && !document.webkitIsFullScreen)) {
                if (document.documentElement.requestFullScreen) {
                  document.documentElement.requestFullScreen();
                } else if (document.documentElement.mozRequestFullScreen) {
                  document.documentElement.mozRequestFullScreen();
                } else if (document.documentElement.webkitRequestFullScreen) {
                  document.documentElement.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);
                } else if (document.documentElement.msRequestFullscreen) {
                  document.documentElement.msRequestFullscreen();
                }
              } else {
                if (document.cancelFullScreen) {
                  document.cancelFullScreen();
                } else if (document.mozCancelFullScreen) {
                  document.mozCancelFullScreen();
                } else if (document.webkitCancelFullScreen) {
                  document.webkitCancelFullScreen();
                } else if (document.msExitFullscreen) {
                  document.msExitFullscreen();
                }
              }
            })

       /*This is Doughnut*/
           if ($("#product-coverage").length) {
             var ctx = document.getElementById('product-coverage').getContext("2d")

             <#list product.subproducts as subproduct>
            var gradientStroke${subproduct.name?replace(" ", "")?replace("-","")} = ctx.createLinearGradient(0, 0, 0, 200);
            gradientStroke${subproduct.name?replace(" ", "")?replace("-","")}.addColorStop(0, '${subproduct.firstCoverageColor}');
            gradientStroke${subproduct.name?replace(" ", "")?replace("-","")}.addColorStop(1, '${subproduct.secondCoverageColor}');
            var gradientLegend${subproduct.name?replace(" ", "")?replace("-","")} = 'linear-gradient(to right, ${subproduct.firstCoverageColor}, ${subproduct.secondCoverageColor})';

             </#list>

             var trafficChartData = {
               datasets: [{
                 data: [<#list product.subproducts as subproduct>${subproduct.total}<#sep>, </#list>],
                     backgroundColor: [
                        <#list product.subproducts as subproduct>
                            gradientStroke${subproduct.name?replace(" ", "")?replace("-","")}<#sep>,
                        </#list>
                     ],
                     hoverBackgroundColor: [
                       <#list product.subproducts as subproduct>
                            gradientStroke${subproduct.name?replace(" ", "")?replace("-","")}<#sep>,
                        </#list>
                     ],
                     borderColor: [
                       <#list product.subproducts as subproduct>
                            gradientStroke${subproduct.name?replace(" ", "")?replace("-","")}<#sep>,
                        </#list>
                     ],
                     legendColor: [
                        <#list product.subproducts as subproduct>
                            gradientLegend${subproduct.name?replace(" ", "")?replace("-","")}<#sep>,
                        </#list>
                     ]

               }],

               // These labels appear in the legend and in the tooltips when hovering different arcs
               labels: [<#list product.subproducts as subproduct>'${subproduct.name}'<#sep>, </#list>]
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
             var trafficChartCanvas = $("#product-coverage").get(0).getContext("2d");
             var trafficChart = new Chart(trafficChartCanvas, {
               type: 'doughnut',
               data: trafficChartData,
               options: trafficChartOptions
             });
             $("#product-coverage-legend").html(trafficChart.generateLegend());
           }
         });

    </script>
    <script type="text/javascript">

    $.fn.gauge = function(value, options) {
        return this.each(function() {

          var settings = $.extend({
            min: 0,
            max: 100,
            unit: "%",
            color: "#fffefc",
            colorAlpha: 1,
            bgcolor: "#ff0055",
            type: "default"
          }, options);

          //canvas initialization
          var ctx = this.getContext("2d");

          var W = this.width;
          var H = this.height;
          var centerW = (W/2);

          var position = 0;
          var new_position = 0;
          var difference = 0;

          var text;
          var animation_loop, redraw_loop;

          // Angle in radians = angle in degrees * PI / 180
          function radians(degrees) {
            return degrees * Math.PI / 180;
          }

          if (settings.type === "halfcircle") {
            (function() {
              function update() {
                ctx.clearRect(0, 0, W, H);

                // The gauge will be an arc
                ctx.beginPath();
                ctx.strokeStyle = settings.bgcolor;
                ctx.lineWidth = W * 0.13;
                ctx.arc(centerW, H, (centerW) - ctx.lineWidth, radians(180), radians(0), false);
                ctx.stroke();

                ctx.beginPath();
                ctx.strokeStyle = settings.color;
                ctx.lineWidth = W * 0.13;

                if (position > 0) {
                  ctx.arc(centerW, H, (centerW) - ctx.lineWidth, radians(180), radians(180 + position), false);
                  ctx.stroke();
                }

                // Add the text
                ctx.fillStyle = settings.color;
                            var fontArgs = ctx.font.split(' ');
                            ctx.font = (W*0.16) + ' ' + fontArgs[fontArgs.length - 1];
                text = value + settings.unit + ' Passed';
                // Center the text, deducting half of text width from position x
                text_width = ctx.measureText(text).width;
                ctx.fillText(text, centerW - text_width / 2, H - 10);
              }

              function draw() {
                // Cancel any animation if a new chart is requested
                if (typeof animation_loop !== undefined) clearInterval(animation_loop);

                new_position = Math.round((value / (settings.max - settings.min)) * 180);
                difference = new_position - position;
                animation_loop = setInterval(animate_to, 100 / difference);
              }

              // Make the chart move to new degrees
              function animate_to() {
                // Clear animation loop if degrees reaches the new_degrees
                if (position == new_position)
                  clearInterval(animation_loop);

                if (position < new_position)
                  position++;
                else
                  position--;

                update();
              }
              draw();
            })();
          }
        });
      };

    $(document).ready(function (){
        $("#total-status-gauge").gauge(${product.passPercent}, { type: "halfcircle"});
    });
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
          $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $(".dropdown-menu li").filter(function() {
              $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
          });
        });
    </script>
</body>

</html>