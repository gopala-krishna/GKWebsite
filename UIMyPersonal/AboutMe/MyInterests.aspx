<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="MyInterests.aspx.cs" Inherits="MyInterests" %>

<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
      <script src="<%= ResolveUrl("~/js/gplus-youtubeembed.js")%>"></script>
       <div class ="bg-white text-shadow">
          <div class="container">
                <div class="row">
                        <div class="span16">
                            <div class="tile-content">
                                <div class="panel no-border">
                                    <div class="panel-header bg-blue fg-white text-center">My Interests</div>

                                         <div class="container">

                                                   <div class="grid no-margin">
                                                        <div class="row accordion-frame">
                                                            <div class="span4 no-tablet-portrait no-phone">
                                                                <div class="notice marker-on-right bg-orange  text-center" style="height: 70px">
                                                                    <p class="subheader-secondary fg-white">Movies</p>
                                                                </div>
                                                            </div>

                                                    
                                                <div class =" span2 padding15 " >                          
                                                <div class="accordion with-marker span9 padding place-left" data-role="accordion" data-closeany="false">

                                                <div class="accordion-frame" >
                                                    <a class="heading">"Hrudayam"(This is my all time favorite movie)</a>
                                                    <div class="content" >
                                                       <iframe width="640" height="480"src="//www.youtube.com/embed/dTUU9JKtQYU"></iframe>
                                                    </div>
                                                </div>

                                                <div class="accordion-frame" >
                                                    <a class="heading">Aithe (Telugu)</a>
                                                    <div class="content" >
                                                        <iframe width="640" height="480"src="//www.youtube.com/embed/2lz8JnZ13gQ"></iframe>
                                                    </div>
                                                </div>

                                              <div class="accordion-frame" >
                                                    <a class="heading">Phone booth (English)</a>
                                                    <div class="content" >
                                                   <%--     <iframe width="640" height="480"src="//www.youtube.com/embed/Umqb9KENgmk"></iframe>--%>
                                                    </div>
                                                </div>

                                              <div class="accordion-frame" >
                                                    <a class="heading">Sweet November (English)</a>
                                                    <div class="content" >
                                                   <%--     <iframe width="640" height="480"src="//www.youtube.com/embed/Umqb9KENgmk"></iframe>--%>
                                                    </div>
                                                </div>

                                             <div class="accordion-frame" >
                                                    <a class="heading">Run Lola run (German)</a>
                                                    <div class="content" >
                                                        <%--<iframe width="640" height="480"src="//www.youtube.com/embed/Umqb9KENgmk"></iframe>--%>
                                                    </div>
                                                </div>

                                                <div class="accordion-frame" >
                                                    <a class="heading">Masoom(Hindi)</a>
                                                    <div class="content" >
                                                        <iframe width="640" height="480"src="//www.youtube.com/embed/0dr7tibdmrQ"></iframe>
                                                    </div>
                                                </div>

                                                <div class="accordion-frame" >
                                                    <a class="heading">Mouna Raagam (Telugu)</a>
                                                    <div class="content" >
                                                        <iframe width="640" height="480"src="//www.youtube.com/embed/xeaefkhUWtk"></iframe>
                                                    </div>
                                                </div>

                                               <div class="accordion-frame" >
                                                    <a class="heading">Arya (Telugu)</a>
                                                    <div class="content" >
                                                        <iframe width="640" height="480"src="//www.youtube.com/embed/BVFD4IXuLHg"></iframe>
                                                    </div>
                                                </div>

                                                <div class="accordion-frame" >
                                                    <a class="heading">Nuvvu naaku nachav (Telugu)</a>
                                                    <div class="content" >
                                                        <iframe width="640" height="480"src="//www.youtube.com/embed/yEcrfM8DaSQ"></iframe>
                                                    </div>
                                                </div>
                                               
                                                <div class="accordion-frame" >
                                                    <a class="heading">A Walk to Remember ( English)</a>
                                                    <div class="content" >
                                                        <%--<iframe width="640" height="480"src="//www.youtube.com/embed/Umqb9KENgmk"></iframe>--%>
                                                    </div>
                                                </div>

                                                <div class="accordion-frame" >
                                                    <a class="heading">If Only ( English)</a>
                                                    <div class="content" >
                                                        <iframe width="640" height="480"src="//www.youtube.com/embed/dO4DQuooKMk"></iframe>
                                                    </div>
                                                </div>
                                               </div>
                                             </div>
                                        </div>
                                     </div>    

                                                    <div class="grid no-margin">
                                                        <div class="row">
                                                            <div class="span4 no-tablet-portrait no-phone">
                                                                <div class="notice marker-on-right bg-reg padding20 text-center" style="height: 70px">
                                                                    <p class="subheader-secondary fg-white">Songs</p>
                                                                </div>
                                                            </div>

                                                            <div class =" span2 padding15 " >                          
                                                            <div class="accordion with-marker span9 padding place-left" data-role="accordion" data-closeany="false">

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Sumam prati sumam sumam.. (illayaraja's song from Maharshi)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/mKPtLWCZVuY"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Jilibili palukula ......(illayaraja's song from Sitara)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/ywjO1O_qUdQ"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Ninnu koori varnam..( illayaraja's song from Gharshana)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/5GYMJVf616g"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Rangulalo kalavo.... (illlayaraja's song from Abhinandana)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/zQ9Q3Gc0E-8"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Mounamelanoye ...(illayaraja's song from Sagara sangamam)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/N-J2YjDtBGs"></iframe>
                                                                </div>
                                                            </div>
                                                        
                                                            <div class="accordion-frame" >
                                                                <a class="heading">Kothaga Rekkalochena ....(illayaraja's song from swarnakamalam)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/eJp2BBmG_zg"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Neevega naa pranam (illayaraja's song from Oo Papa Laali)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/urS2mgrzEp8"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Oo papa laali.... (illayaraja's song from Geethanjali)</a>
                                                                <div class="content" >
                                                                    <%--<iframe width="640" height="480"src="//www.youtube.com/embed/qWhWjiknKWk"></iframe>--%>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Who can say...(Enya's song from Sweet November (English))</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/gMlby1X98wU"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Saagar Kinare ...(R.D Burman's song from Saagar(Hindi))</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/oFWmYPJ_Syc"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Humein aur jeene ki...(R.D Burman's song from Agar tum na hote(Hindi)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/QYLmayyJNuk"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Naa inti mundunna ..(A.R.Rehman's song from Gentlemen)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/YvRkbpgAWR4"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Nee navvu cheppindi naatho(R.D.Burman's song from Antham, especially i like the lyrics of this song)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/qx79YuKuaW0"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Ghallu ghalluna..(O.P .Nayyr's song from Neerajanam)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/Inbrfl9zBM"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Chariots of fire, Vangelis, Theme music (English)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/CSav51fVlKU"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Nuvvena.....(Radhakrishnan's song from Anand)</a>
                                                                <div class="content" >
                                                                    <%--<iframe width="640" height="480"src="//www.youtube.com/embed/cg_UoCUvSos"></iframe>--%>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Hoton se choo lo tum (R.D Burman's song form Premgeet)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/J8MvrqATvZM"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Nazar ke saamne (Nadeem Shravan's song from Ashiqui)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/qvW2nxnj9Tw"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">There She Goes (Lee Mavers number from The La's(English))</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/68MKLkNSMN4"></iframe>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Muddugare yashoda (Devotional song of Annamayya)</a>
                                                                <div class="content" >
                                                                    <iframe width="640" height="480"src="//www.youtube.com/embed/s-VvfVPuUXk"></iframe>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                 </div>
                                             </div>    

                                                    <div class="grid no-margin">
                                                        <div class="row">
                                                            <div class="span4 no-tablet-portrait no-phone">
                                                                <div class="notice marker-on-right bg-green padding0 text-center" style="height: 70px">
                                                                    <p class="subheader-secondary fg-white">Places</p>
                                                                </div>
                                                            </div>

                                                            <div class =" span2 padding15 " >                          
                                                            <div class="accordion with-marker span9 padding place-left" data-role="accordion" data-closeany="false">

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Hyderabad (I love everything in hyderabad )</a>
                                                                <div class="content" >
                                                                    <%--<iframe width="640" height="480"src="//www.youtube.com/embed/dTUU9JKtQYU"></iframe>--%>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Mumbai (Back waters at New Bombay,Banstand)</a>
                                                                <div class="content" >
                                                                    <%--<iframe width="640" height="480"src="//www.youtube.com/embed/dTUU9JKtQYU"></iframe>--%>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Ooty (Shooting Spot, Doddabetta Peak) </a>
                                                                <div class="content" >
                                                                    <%--<iframe width="640" height="480"src="//www.youtube.com/embed/dTUU9JKtQYU"></iframe>--%>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Kodaikanal (Suicide Point, Coakers Walk, Dolphin Nose)</a>
                                                                <div class="content" >
                                                                    <%--<iframe width="640" height="480"src="//www.youtube.com/embed/dTUU9JKtQYU"></iframe>--%>
                                                                </div>
                                                            </div>

                                                             <div class="accordion-frame" >
                                                                <a class="heading">Darjeeling (Tiger Hill, Toy Train, Tea Gardens)</a>
                                                                <div class="content" >
                                                                    <%--<iframe width="640" height="480"src="//www.youtube.com/embed/dTUU9JKtQYU"></iframe>--%>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Banglore and Mysore (Brundavan Gardens, Shivaji palace)</a>
                                                                <div class="content" >
                                                                    <%--<iframe width="640" height="480"src="//www.youtube.com/embed/dTUU9JKtQYU"></iframe>--%>
                                                                </div>
                                                            </div>

                                                            <div class="accordion-frame" >
                                                                <a class="heading">Vizag (Borra caves, Araku, Gangavaram beach)</a>
                                                                <div class="content" >
                                                                    <%--<iframe width="640" height="480"src="//www.youtube.com/embed/dTUU9JKtQYU"></iframe>--%>
                                                                </div>
                                                            </div>

                                                                 <div class="accordion-frame" >
                                                                <a class="heading">Mahabaleshwar (Elephant’s Head Point, Sunrise Point)</a>
                                                                <div class="content" >
                                                                    <%--<iframe width="640" height="480"src="//www.youtube.com/embed/dTUU9JKtQYU"></iframe>--%>
                                                                </div>
                                                            </div>




                                                            <%--<div class="span8">
                                                                <ul >
                                                                    <li style="width: 90%">Hyderabad ( I love everything in hyderabad )</li>
                                                                    <li style="width: 90%">Mumbai(Back waters at New Bombay,Banstand)</li>
                                                                    <li style="width: 90%">Banglore and Mysore (Brundavan Gardens, Shivaji palace)</li>
                                                                    <li style="width: 90%">Vizag(Borra caves, Araku, Gangavaram beach)</li>
                                                                </ul>
                                                            </div>--%>
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
      <script type="text/javascript">optimizeYouTubeEmbeds()</script>
</asp:Content>
