<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="InterestingFactsAboutPI.aspx.cs" Inherits="InterestingFactsAboutPI" %>

<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

 <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=386874354670915&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>



        <div class ="bg-white text-shadow">
          <div class="container">
                <div class="row">
                        <div class="span16 padding20">
                            <div class="tile-content">
                                <div class="panel no-border">
                                    <div class="panel-header bg-orange fg-white text-center">Interesting Facts About PI</div>  
                               
                                       
                                        <div class="grid no-margin">
                                             <div class="row">

                                                       <div class="span1 no-tablet-portrait no-phone">
                                                                <div class="notice marker-on-right bg-white padding1 text-center" style="height: 1px">
                                                                </div>
                                                            </div>

                                                <div class="accordion with-marker span12  place-right   " data-role="accordion" data-closeany="false">

                                               

                                                 <div class="accordion-frame active " >
                                                        <a class="heading text-center text-bold bg-red fg-white">Comment on Facebook about this page</a>
                                                        <div class="content " >
                                                        <div class="fb-comments" data-href="http://geekgopalakrishna.com/" data-width="915" data-numposts="10" data-colorscheme=""></div>
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