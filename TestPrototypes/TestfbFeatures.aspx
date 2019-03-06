<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="TestfbFeatures.aspx.cs" Inherits="TestfbFeatures" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr style="border: 0px; border-top: 2px  solid gray;" />

    

    <%-- This is working fb plugin --%>
    <div class="grid no-margin">
                                <div class="row">

                                     <div class="span1 no-tablet-portrait no-phone">
                                        <div class="notice marker-on-right bg-white padding1 text-center" style="height: 1px">
                                        </div>
                                    </div>


                                    <div class="accordion with-marker span12  place-right" data-role="accordion" data-closeany="false">

                                        <div class="accordion-frame active ">

                                            <div class="fb-save"
                                                data-uri="http://subtlegopala.com/TestPrototypes/TestfbFeatures.aspx"
                                                data-size="large">
                                            </div>
                                            <div class="fb-like"
                                                data-href="http://subtlegopala.com/TestPrototypes/TestfbFeatures.aspx"
                                                data-layout="standard"
                                                data-action="like"
                                                data-show-faces="false"
                                                data-share="true"
                                                data-size="large">
                                            </div>

                                            <div class="fb-comments"
                                                data-href="http://subtlegopala.com/TestPrototypes/TestfbFeatures.aspx"
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

                        


    <script src="js/hitua.js"></script>
</asp:Content>

