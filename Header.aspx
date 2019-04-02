<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Header.aspx.cs" Inherits="Header" %>

<html>
<body class="metro" style="background-color: black">
    <form id="form1" runat="server">
        <div class="navigation-bar fixed-top dark">
            <div class="navigation-bar-content container">
                <a href="/" class="element"><span class="icon-grid-view  fg-blue"></span>GopalaKrishna <sup>2.0</sup></a>
                <span class="element-divider"></span>
                <ul class="element-menu">


                    <li>
                        <a class="dropdown-toggle " href="#">My Personal</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                <a href="#" class="dropdown-toggle">About Me</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                    <li><a href="../../../UIMyPersonal/AboutMe/AboutMe.aspx">My Timeline</a></li>
                                    <li><a href="../../../UIMyPersonal/AboutMe/MyInterests.aspx">My Interests</a></li>
                                    <li><a href="" style="color: gray">My Family</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle">Photos</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                    <li><a href="../../../UIMyPersonal/Photos/MyPhotos.aspx">My Photos</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-toggle" href="#">Interesting Stuff</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                <a href="#" class="dropdown-toggle">Interesting Facts</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                    <li><a href="../../../UIInterestingStuff/InterstingFacts/InterestingScienceFacts.aspx">Science Facts</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle">Interesting Illusions</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                    <li><a href="../../../UIInterestingStuff/InterestingOpticalIllusions/InterestingOpticalIllusions.aspx">Optical Illusions</a></li>
                                </ul>
                            </li>
                            <li>
                                <%-- <a class="dropdown-toggle " href ="#">Misc</a>
                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                    <li>
                        <a href="#" class="dropdown-toggle">Readings</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="../../../../UIInterestingStuff/Misc/Readings/TeluguNovels.aspx">Telugu Novels</a></li>
                        </ul>
                    </li>
                </ul>--%>
                            </li>
                        </ul>
                    </li>



                    <li>
                        <a href="#" class="dropdown-toggle">Math Fun</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="../../../UIMathFun/MathPuzzles.aspx ">Mathematics Puzzles</a></li>
                            <li><a href="../../../UIMathFun/InterestingFactsAboutPI.aspx ">Facts About PI</a></li>
                        </ul>
                    </li>



                    <li>
                        <a href="#" class="dropdown-toggle">Music</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                <a href="#" class="dropdown-toggle">Ilaiyaraja</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                    <li><a href="../../../UIMusic/Ilaiyaraja/AboutIlaiyaraja.aspx">About Ilaiyaraja</a></li>
                                    <li><a href="../../../UIMusic/Ilaiyaraja/BackgroundScores.aspx">Background Scores</a></li>
                                    <li><a href="../../../UIMusic/Ilaiyaraja/InterestingSongs.aspx">Interesting Songs</a></li>
                                    <li><a href="" style="color: gray">Favorite Links</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle">A.R.Rehman</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                    <li><a href="http://www.arrahman.com/">About A.R Rehman</a></li>
                                    <li><a href="../../../UIMusic/ARRehman/BackgroundScores.aspx">Background Scores</a></li>
                                    <li><a href="../../../UIMusic/ARRehman/InterestingSongs.aspx">Interesting Songs</a></li>
                                    <li><a href="" style="color: gray">Favorite Links</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="#" class="dropdown-toggle">Classical Era</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                    <li><a href="../../../UIMusic/ClassicalEraComposers/BackgroundScores.aspx">Background Scores</a></li>
                                </ul>
                            </li>

                        </ul>
                    </li>







                    <li>
                        <a class="dropdown-toggle" href="#">Technology</a>

                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">

                            <li>
                                <a href="#" class="dropdown-toggle">Algorithms</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                    <li><a href="../docs/Technology/Algorithms/AlgorithmsDesign.pdf">Getting Started</a></li>
                                    <li><a href="../docs/Technology/Algorithms/Algorithms.zip">C# Code</a></li>
                                    <li><a href="../../../UITechnology/Algorithms/ImpBooks.aspx">Books</a></li>
                                    <%--                                <li><a href="" style ="color: gray">Favorite Links</a></li>--%>
                                </ul>
                            </li>


                            <li>
                                <a href="#" class="dropdown-toggle">Open Source</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                    <li>
                                        <a href="#" class="dropdown-toggle">Linux</a>
                                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                        </ul>
                                    </li>
                                    <%--  <li>
                                  <a href="#" class="dropdown-toggle">Android</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>
                              <li>
                                  <a href="#" class="dropdown-toggle">Apple</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>
                              <li>
                                  <a href="#" class="dropdown-toggle">Communities</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>
                        </ul>
                 </li>

                  <li>
                        <a href="#" class="dropdown-toggle">Microsoft</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                          <%--  <li>
                                  <a href="#" class="dropdown-toggle">DotNet</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                         </li>
                              <li>
                                  <a href="#" class="dropdown-toggle">Windows</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>
                              <li>
                                  <a href="#" class="dropdown-toggle">Communities</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>--%>
                                </ul>
                            </li>

                            <li>
                                <a href="#" class="dropdown-toggle">Technology Stacks</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                    <li>
                                        <a href="../../../UITechnology/TechnologyStacks/WebTechStackSearch.aspx">Search</a>
                                    </li>
                                    <%--<li>
                                        <a href="#" class="dropdown-toggle">Android</a>
                                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle">Apple</a>
                                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle">Communities</a>
                                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                        </ul>
                                    </li>--%>
                                </ul>
                            </li>




                            <li>
                                <a href="#" class="dropdown-toggle">Hacking</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                    <li>
                                        <a href="#" class="dropdown-toggle">Mac</a>
                                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li>
                                                <a href="http://gopala-krishna.com/docs/Technology/Hacking/MacHackingUltimateGuide.pdf">Complete Guide</a>
                                            </li>
                                            <li>
                                                <a href="http://gopala-krishna.com/docs/Technology/Hacking/HackAMac.pdf">Hack a Mac</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="http://gopala-krishna.com/docs/Technology/Hacking/8PowerfulLinkedInHacks.pdf">LinkedIn Hacks</a>
                                    </li>
                                     <li>
                                        <a href="http://gopala-krishna.com/docs/Technology/Hacking/MoviePiracy.pdf">Movie Piracy</a>
                                    </li>
                                     
                                    <li>
                                        <a href="https://null-byte.wonderhowto.com/how-to/4-ways-crack-facebook-password-protect-yourself-from-them-0139532/">Hack Facebook</a>
                                    </li>
                                </ul>
                            </li>


                            <%--<li>
                                <a href="#" class="dropdown-toggle">Databases</a>
                                 <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                  <a href="#" class="dropdown-toggle">Linux</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                         </li>
                        </ul>
                            </li>--%>

                            <%--<li>
                                <a href="#" class="dropdown-toggle">Tools</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                  <a href="#" class="dropdown-toggle">Linux</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                         </li>
                        </ul>
                            </li>--%>

                            <%--<li>
                                <a href="#" class="dropdown-toggle">Blogs</a>
                                 <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                  <a href="#" class="dropdown-toggle">Linux</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                         </li>
                        </ul>
                            </li>--%>
                        </ul>

                    </li>









                    <li>
                        <a class="dropdown-toggle" href="#">Product Management</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="../../../UIProductManagement/MyProductPage.aspx">My Product Page</a></li>
                            <li><a href="../../../UIProductManagement/HowSystemsWork.aspx">How Systems Work</a></li>
                            <li><a href="../../../UIProductManagement/MyPMArticles.aspx">My PM Articles</a></li>
                            <li><a href="../../../UIProductManagement/InterestingBugs.aspx">Interesting Bugs</a></li>
                        </ul>
                    </li>



                    <%--  <li>
                <a href="#" class="dropdown-toggle">Entrepreneurship</a>
                 <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover"">
                    <li><a href=" ">How to Build A Company</a></li>
                    <li><a href=" ">Startup Guide</a></li>
                </ul>
            </li>--%>

                    <li>
                        <a class="dropdown-toggle " href="#">Entrepreneurship</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                <a href="#" class="dropdown-toggle">Start a Startup</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                    <%--<li><a href="" style = "color:gray">How To Start A Company</a></li>--%>
                                    <li><a href="http://www.gopala-krishna.com/docs/Entrepreneurship/StartupGuide.pdf">Startup Guide</a></li>
                                    <li><a href="https://www.youtube.com/channel/UCxIJaCMEptJjxmmQgGFsnCg">Stanford Lectures</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle">Startup Resources</a>
                                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                    <li><a href="../../../UIEntrepreneurship/StartupResources/PitchDecks.aspx">Pitch Decks</a></li>
                                    <li><a href="../../../UIEntrepreneurship/StartupResources/ImpBooks.aspx">Imp Books</a></li>
                                    <%--<li><a href="" style = "color:gray">Blogs</a></li>--%>
                                </ul>
                            </li>
                        </ul>
                    </li>








                    <li>
                        <a href="#" class="dropdown-toggle">GuestBook</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="../../../UIGuestbook/Guestbook.aspx ">Sign In GuestBook</a></li>

                        </ul>
                    </li>
                    <li>
                        <%--<a href ="../../../Search.aspx"><span class ="icon-search bg-dark fg-white" /></a>--%>
       
                    </li>

                </ul>

            </div>
        </div>




        <%--Google analytics tracking--%>
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-58426798-1', 'auto');
            ga('send', 'pageview');

        </script>


        <script src="js/hitua.js"></script>
    </form>
</body>
</html>

