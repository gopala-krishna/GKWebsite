<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="InterestingBugs.aspx.cs" Inherits="InterestingBugs" Culture="auto" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-white">
        <div class="container">
            <div class="row">
                <div class="span16">
                    <div class="tile-content">
                        <div class="panel no-border">
                            <div class="panel-header bg-blue fg-white text-center">My Findings</div><br />

                            
                               
                                <p>

                                    <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Bug Description</a>
                                    <br />
                                    <br />
                                    
                                        I tweaked the ICICI system in such a way that the transctions happened in the future.                                    <br />

                                        The below screenshot was captured on 14-10-2018 (see the label "Balance details as on 14-10-2018").                                    <br />

                                        But the system shows some future transactions i.e for the date 15-10-2018 (serial no.s 1,2,3,4,5,6)                                    <br />

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

                            <p>

                                    <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Bug Description</a><br />
                                    <br />
                                    How come the offer price is less than the original price? <br />
                                    This bug was captured by me on 26-02-2019.
                                <br /><br />
                                    <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Screenshots</a><br />
                                    <br />



                                    <img src="../../images/Bugs/bug2-1.jpg" class="margin15 nlm ntm size7">
                                    <br />
                                    <br />




                                   


                                </p>

                            <p>

                                    <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Bug Description</a><br />
                                    <br />
                                This bug appeared when i tried expanding and collapsing the video frame on facebook timeline. <br /><br />

                                    <a class="button bg-teal fg-white" style="width: 180px; margin-bottom: 5px">Screenshots</a><br />
                                    <br />



                                    <img src="../../images/Bugs/bug3-1.jpg" class="margin15 nlm ntm size7">
                                    <br />
                                    <br />




                                   


                                </p>
                                

                            
                        </div>
                        <%--<div class="panel no-border">
                            <div class="panel-header bg-blue fg-white text-center">Popular Bugs</div><br />

                            
                               
                               

                            
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
</asp:Content>

