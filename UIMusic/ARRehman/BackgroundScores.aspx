<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="BackgroundScores.aspx.cs" Inherits="BackgroundScores" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="bg-white">
        <div class="container">
            <div class="row">
                <div class="span16 padding20 margin20">
                    <div class="tile-content">
                        <div class="panel no-border">
                            <div class="panel-header bg-blue fg-white text-center">Background scores of A R Rehman</div>



                            <%--   <div id ="testlistView"></div>
                                    <script>
                                        var dataSource = new kendo.data.DataSource({
                                            data: [{ name: "Jane Doe" }, { name: "John Doe" }]
                                        });
                                        $("#testlistView").kendoListView({
                                            dataSource: dataSource,
                                            template: "<div>#:name#</div>",
                                            autoBind: false
                                        });
                                        dataSource.read(); // "read()" will fire the "change" event of the dataSource and the widget will be bound
                                    </script>--%>



                            <div class="row text-center">
                                <br />
                                <br />

                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">A</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">B</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">C</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">D</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">E</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">F</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">G</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">H</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">I</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">J</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">K</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">L</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">M</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">N</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">O</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">P</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">Q</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">R</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">S</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">T</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">U</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">V</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">W</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">X</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">Y</a>
                                <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" style="font-size: x-large" onclick="ViewPlaylist(this)">Z</a>

                            </div>
                            <br />
                            <br />






                            <!-- Kendo JavaScript -->
                            <script src="<%= ResolveUrl("~js/jszip.min.js")%>"></script>
                            <script src="<%= ResolveUrl("~js/kendo.all.min.js")%>"></script>


                            <div id="grid"></div>

                            <%--<script type="text/JavaScript">
   function LoadPlaylists() {
        LoadPlaylists.textContent = "Playlists";
        alert("test2");
        $.ajax({
            type: "post",
            url: "BackgroundScores.aspx/LoadPlaylists",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                var jsonResult = JSON.parse(result.d);
                alert(jsonResult.Playlists);
                $("#listView").kendoGrid({
                    dataSource: {
                        data: jsonResult.Playlists,
                        schema: {
                            model: {
                                fields: {
                                    Url: { type: "string" },
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
                        //{ field: "Url", title: "Url", template: '<button onclck =" ViewPlaylist(#=Url#)">#=Url#<a>' } // NW
                        //{ field: "Url", title: "Url", template: '<button>#= ViewPlaylist(#=Url#)#>#=Url#<button>' } // NW
                        //{ field: "Url", title: "Url", template: '<a>#= ViewPlaylist(#=Url#)#>#=Url#<a>' } // NW
                        //{ field: "Url", title: "Url", template: '<a onclick = "ViewPlaylist(#=Url#)">#=Url#</a>' }//NW
                        { field: "Url", title: "Url", template: '<a href = "http://google.com">google</a>' }//NW
                        //{ field: "Url", title: "Url", template: '<a href = "#" onclick = "ViewPlaylist(#=Url#)">#=Url#</a>' }//NW
                    ]
                });

            },
            error: function (xhr, status, error) {
                OnFailure(error);
            }
        });
    }

    function ViewPlaylist(strLabelText) {

        ViewPlaylist.textContent = "Playlist";

        var params = {};
        params.folderName = JSON.stringify(strLabelText.innerHTML);
        alert('test1');
        $.ajax({
            type: "post",
            url: "BackgroundScores.aspx/GetPlaylist",
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
                                    Title: { type: "string" },
                                    Url: { type: "string" },
                                    Play: { type: "audio\mp3" },
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
                        { field: "Title", title: " Song Title" },
                        {
                            field: "Play", titile: "Play", template: '<audio controls><source src="#=Url#">#=Title#</audio>'
                        },
                        { field: "Url", title: "Url", template: '<a href="#=Url#">Download</a>' }
                    ]
                });

            },
            error: function (xhr, status, error) {
                OnFailure(error);
            }
        });
    }
</script>--%>


                            <script type="text/JavaScript">
                                function ViewPlaylist(strLabelText) {

                                    ViewPlaylist.textContent = "Playlist";

                                    var params = {};
                                    params.folderName = JSON.stringify(strLabelText.innerHTML);

                                    $.ajax({
                                        type: "post",
                                        url: "BackgroundScores.aspx/GetPlaylist",
                                        data: JSON.stringify(params),
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (result) {
                                            var jsonResult = JSON.parse(result.d);
                                            $("#grid").kendoGrid({
                                                dataSource: {
                                                    data: jsonResult.BScores,
                                                    schema: {
                                                        model: {
                                                            fields: {
                                                                Movie: { type: "string" },
                                                                BScoreTitle: { type: "string" },
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
                                                    { field: "Movie", title: " Movie" },
                                                    { field: "BScoreTitle", title: " Background Score" },
                                                    {
                                                        field: "Play", titile: "Play", template: '<audio controls><source src="#=DownloadUrl#">#=BScoreTitle#</audio>'
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
                                                data-uri="http://gopala-krishna.com/UIMusic/ARRehman/BackgroundScores.aspx"
                                                data-size="large">
                                            </div>
                                            <div class="fb-like"
                                                data-href="http://gopala-krishna.com/UIMusic/ARRehman/BackgroundScores.aspx"
                                                data-layout="standard"
                                                data-action="like"
                                                data-show-faces="false"
                                                data-share="true"
                                                data-size="large">
                                            </div>

                                            <div class="fb-comments"
                                                data-href="http://gopala-krishna.com/UIMusic/ARRehman/BackgroundScores.aspx"
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
