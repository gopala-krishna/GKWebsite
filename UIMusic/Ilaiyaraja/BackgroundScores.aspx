<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="BackgroundScores.aspx.cs" Inherits="BackgroundScores" %>

<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

<div id="fb-root"></div>
<script>
    (function (d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=386874354670915&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'))
</script>


        <div class ="bg-white">
          <div class="container">
                <div class="row">
                        <div class="span16 padding20">
                            <div class="tile-content">
                                <div class="panel no-border">
                                    <div class="panel-header bg-blue fg-white text-center">Background Scores of  Maestro Ilaiyaraja</div>  



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



                  <%-- <div class="span16 padding20">--%>
                    <nav class="horizontal-menu" >
                                <ul>
                                    <li>
                                    <a href="#" class="dropdown-toggle fg-blue  no-marker text-shadow" onclick ="ViewPlaylist(this)">A</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">B</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">C</a>
                                    </li>
                                    <li>
                                    <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">D</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">E</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">F</a>
                                    </li>
                                    <li>
                                    <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">G</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">H</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">I</a>
                                    </li>
                                      <li>
                                    <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">J</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">K</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">L</a>
                                    </li>
                                    <li>
                                    <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">M</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">N</a>
                                    </li>
                                     </ul>
                      
                                    <ul>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">O</a>
                                    </li>
                                    <li>
                                    <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">P</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">Q</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">R</a>
                                    </li>
                                    <li>
                                    <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">S</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">T</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">U</a>
                                    </li>
                                    <li>
                                    <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">V</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">W</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">X</a>
                                    </li>
                                    <li>
                                    <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">Y</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist(this)">Z</a>
                                    </li>
                                   
                            </ul>
                            </nav>
                        <%--</div>--%>




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
                         { field: "DownloadUrl", title: "Download",width:120, template: '<a href="#=DownloadUrl#">Download</a>' }
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

                                                <div class="accordion with-marker span12  place-right   " data-role="accordion" data-closeany="false">

                                               

                                                 <div class="accordion-frame active " >
                                                        <a class="heading text-center text-bold bg-blue fg-white">Comment on Facebook about this page</a>
                                                        <div class="content " >
                                                        <div class="fb-comments" data-href="http://subtlegopalweb.com/" data-width="915" data-numposts="10" data-colorscheme=""></div>
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
            </div>

   <%-- <script src="js/hitua.js"></script>--%>
     <br />
</asp:Content>