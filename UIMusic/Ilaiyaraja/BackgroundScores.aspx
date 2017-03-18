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
                                    <div class="panel-header bg-orange fg-white text-center">Background Scores of  Maestro Ilaiyaraja</div>  



                   <div class="span16">
                    <nav class="horizontal-menu">
                                <ul>
                                    <li>
                                        <a class="dropdown-toggle fg-white  no-marker"></a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist()">Songs</a>
                                    </li>

                                   <%-- <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist()">Songs</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist()">Songs</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewPlaylist()">Songs</a>
                                    </li>--%>
                            </ul>
                            </nav>
                        </div>
                     <div id="grid"></div>              

<!-- Kendo JavaScript -->
    <script src="<%= ResolveUrl("~js/jszip.min.js")%>"></script>
    <script src="<%= ResolveUrl("~js/kendo.all.min.js")%>"></script>
<script type="text/JavaScript">
    function ViewPlaylist() {
        ViewPlaylist.textContent = "Playlist One";
        $.ajax({
            type: "post",
            url: "BackgroundScores.aspx/GetPlaylist",
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
                        { field: "Url", title: "Url" },
                        {
                            field: "Play", titile: "Play", template: '<audio controls><source src="#=Url#">#=Title#</audio>'
                        }
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