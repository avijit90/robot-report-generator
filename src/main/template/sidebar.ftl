<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>

    <div class="w3-container w3-row">
        <div class="w3-col s4">
            <img src="../UOB_logo.jpg" class="w3-margin-right" style="width:46px">
        </div>
        <div class="w3-col s8 w3-bar">
            <span><strong>API Testing Report</strong></span><br>
        </div>
    </div>

    <hr>

    <div class="w3-bar-block">

        <a href=${product.detailView} class="w3-bar-item w3-button w3-padding w3-blue">
            <i class="fa fa-users fa-fw"></i>${product.name}
        </a>

        <#list product.subproducts as subproduct>
            <a href=${subproduct.detailView} class="w3-bar-item w3-button w3-padding">
                <i class="fa fa-users fa-fw"></i>${subproduct.name}
            </a>
        </#list>

    </div>
</nav>