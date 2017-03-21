<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="ImpBooks.aspx.cs" Inherits="ImpBooks" %>

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

       <div class ="bg-white text-shadow">
          <div class="container">
                <div class="row">
                        <div class="span16">
                            <div class="tile-content">
                                <div class="panel no-border">
                                    <div class="panel-header bg-blue fg-white text-center">Must Read Books For Entrepreneurs</div>

                                    <div id ="listView1"></div>
                                    <script>
                                        $("#listView1").kendoListView({
                                            dataSource: {
                                                data: [
                                                    { name: "Jane Doe" },
                                                    { name: "John Doe" }
                                                ]
                                            },
                                            template: "<div>#:name#</div>"
                                        });
                                    </script>


<div id ="listView2"></div>
 <script type="text/JavaScript">                                
     $("#listView2").kendoListView({
         dataSource: {
             url: "ImpBooks.aspx/LoadBookList",
             data: jsonResult.d.Books,
             schema: {
                 model: {
                     fields: {
                         bookNane: { type: "string" },
                         bookImage: { type: Image, template: <div><a href=""></a></div> }
                     }
                 }
             },
         },
     });
</script>



<!-- Kendo JavaScript -->
<script src="<%= ResolveUrl("~js/jszip.min.js")%>"></script>
<script src="<%= ResolveUrl("~js/kendo.all.min.js")%>"></script>
<script src="<%= ResolveUrl("~js/kendo.listview.min.js")%>"></script>

<div>
    <nav class="horizontal-menu" >
         
<a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="LoadBookslist()">Load</a>
<%--<button onclick ="LoadBookslist()">Load</button>--%>
              
             </nav>
</div>



<div id ="listView"></div>
<script type="text/JavaScript">
    function LoadBookslist() {
        alert("test2");
        $.ajax({
            type: "post",
            url: "ImpBooks.aspx/LoadBookList",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                var jsonResult = JSON.parse(result.d);
                alert(jsonResult.Books.BookName);
                $("#listView").kendoListView({
                    dataSource: {
                        data: jsonResult.Books,
                        //template: "<div>#:BookName#</div>"

                        schema: {
                            model: {
                                fields: {
                                    BookName: { type: "string" },
                                    //bookImage: { type: Image, template: <div><a href=""></a></div> }
                                }
                            }
                        },
                       pageSize: 1
                    },
                });
            },
            error: function (xhr, status, error) {
                OnFailure(error);
            }
        });
    }

</script>

   <%-- function ViewPlaylist(strLabelText) {

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
    }--%>

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
    <br />
</asp:Content>
