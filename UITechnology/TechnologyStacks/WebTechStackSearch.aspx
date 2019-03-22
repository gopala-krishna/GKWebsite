<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebTechStackSearch.aspx.cs" Inherits="UITechnology_TechnologyStacks_WebTechStackSearch" %>

<html>
<head runat="server">
    <link rel="SHORTCUT ICON" href="/images/MyPhotos/1.jpg" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="product" content="Gopala Website" />
    <meta name="description" content="Gopala Website" />
    <meta name="author" content="Gopala Krishna" />
    <meta name="keywords" content="js, css, metro, framework, windows 8, metro ui, IIT Bombay, Microsoft" />

    <link href="../../css/metro-bootstrap.css" rel="stylesheet" />
    <link href="../../css/metro-bootstrap-responsive.css" rel="stylesheet" />
    <link href="../../css/iconFont.css" rel="stylesheet" />
    <link href="../../css/docs.css" rel="stylesheet" />
    <link href="../../css/listviewstyle.css" rel="stylesheet" />
    <link href="../../css/gridstyle/kendo.common.min.css" rel="stylesheet">
    <link href="../../css/gridstyle/kendo.default.min.css" rel="stylesheet">
    <link href="../../css/gridstyle/kendo.rtl.min.css" rel="stylesheet">
    <link href="../../css/gridstyle/kendo.default.min.css" rel="stylesheet">
    <link href="../../css/gridstyle/kendo.dataviz.min.css" rel="stylesheet">
    <link href="../../css/gridstyle/kendo.dataviz.default.min.css" rel="stylesheet">
    <link href="../../css/webtechstacksearch/webtechstack.css" rel="stylesheet" type="text/css" />
    <link href="../../css/webtechstacksearch/w3techs.css" rel="stylesheet" type="text/css" />
    <link href="../../css/webtechstacksearch/netcraft.css" rel="stylesheet" type="text/css" />
    <link href="../../css/webtechstacksearch/builtwith1.css" rel="stylesheet" type="text/css" />
    <link href="../../css/webtechstacksearch/builtwith2.css" rel="stylesheet" type="text/css" />




    <!-- Load JavaScript Libraries -->
    <script src="<%= ResolveUrl("~/js/jquery/jquery.min.js")%>"></script>
    <script src="<%= ResolveUrl("~/js/jquery/jquery.widget.min.js")%>"></script>
    <script src="<%= ResolveUrl("~/js/jquery/jquery.mousewheel.js")%>"></script>



    <!-- Metro UI CSS JavaScript plugins -->
    <script src="<%= ResolveUrl("~/js/load-metro.js")%>"></script>




    <!-- Local JavaScript -->
    <script src="<%= ResolveUrl("~/js/docs.js")%>"></script>

    <!-- Kendo JavaScript -->
    <script src="<%= ResolveUrl("~/js/jszip.min.js")%>"></script>
    <script src="<%= ResolveUrl("~/js/kendo.all.min.js")%>"></script>

    <%--<title>Interested in finding out on what technogy stack a website was built on</title>--%>
</head>
<body class="metro">
    <header class="" data-load="../../Header.aspx"></header>
    <h2>
        <div class="panel text-center">
            <div class="accordion  text-center" data-role="accordion" data-closeany="false">
                <div class="accordion-frame  text-center">
                    <a class="heading text-center fg-blue bg-gray-Lighter">Search for technologies powering a website</a>
                </div>
            </div>
        </div>
    </h2>

    <form id="search" runat="server">
        <div class="panel text-center">
            <div class="grid no-margin">
                <div class="row padding20">

                    <asp:TextBox ID="txtSearch" runat="server" Width="300px" placeholder="http://... "></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />

                </div>
            </div>
        </div>


        <div class="panel  text-center">
            <div class="grid">
                <div class="row padding20">

                    <a class="button bg-teal fg-white text-center" style="width: 300px; margin-bottom: 10px">W3Tech Search Results</a><br />
                    <br />
                    <div>
                        <asp:Literal runat="server" ID="litW3Techs" />
                    </div>

                </div>
            </div>

        </div>

        <div class="panel  text-center">
            <div class="grid">
                <div class="row padding20">

                    <a class="button bg-teal fg-white text-center" style="width: 300px; margin-bottom: 10px">Netcraft Search Results</a><br />
                    <br />
                    <div>
                        <asp:Literal runat="server" ID="litNetCraft"></asp:Literal>
                    </div>

                </div>
            </div>
        </div>

        <%--  <div class="panel  text-left">
            <div class="grid">
                <div class="row padding15">
                    
                     <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Builtwith Search Results</a><br /><br />
                            <div>
                                <asp:Literal runat="server" ID="litBuiltWith"></asp:Literal>
                            </div>
                        
                </div>
            </div>
        </div>--%>
    </form>
    <%--<footer class=""data-load="../../Footer.aspx"></footer>--%>

    <div class="grid no-margin">
        <div class="row">

            <div class="span1 no-tablet-portrait no-phone">
                <div class="notice marker-on-right bg-white padding1 text-center" style="height: 1px">
                </div>
            </div>


            <div class="accordion with-marker span12  place-right" data-role="accordion" data-closeany="false">

                <div class="accordion-frame active ">

                    <div class="fb-save"
                        data-uri="http://subtlegopala.com/UITechnology/TechnologyStacks/WebTechStackSearch.aspx"
                        data-size="large">
                    </div>
                    <div class="fb-like"
                        data-href="http://subtlegopala.com/UITechnology/TechnologyStacks/WebTechStackSearch.aspx"
                        data-layout="standard"
                        data-action="like"
                        data-show-faces="false"
                        data-share="true"
                        data-size="large">
                    </div>

                    <div class="fb-comments"
                        data-href="http://subtlegopala.com/UITechnology/TechnologyStacks/WebTechStackSearch.aspx"
                        data-numposts="5"
                        data-width="200px">
                    </div>



                    <script>(function (d, s, id) {
                            var js, fjs = d.getElementsByTagName(s)[0];
                            if (d.getElementById(id)) return;
                            js = d.createElement(s); js.id = id;
                            js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
                            fjs.parentNode.insertBefore(js, fjs);
                        }(document, 'script', 'facebook-jssdk'));</script>



                </div>
            </div>




        </div>
    </div>

</body>
</html>
