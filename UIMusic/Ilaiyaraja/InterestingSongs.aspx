<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="InterestingSongs.aspx.cs" Inherits="InterestingSongs" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="bg-white">
        <div class="container">
            <div class="row">
                <div class="span16 padding10">
                    <div class="tile-content">
                        <div class="panel no-border">
                            <div class="panel-header bg-blue fg-white text-center">Interesting Songs of Maestro Ilaiyaraja</div>

                            <script src="<%= ResolveUrl("~js/jszip.min.js")%>"></script>
                            <script src="<%= ResolveUrl("~js/kendo.all.min.js")%>"></script>
                            <div id="grid"></div>

                            <div class="row text-center">
                                <script type="text/JavaScript">

                                    window.onload = function () {
                                        this.ViewPlaylist("All");
                                    }
                                </script>
                            </div>


                            <script type="text/javascript"></script>

                            <script type="text/JavaScript">
                                function ViewPlaylist(strLabelText) {

                                    ViewPlaylist.textContent = "Playlist";

                                    var params = {};
                                    params.folderName = JSON.stringify(strLabelText);

                                    $.ajax({
                                        type: "post",
                                        url: "InterestingSongs.aspx/GetPlaylist",
                                        data: JSON.stringify(params),
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (result) {
                                            var jsonResult = JSON.parse(result.d);
                                            $("#grid").kendoGrid({
                                                dataSource: {
                                                    data: jsonResult.Songs,
                                                    schema: {
                                                        model: {
                                                            fields: {
                                                                SongTitle: { type: "string" },
                                                                Play: { type: "audio\mp3" },
                                                                DownloadUrl: { type: "string" },
                                                            }
                                                        }
                                                    },
                                                    pageSize: 20
                                                },
                                                height: 550,
                                                scrollable: true,
                                                sortable: true,
                                                filterable: true,
                                                pageable: {
                                                    input: true,
                                                    numeric: false
                                                },
                                                columns: [
                                                    { field: "SongTitle", title: "Song" },
                                                    {
                                                        field: "Play", titile: "Play", template: '<audio controls><source src="#=DownloadUrl#">#=SongTitle#</audio>'
                                                    },
                                                    { field: "DownloadUrl", title: "Download", width: 120, template: '<a href="#=DownloadUrl#"><img src="../../images/download.ico" style="width:40px;height:40px;border:0;"</a>' }
                                                ]
                                            });

                                        },
                                        error: function (xhr, status, error) {
                                            OnFailure(error);
                                        }
                                    });
                                }
                            </script>
                            <div class="grid no-margin">
                                <div class="row">

                                    <div class="span1 no-tablet-portrait no-phone">
                                        <div class="notice marker-on-right bg-white padding1 text-center" style="height: 1px">
                                        </div>
                                    </div>


                                    <div class="accordion with-marker span12  place-right" data-role="accordion" data-closeany="false">

                                        <div class="accordion-frame active ">

                                            <div class="fb-save"
                                                data-uri="http://subtlegopala.com/UIMusic/Ilaiyaraja/InterestingSongs.aspx"
                                                data-size="large">
                                            </div>
                                            <div class="fb-like"
                                                data-href="http://subtlegopala.com/UIMusic/Ilaiyaraja/InterestingSongs.aspx"
                                                data-layout="standard"
                                                data-action="like"
                                                data-show-faces="false"
                                                data-share="true"
                                                data-size="large">
                                            </div>

                                            <div class="fb-comments"
                                                data-href="http://subtlegopala.com/UIMusic/Ilaiyaraja/InterestingSongs.aspx"
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
    </div>

    <%-- <script src="js/hitua.js"></script>--%>
    <br />
</asp:Content>
