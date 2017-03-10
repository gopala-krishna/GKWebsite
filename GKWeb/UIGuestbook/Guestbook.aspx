<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Guestbook.aspx.cs"  Inherits="Guestbook" %>

<html>
    <head runat="server">
        <style type="text/css">
        .auto-style1 {
            width: 150px;
        }
    </style>
    <link rel ="SHORTCUT ICON" href="/images/MyPhotos/1.jpg" />
       
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="product" content="Gopala Website"/>
    <meta name="description" content="Gopala Website"/>
    <meta name="author" content="Gopala Krishna"/>
    <meta name="keywords" content="js, css, metro, framework, windows 8, metro ui, IIT Bombay, Microsoft"/>

    <link href="../css/metro-bootstrap.css" rel="stylesheet"/>
    <link href="../css/metro-bootstrap-responsive.css" rel="stylesheet"/>
    <link href="../css/iconFont.css" rel="stylesheet"/>
    <link href="../css/docs.css" rel="stylesheet"/>


    <!-- Load JavaScript Libraries -->
    <script src="<%= ResolveUrl("~/js/jquery/jquery.min.js")%>"></script>
    <script src="<%= ResolveUrl("~/js/jquery/jquery.widget.min.js")%>"></script>
    <script src="<%= ResolveUrl("~/js/jquery/jquery.mousewheel.js")%>"></script>


    <!-- Metro UI CSS JavaScript plugins -->
    <script src="<%= ResolveUrl("~/js/load-metro.js")%>"></script>
    

    <!-- Local JavaScript -->
    <script src="<%= ResolveUrl("~/js/docs.js")%>"></script>

  <title> Gopala Krishna's Website</title>
</head>
    <body class ="metro"background ="../../images/" >
         <form id="form1" runat="server">

           <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=386874354670915&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

   <header class ="" data-load ="../Header.aspx"></header>

                                         <div class="container place-right text-shadow">

                                              <div class="grid no-margin">
                                                        <div class="row">
                                                         
                                                            <div class="accordion with-marker span12 padding place-center" data-role="accordion" data-closeany="false">

                                                            <div class="accordion-frame active " >
                                                                <a class="heading text-center text-bold bg-blue fg-white">Comment with Facebook</a>
                                                                <div class="content " >
                                                               <div class="fb-comments" data-href="http://geekgopalakrishna.com/" data-width="915" data-numposts="10" data-colorscheme=""></div>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame active">
                                                                <a class="heading text-center text-bold  bg-blue  fg-white">Comment with E-Mail</a>
                                                                <div class="content text-center" >

                                                                    <table style="width: 100%; height: 41px; background-color:transparent">
                                                                        <tr>
                                                                            <td class="auto-style1">&nbsp;</td>
                                                                            <td class="auto-style2" align = right>
                                                                                <asp:Label ID="lblName" runat="server" Text="Name :"></asp:Label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtName" runat="server" Width="270px"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style1">&nbsp;</td>
                                                                            <td class="auto-style2" align ="right">
                                                                                <asp:Label ID="lblMail" runat="server" Text="E-Mail :"></asp:Label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtMail" runat="server" Width="270px"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style1">&nbsp;</td>
                                                                            <td class="auto-style2" align ="right">
                                                                                <asp:Label ID="lblPhone" runat="server" Text="Phone :"></asp:Label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtPhone" runat="server" Width="270px"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                         <tr>
                                                                            <td class="auto-style1">&nbsp;</td>
                                                                            <td class="auto-style2" align ="right">
                                                                                <asp:Label ID="lblComment" runat="server" Text="Comment :"></asp:Label>
                                                                             </td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtComment" runat="server" Width="270px" Height ="100px" TextMode="MultiLine"></asp:TextBox>
                                                                             </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style1">&nbsp;</td>
                                                                            <td class="auto-style2" align ="center">&nbsp;</td>
                                                                            <td><br />
                                                                                <asp:Button ID="btnSubmit" runat="server" Text="Submit"  OnClick="btnSubmit_Click" Width="160px" BackColor ="MintCream" BorderColor="Black" Font-Bold="true"/>
                                                                            </td>
                                                                        </tr>
                                                                    </table>


                                                                   <asp:DataList ID="MyGuestbook" Runat="server" Width="100%" style="margin-top: 10px" BackColor="Transparent">
                                                                        <ItemTemplate>
                                                                        <hr size=0/>
                                                                        <b>Name: </b><%# DataBinder.Eval(Container.DataItem, "name") %><br />
                                                                         <b>E-mail: </b><a href="mailto:<%# DataBinder.Eval(Container.DataItem, "email") %>"><%# DataBinder.Eval(Container.DataItem, "email") %></a><br />
                                                                         <b>Phone:</b> <%# DataBinder.Eval(Container.DataItem, "phone") %><br />
                                                                         <b>Comment:</b> <%# DataBinder.Eval(Container.DataItem, "comment") %><br />
                                                                        </ItemTemplate>
                                                                    </asp:DataList>


                                                                </div>
                                                            </div>

                                                          

                                                        </div>
                                
                                         </div>
                                         </div>

                                      </div>
              <br />
             </form>
        </body>

  <%--Google analytics tracking--%>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-58426798-1', 'auto');
  ga('send', 'pageview');

</script>

    </html>
