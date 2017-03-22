<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Header.aspx.cs" Inherits="Header" %>

<!DOCTYPE html>
<html>
  <body>
   <div class="navigation-bar dark">
        <div class="navigation-bar-content container text-shadow">
        <a href="/" class="element "><span class="icon-grid-view  fg-blue"></span> GopalaKrishna <sup>1.0</sup></a>
        <span class="element-divider"></span>
        <ul class="element-menu">
            <li>
                <a class="dropdown-toggle" href ="#">My Personal</a>
                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                    <li>
                        <a href="#" class="dropdown-toggle">About Me</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="../../../UIMyPersonal/AboutMe/AboutMe.aspx">My Timeline</a></li>
                            <li><a href="../../../UIMyPersonal/AboutMe/MyInterests.aspx">My Interests</a></li>
                            <li><a href="../../../UIMyPersonal/AboutMe/MyProfession.aspx">My Profession</a></li>
                            <li><a href="" style ="color: gray">My Family</a></li>
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
                <a class="dropdown-toggle" href ="#">Interesting Stuff</a>
                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                    <li>
                        <a href="#" class="dropdown-toggle">Interesting Facts</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="../../../UIInterestingStuff/InterstingFacts/InterestingScienceFacts.aspx">Interesting Science Facts</a></li>
                        </ul>
                    </li>
                     <li>
                        <a href="#" class="dropdown-toggle">Interesting Optical Illusions</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="../../../UIInterestingStuff/InterestingOpticalIllusions/InterestingOpticalIllusions.aspx">Can We Believe Our Eyes?</a></li>
                        </ul>
                    </li>
                </ul>
            </li>

             <li>
                <a href="#" class="dropdown-toggle">Math Fun</a>
                  <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover"">
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
                                <li><a href="" style ="color: gray">Interesing Songs</a></li>
                                <li><a href="" style ="color: gray">Favorite Links</a></li>
                            </ul>
                        </li>
                         <li>
                            <a href="#" class="dropdown-toggle">A.R.Rehman</a>
                            <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="" style ="color: gray">About A.R Rehman</a></li>
                            <li><a href="../../../UIMusic/ARRehman/BackgroundScores.aspx">Background Scores</a></li>
                                <li><a href="" style ="color: gray">Interesing Songs</a></li>
                                <li><a href="" style ="color: gray">Favorite Links</a></li>
                            </ul>
                        </li>
                       <li>
                            <a href="#" class="dropdown-toggle">Classical Era Composers</a>
                            <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="../../../UIMusic/ClassicalEraComposers/BackgroundScores.aspx">Background Scores</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>


             
             <li>
                <a class="dropdown-toggle"  href="#">Technology</a>

                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                   
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
                            </li>--%>
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
                            </li>--%>
                        </ul>
                 </li>

                      <li>
                        <a href="#" class="dropdown-toggle">Hacking</a>
                      <%--  <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                  <a href="#" class="dropdown-toggle">Linux</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                         </li>
                        </ul>--%>
                 </li>

                      <li>
                        <a href="#" class="dropdown-toggle">Databases</a>
                       <%-- <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                  <a href="#" class="dropdown-toggle">Linux</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                         </li>
                        </ul>--%>
                 </li>

                    <li>
                        <a href="#" class="dropdown-toggle">Tools</a>
                        <%--<ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                  <a href="#" class="dropdown-toggle">Linux</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                         </li>
                        </ul>--%>
                 </li>

                  <li>
                        <a href="#" class="dropdown-toggle">Blogs</a>
                       <%-- <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                  <a href="#" class="dropdown-toggle">Linux</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                         </li>
                        </ul>--%>
                 </li>


               </ul>

             </li>
                 
           
            <li>
                <a class="dropdown-toggle"  href="#">Product Management</a>
                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover"">
                    <li><a href="../../../UIProductManagement/HowSystemsWork.aspx ">How Systems Work</a></li>
                </ul>
            </li>

             <li>
                <a class="dropdown-toggle " href ="#">Entrepreneurship</a>
                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                    <li>
                        <a href="#" class="dropdown-toggle">Start a Startup</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="" style = "color:gray">How To Start A Company</a></li>
                            <li><a href="http://www.subtlegopalweb.com/docs/StartupGuide.pdf">Startup Guide</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="dropdown-toggle">Startup Resources</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <%--<li><a href="../../../UIEntrepreneurship/StartupResources/ImpBooks.aspx">Important Books</a></li>--%>
                            <li><a href="" style = "color:gray">Other Books</a></li>
                            <li><a href="" style = "color:gray">Blogs</a></li>
                        </ul>
                    </li>
                </ul>
            </li>


             <li>
                <a href="#" class="dropdown-toggle">GuestBook</a>
                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover"">
                      <li><a href="../../../UIGuestbook/Guestbook.aspx ">Sign In GuestBook</a></li>
                </ul>
            </li>
            <li>
              <a href ="../../../Search.aspx"><span class ="icon-search bg-dark fg-white" /></a>
            </li>
        </ul>
        
        </div>
    </div>
  </body>
</html>

