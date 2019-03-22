<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="InterestingBugs.aspx.cs" Inherits="InterestingBugs" Culture="auto" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-white">
        <div class="container">
            <div class="row">
                <div class="span16 padding20 margin20">
                    <div class="tile-content">
                        <div class="panel no-border">
                            <div class="panel-header bg-blue fg-white text-center">Interesting Software Bugs</div>
                            <br />



                            <p>

                                <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Bug Description</a>
                                <br />
                                <br />

                                I tweaked the ICICI system in such a way that the transctions happened in the future.                                   
                                <br />

                                The below screenshot was captured on 14-10-2018 (see the label "Balance details as on 14-10-2018").                                   
                                <br />

                                But the system shows some future transactions i.e for the date 15-10-2018 (serial no.s 1,2,3,4,5,6)                                   
                                <br />

                                Actually i made these transactions on 12-10-2018.
                                    
                                       <br />
                                <br />


                                <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Screenshots</a><br />
                                <br />



                                <img src="../../images/Bugs/bug1-1.jpg" class="margin15 nlm ntm size9">
                                <img src="../../images/Bugs/bug1-2.jpg" class="margin15 nlm ntm size5">
                                <br />
                                <br />







                            </p>
                                <hr style="border: 0px; border-top: 2px  solid gray;" />

                            <p>

                                <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Bug Description</a><br />
                                <br />
                                How come the offer price is greater than the original price?
                                <br />
                                This bug was captured by me on 26-02-2019.
                                <br />
                                <br />
                                <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Screenshots</a><br />
                                <br />



                                <img src="../../images/Bugs/bug2-1.jpg" class="margin15 nlm ntm size7">
                                <br />
                                <br />







                            </p>
                                <hr style="border: 0px; border-top: 2px  solid gray;" />

                            <p>

                                <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Bug Description</a><br />
                                <br />
                                This bug appeared when i tried expanding and collapsing the video frame on facebook timeline.
                                <br />
                                <br />

                                <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Screenshots</a><br />
                                <br />



                                <img src="../../images/Bugs/bug3-1.jpg" class="margin15 nlm ntm size7">
                                <br />
                                <br />
                            </p>
                                <hr style="border: 0px; border-top: 2px  solid gray;" />

                             <p>

                                <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Bug Description</a><br />
                                <br />
                                Too much savings!!!!!!  Credits: <a href ="https://www.linkedin.com/in/aniruddhamalpani/">Anirudda Malpani</a>
                                <br />
                                <br />

                                <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Screenshots</a><br />
                                <br />



                                <img src="../../images/Bugs/bug4-1.jpeg" class="margin15 nlm ntm size4">
                                <br />
                                <br />
                            </p>
                                <hr style="border: 0px; border-top: 2px  solid gray;" />

                             <p>

                                <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Bug Description</a><br />
                                <br />
                                Too much MRP!!!!!! Credits: <a href ="https://www.linkedin.com/in/sumeetkapur1/">Sumeet Kapur</a>
                                <br />
                                <br />

                                <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Screenshots</a><br />
                                <br />



                                <img src="../../images/Bugs/bug5-1.jpeg" class="margin15 nlm ntm size10">
                                <br />
                                <br />
                            </p>





                        </div>
                        <%--<div class="panel no-border">
                            <div class="panel-header bg-blue fg-white text-center">Popular Bugs</div><br />
                        </div>--%>


                            <hr style="border: 0px; border-top: 2px  solid gray;" />




                        <div class="grid no-margin">
                            <div class="row">

                                <div class="span1 no-tablet-portrait no-phone">
                                        <div class="notice marker-on-right bg-white padding1 text-center" style="height: 1px">
                                        </div>
                                    </div>


                                <div class="accordion with-marker span12  place-right" data-role="accordion" data-closeany="false">

                                    <div class="accordion-frame active ">

                                        <div class="fb-save"
                                            data-uri="http://subtlegopala.com/UIProductManagement/InterestingBugs.aspx"
                                            data-size="large">
                                        </div>
                                        <div class="fb-like"
                                            data-href="http://subtlegopala.com/UIProductManagement/InterestingBugs.aspx"
                                            data-layout="standard"
                                            data-action="like"
                                            data-show-faces="false"
                                            data-share="true"
                                            data-size="large">
                                        </div>

                                        <div class="fb-comments"
                                            data-href="http://subtlegopala.com/UIProductManagement/InterestingBugs.aspx"
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

                    </div>
                </div>
            </div>
        </div>
    </div>






</asp:Content>

