<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="MathPuzzles.aspx.cs" Inherits="MathPuzzles" %>

<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

 <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=386874354670915&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>



        <div class ="bg-white">
          <div class="container">
                <div class="row">
                        <div class="span16 padding20">
                            <div class="tile-content">
                                <div class="panel no-border">
                                    <div class="panel-header bg-orange fg-white text-center">Interesting Mathematics Puzzles</div>  
                             
                                       
                                        <div class="grid no-margin">
                                             <div class="row">

                                                       <div class="span1 no-tablet-portrait no-phone">
                                                                <div class="notice marker-on-right bg-white padding1 text-center" style="height: 1px">
                                                                </div>
                                                            </div>

                                                <div class="accordion with-marker span12  place-right   " data-role="accordion" data-closeany="false">

                                                <div class="accordion-frame active" >
                                                    <a class="heading bg-blue text-shadow">The Magic Number 1089 </a>
                                                    <div class="content" >
                                                        <p>
                                                            
                                                                1. Take any three-digit number where the first and last digits differ by 2 or more.<br />
                                                                2. Reverse the digits, and subtract the smaller from the larger one.<br />
                                                                3. Reverse the digits again.<br />
                                                                4. Add to result in 3 to result in 2<br /><br />

                                                                You will always get the number “1089"

                                                        </p>
                                                    </div>
                                                 </div>

                                                     <div class="accordion-frame active" >
                                                    <a class="heading bg-blue text-shadow">The Magic Number 6174 </a>
                                                    <div class="content" >
                                                        <p>
                                                            
                                                            1. Take a four digit number with all different digits<br />
                                                            2. Sort the digits in descending order and call it A<br />
                                                            3. Sort the digits in ascending order and call it B<br />
                                                            4. Calculate A-B<br />
                                                            5. Repeat the process and get the unique number<br /><br />


                                                             After few iterations, you will always get the number “6174"

                                                        </p>
                                                    </div>
                                                 </div>


                                                 <div class="accordion-frame active" >
                                                    <a class="heading bg-blue text-shadow">Amicable Number Pairs </a>
                                                    <div class="content" >
                                                        <p>

                                                            1. Take a number.Call it NumberOne.<br />
                                                            2. Sum up all its factors. Call it NumberTwo. <br />
                                                            3. Sum up all the factors of NumberTwo. <br />
                                                            4. If it is equal to NumberOne then these two numbers are called amicable numbers<br />
                                                            5. Find that kind of numbers<br />
                                                            
                                                            Examples : 220,284<br /><br />
                                                                                Sum of factors of 220: 1+2+4+5+10+11+20+22+44+55+110 = 284<br />
                                                                                Sum of factors of 284: 1+2+4+71+142 = 220<br /><br />
                                                           
                                                            Solution: Please ping me at: Gopala.Krishna@iitbombay.org (or)Gopala.Krishna@outlook.com<br />

                                                        </p>
                                                    </div>
                                                 </div>

                                            <div class="accordion-frame" >
                                                    <a class="heading bg-blue text-shadow">Perfect Numbers </a>
                                                    <div class="content" >
                                                        <p>

                                                            1. If the sum of the factors of a number is equal to that number then it is called a perfect number<br />
                                                            2. For example 6 Is a perfect number because factors of 6 are 3, 2, 1 and 3+2+1 = 6. <br />
                                                            3. 28 is a perfect number because factors of 28 are 14, 7, 4, 2, 1 and 14+7+4+2+1 = 28.<br />
                                                            4. Find out the magic numbers less than 100000 <br />
                                                            5. FYI there is only one magic number between 100-1000 and only one magic number<br />
                                                            between 1000 – 10000 and no magic numbers between 10000-100000).<br /><br />

                                                            Some interesting facts :<br /><br />

                                                            1. If 2exp(n)-1 is prime, then 2exp(n-1)*(2exp(n)-1) is a perfect number<br />
                                                            2. All perfect numbers are even and in the form 2exp(n-1)*(2exp(n)-1).<br />
                                                            3. There are no odd perfect numbers. If you find one file a patent<br />
                                                            4. Any odd perfect number must exceed 10exp(300) and must be divisible by a prime power exceeding 10exp(20)<br />
                                                            5. Perfect numbers are infinite. If you can prove the finiteness file a patent<br /><br />

                                                            Solution: Please ping me at: Gopala.Krishna@iitbombay.org (or)Gopala.Krishna@outlook.com<br />

                                                        </p>
                                                    </div>
                                                 </div>

                                                     <div class="accordion-frame" >
                                                    <a class="heading bg-blue text-shadow">Reverse Digit Divisible Numbers </a>
                                                    <div class="content" >
                                                        <p>

                                                            1. Take a number. Call it NumberOne. <br />
                                                            2. Reverse all its digits. Call it NumberTwo.<br />
                                                            3. If NumberTwo is divisible by NumberOne then they are reverse digit divisible numbers.<br />
                                                            4. For ex: 721 reverse: 127. 721 is divisible by 127.<br />
                                                            5. Find out this kind of unique numbers.<br /><br />

                                                            Solution: Please ping me at: Gopala.Krishna@iitbombay.org (or)Gopala.Krishna@outlook.com<br />
                                                        </p>
                                                    </div>
                                                 </div>

                                                    <div class="accordion-frame" >
                                                    <a class="heading bg-blue text-shadow"> The Conversation Number</a>
                                                    <div class="content" >
                                                        <p>

                                                            1. There are two persons A and B<br />
                                                            2. A knows the product of two numbers<br />
                                                            3. B know the sum of the same two numbers<br />
                                                            4. The numbers are between 2- 99<br /><br />
                                                           
                                                            They started talking to each other<br />
                                                            4 sentences exchanged between them<br />
                                                            Based on the conversation we need to find the numbers<br /><br />

                                                            The conversation is:<br /><br />
                                                            1st: A says to B that he don't know the two numbers<br />
                                                            2nd: B replies that i know u don't know the two numbers<br />
                                                            3rd: A then replies NOW i know the two numbers<br />
                                                            4th: B then replies NOW I ALSO know the two numbers<br /><br />

                                                            Solution: Please ping me at: Gopala.Krishna@iitbombay.org (or)Gopala.Krishna@outlook.com<br />

                                                        </p>
                                                    </div>
                                                 </div>

                                                    <div class="accordion-frame" >
                                                    <a class="heading bg-blue text-shadow"> Intresting number 169</a>
                                                    <div class="content" >
                                                        <p>

                                                         1. If a number is a square of an integer, and also the difference between cubes of two consecutive integers, <br />
                                                         then the square root of this number can be expressed as a sum of squares of two consecutive integers. <br />
                                                         2. For e.g. 169 = 512 - 343, so 13 = 4 + 9.<br />
                                                         3. Find this kind of unique numbers.<br /><br />

                                                            Solution: Please ping me at: Gopala.Krishna@iitbombay.org (or)Gopala.Krishna@outlook.com<br />

                                                        </p>
                                                    </div>
                                                 </div>

                                                    <div class="accordion-frame" >
                                                    <a class="heading bg-blue text-shadow"> Ramanujam's Number</a>
                                                    <div class="content" >
                                                        <p>

                                                            1. Find the numbers which can be expressed in two ways as sum of two cubes<br />
                                                            2. For eg. 1729 = 1 cube + 12 cube = 9 cube + 10 cube  (this is the least numer called ramanujam's number)<br />
                                                            3. 1729 can also be expressed as product of three prime numbers i.e. 1729 = 7 * 13 * 19<br />
                                                            4. Another such number is 885623890831 = 7511 cube + 7730 cube = 8759 cube + 5978 cube <br />
                                                            5. 885623890831 can also be expressed as 885623890831 = 3943 * 14737 * 15241<br />
                                                            6. Find this kind of unique numbers <br /><br />


                                                            Solution: Please ping me at: Gopala.Krishna@iitbombay.org (or)Gopala.Krishna@outlook.com<br />

                                                        </p>
                                                    </div>
                                                 </div>



                                                 <div class="accordion-frame active " >
                                                        <a class="heading text-center text-bold bg-red fg-white">Comment on Facebook about this page</a>
                                                        <div class="content " >
                                                        <div class="fb-comments" data-href="http://subtlegopala.com/" data-width="915" data-numposts="10" data-colorscheme=""></div>
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