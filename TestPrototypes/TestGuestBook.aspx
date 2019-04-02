<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="TestGuestBook.aspx.cs" Inherits="TestGuestBook" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=386874354670915&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

    <div class="bg-white">
        <div class="container">
            <div class="row">
                <div class="span12 padding20">
                    <div class="tile-content">
                        <div class="panel no-border">


                            <div class="grid no-margin">
                                <div class="row">

                                    <div class="accordion with-marker span12 padding place-center" data-role="accordion" data-closeany="false">

                                        <div class="accordion-frame active ">
                                            <a class="heading text-center text-bold bg-blue fg-white">Comment with Facebook</a>
                                            <div class="content ">
                                                <div class="fb-comments" data-href="http://gopala-krishna.com" data-width="915" data-numposts="10" data-colorscheme=""></div>
                                            </div>
                                        </div>

                                        <div class="accordion-frame active">
                                            <a class="heading text-center text-bold  bg-blue  fg-white">Comment with E-Mail</a>
                                            <div class="content text-center">

                                                <table style="width: 100%; height: 41px; background-color: transparent">
                                                    <tr>
                                                        <td class="auto-style1">&nbsp;</td>
                                                        <td class="auto-style2" align ="right">
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
                                                            <asp:TextBox ID="txtComment" runat="server" Width="270px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style1">&nbsp;</td>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>
                                                            <br />
                                                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Width="160px" BackColor="MintCream" BorderColor="Black" Font-Bold="true" />
                                                        </td>
                                                    </tr>
                                                </table>


                                                <asp:DataList ID="MyGuestbook" runat="server" Width="100%" Style="margin-top: 10px" BackColor="Transparent">
                                                    <ItemTemplate>
                                                        <b>Name: </b><%# DataBinder.Eval(Container.DataItem, "name") %><br />
                                                        <b>E-mail: </b><a href="mailto:<%# DataBinder.Eval(Container.DataItem, "email") %>"><%# DataBinder.Eval(Container.DataItem, "email") %></a><br />
                                                        <b>Phone:</b> <%# DataBinder.Eval(Container.DataItem, "phone") %><br />
                                                        <b>Comment:</b> <%# DataBinder.Eval(Container.DataItem, "comment") %><br />
                                                    </ItemTemplate>
                                                </asp:DataList>


                                            </div>
                                        </div>



                                        <%--                </div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>



    <script src="js/hitua.js"></script>
</asp:Content>

