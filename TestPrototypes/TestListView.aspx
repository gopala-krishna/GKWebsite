<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" %>

<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
    <script>
        function resizeContainers() {
            var headerHeight = $("#header").height(),
                searchWrapper = $("#example-search-wrapper").outerHeight(),
                navbarWrapper = $("#example-nav-bar").height(),
                htmlHeight = (kendo.support.mobileOS) ? parseFloat(window.innerHeight) : $('html').height();
                sidebarHeight = htmlHeight - headerHeight,
                borderSize = 2,
                navHeight = sidebarHeight - (searchWrapper + navbarWrapper + borderSize);

            $("#example-sidebar").height(sidebarHeight);
            $("#nav-wrapper").height(navHeight);
            $("#main").height(sidebarHeight);
        }


        $(function () {
            if (kendo.support.mobileOS) {
                $(document.documentElement).addClass("k-hover-enabled");
            }
        });

        $(document).ready(resizeContainers);
        $(window).resize(resizeContainers);
     </script>
    

 
    <script>
    window.kendoTheme = "material";
    window.kendoCommonFile = "common-material";
    </script>

<script src="/kendo-ui/content/shared/js/theme-chooser.js"></script>

<script>
    var NAV_JSON_URL = "/kendo-ui/content/nav.json";
    var navProduct = "online";
    var product = "kendo-ui";
</script>
<script src="/kendo-ui/content/shared/js/example-datasources.js"></script>
<script src="/kendo-ui/content/shared/js/web-examples.js"></script>

<div id="main">
    <a href="#" id="sidebar-toggle"><span></span></a>

 



   
<div id="example">

    <div class="demo-section k-content wide">
        <div id="listView"></div>
        <div id="pager" class="k-pager-wrap"></div>
    </div>
   
    <script type="text/x-kendo-template" id="template">
        <div class="product">
            <!--<img src="../content/web/foods/#= ProductID #.jpg" alt="#: ProductName # image" />-->
            <img src="../images/iitb.jpg " onclick ="javascript:location.href='#=ProductName#'"/>
            <!--<h3>#:ProductName#</h3>-->
        </div>
    </script>

    <!--<script>
        $(function() {
            var dataSource = new kendo.data.DataSource({
                data: [
                    {
                        "ProductID": 1,
                        "ProductName": "http://google.com",
                        "UnitPrice": 18,
                        "UnitsInStock": 39,
                        "Discontinued": false
                    },
                    {
                        "ProductID": 2,
                        "ProductName": "http://microsoft.com",
                        "UnitPrice": 19,
                        "UnitsInStock": 17,
                        "Discontinued": false
                    },
                    {
                        "ProductID": 3,
                        "ProductName": "Aniseed Syrup",
                        "UnitPrice": 10,
                        "UnitsInStock": 13,
                        "Discontinued": false
                    }]
            });

            $("#pager").kendoPager({
                dataSource: dataSource
            });

            $("#listView").kendoListView({
                dataSource: dataSource,
                template: kendo.template($("#template").html())
            });
        });
    </script>-->
    <script>
        $(function() {
            var dataSource = new kendo.data.DataSource({
                transport: {
                    read: {
                        url: "../js/listview/MyProducts.js",
                        dataType: "json"
                    }
                },
            });

            $("#pager").kendoPager({
                dataSource: dataSource
            });

            $("#listView").kendoListView({
                dataSource: dataSource,
                template: kendo.template($("#template").html())
            });
        });
    </script>

    <style>
        #listView {
            padding: 10px 5px;
            margin-bottom: -1px;
            min-height: 510px;
        }
        .product {
            float: left;
            position: relative;
            width: 201px;
            height: 170px;
            margin: 0 5px;
            padding: 0;
        }
        .product img {
            width: 200px;
            height: 200px;
        }
        .product h3 {
            margin: 0;
            padding: 3px 5px 0 0;
            max-width: 96px;
            overflow: hidden;
            line-height: 1.1em;
            font-size: .9em;
            font-weight: normal;
            text-transform: uppercase;
            color: #999;
        }
        .product p {
            visibility: hidden;
        }
        .product:hover p {
            visibility: visible;
            position: absolute;
            width: 110px;
            height: 110px;
            top: 0;
            margin: 0;
            padding: 0;
            line-height: 110px;
            vertical-align: middle;
            text-align: center;
            color: #fff;
            background-color: rgba(0,0,0,0.75);
            transition: background .2s linear, color .2s linear;
            -moz-transition: background .2s linear, color .2s linear;
            -webkit-transition: background .2s linear, color .2s linear;
            -o-transition: background .2s linear, color .2s linear;
        }
        .k-listview:after {
            content: ".";
            display: block;
            height: 0;
            clear: both;
            visibility: hidden;
        }
    </style>
</div>
        <script>
            $(function(){ $("#exampleWrap").css("visibility", ""); });
        </script>
  </div>



</asp:Content>

