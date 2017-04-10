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
                                    <a href="#" class="dropdown-toggle fg-blue  no-marker text-shadow" onclick ="ViewPlaylist()">A</a>
                                    </li>
                            </ul>
                            </nav>
                        <%--</div>--%>




<!-- Kendo JavaScript -->
<script src="<%= ResolveUrl("~js/jszip.min.js")%>"></script>
<script src="<%= ResolveUrl("~js/kendo.all.min.js")%>"></script>


 <script type="text/x-kendo-template" id="template">
            
                
             <%--   <h3>#:ProductName#</h3>
                <p>#:kendo.toString(UnitPrice, "c")#</p>
 --%>           
        </script>

                                    

<div id="listView"></div>    

 <%--<script type="text/JavaScript">
     function ViewPlaylist() {
         alert("1");
         var dataSource = new kendo.data.DataSource({
             url: "BackgroundScores.aspx/GetPlaylist",
             data: jsonResult.BScores,
             pageSize: 21
         });
         alert("2");
         //$("#pager").kendoPager({
         //    dataSource: dataSource
         //});

         $("#listView").kendoListView({
             dataSource: dataSource,
             template: '<img src="../images/HowSystemsWork/whatsapp.jpg" />'
         });
     }
            
 </script>--%>


          
  
 <script type="text/JavaScript">
     function ViewPlaylist() {

         ViewPlaylist.textContent = "Playlist";


         alert("1");
         //var params = {};
         //params.folderName = JSON.stringify(strLabelText.innerHTML);

         $.ajax({
             type: "post",
             url: "BackgroundScores.aspx/GetPlaylist",
             //data: JSON.stringify(params),
             contentType: "application/json; charset=utf-8",
             dataType: "json",
             success: function (result) {
                 var jsonResult = JSON.parse(result.d);

                 $("#listView").kendoListView({
                     dataSource: {
                         data: jsonResult.BScores,
                         template: '<img src="../images/HowSystemsWork/whatsapp.jpg" />'

                     }
                 });
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