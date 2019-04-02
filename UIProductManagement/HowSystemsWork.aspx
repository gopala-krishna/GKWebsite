<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="HowSystemsWork.aspx.cs" Inherits="HowSystemsWork" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="fb-root"></div>
    <script>(function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=386874354670915&version=v2.0";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>



    <div class="bg-white text-shadow">
        <div class="container">
            <div class="row">
                <div class="span16 padding20 margin20">
                    <div class="tile-content">
                        <div class="panel no-border">
                            <div class="panel-header bg-blue fg-white text-center">How Products - Systems Work || Product - Platform Internals</div>

                            <div>
                                <br />
                            </div>

                            <div id="listView"></div>
                            <%--<div id="pager" class="k-pager-wrap"></div>--%>
                            <div id="pager"></div>

                            <script type="text/x-kendo-template" id="template">
<div class="product">
    <img src="#=ImgUrl#" onclick ="javascript:location.href='#=LinkUrl#'"/>
</div>
                            </script>

                            <script type="text/JavaScript">
                                $(function () {
                                    $.ajax({
                                        type: "post",
                                        url: "HowSystemsWork.aspx/GetProductList",
                                        contentType: "application/json",
                                        dataType: "json",
                                        success: function (result) {
                                            var jsonResult = JSON.parse(result.d);
                                            var dataSource = new kendo.data.DataSource({
                                                data: jsonResult,
                                                pageSize: 20
                                            });

                                            //$("#pager").kendoPager({
                                            //    dataSource: dataSource,
                                            //    pageSize:2
                                            //});
                                            $("#listView").kendoListView({
                                                dataSource: dataSource,
                                                //template: '<img src="#=ImgUrl#"/>'
                                                template: kendo.template($("#template").html())
                                            });
                                        }
                                    });
                                });
                            </script>
                            <%--override master styles--%>
                            <style>
                                #listView {
                                    padding: 10px 5px;
                                    margin-bottom: -1px;
                                    min-height: 500px;
                                }

                                .product {
                                    float: left;
                                    position: relative;
                                    width: 190px;
                                    height: 120px;
                                    margin: 6 6px;
                                    padding: 0;
                                }

                                    .product img {
                                        width: 190px;
                                        height: 120px;
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


                        <div class="grid no-margin">
                            <div class="row">

                                <div class="span1 no-tablet-portrait no-phone">
                                    <div class="notice marker-on-right bg-white padding1 text-center" style="height: 1px">
                                    </div>
                                </div>

                                <div class="accordion with-marker span12  place-right   " data-role="accordion" data-closeany="false">

                                    <div class="accordion-frame active ">

                                        <div class="fb-save"
                                            data-uri="/UIProductManagement/HowSystemsWork.aspx"
                                            data-size="large">
                                        </div>
                                        <div class="fb-like"
                                            data-href="http://subtlegopala/UIProductManagement/HowSystemsWork.aspx"
                                            data-layout="standard"
                                            data-action="like"
                                            data-show-faces="false"
                                            data-share="true"
                                            data-size="large">
                                        </div>

                                        <div class="fb-comments"
                                            data-href="http://gopala-krishna.com/UIProductManagement/HowSystemsWork.aspx"
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
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
