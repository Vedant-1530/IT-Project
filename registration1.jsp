<%-- 
    Document   : registration1
    Created on : 14 Feb 2025, 7:56:07 pm
    Author     : thora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .button{
                background-color:  green;
                    color: white;
                    padding: 7px 50px;
                    text-align: center;
                    display: inline-block;
                    font-size: 18px;
                    margin: 4px 2px;
                    cursor: pointer;
            }
            
.box3{
    height: 588px;
    width: 550px;
    margin-top:   auto;
    position: absolute;
    top: 0;
    bottom: 100px;
    left: 570px;
    right: 0;
    border-radius: 10px;
    background-color: #dddddd;
    border-style: solid;
    border-width: 2px;
    border-color: gold;
}
            .box5{
    text-align: auto;
    color: white;
    font-size: 60px;
    margin: 0 0;
   
}
.box6{
     text-align: auto;
    color: black;
    font-size: 15px;
    margin: 6px 21px;
  
}

.box7
    {
   
    margin: auto;
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    border-radius: 20px;
    background-color: #232f3e;
    border-style: solid;
    border-color: white;
    }



            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            
    </head>
    <body>
       
        <div class="box7">
             <p align="center" class="box5">Quick Event Hub</p>
            
        <div class="box3">
                <form  action="Acccount" method="post"  >  
                    <h3 align="center">Create a new account</h3>
                    <p align="center">It's quick and easy</p>
                    
                    <hr>
                    
                    <p align="center"><input align="center" type="text" size="32px" name="First_name" placeholder="First name"/> <input align="center" type="text" size="32px"  name="Surname" placeholder="Surname"/>  </p>
                    
                    <p class="box6"> Date of birth ? </p>
                     <p align="center"><select align="center" id="day" name="day"style="width: 165px;" > 
                             <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
        <option value="23">23</option>
        <option value="24">24</option>
        <option value="25">25</option>
        <option value="26">26</option>
        <option value="27">27</option>
        <option value="28">28</option>
        <option value="29">29</option>
        <option value="30">30</option>
        <option value="31">31</option>
</select> <select id="month" name="month" style="width: 165px;">
  <option value="01">January</option>
  <option value="02">February</option>
  <option value="03">March</option>
  <option value="04">April</option>
  <option value="05">May</option>
  <option value="06">June</option>
  <option value="07">July</option>
  <option value="08">August</option>
  <option value="09">September</option>
  <option value="10">October</option>
  <option value="11">November</option>
  <option value="12">December</option>
</select>   <select id="year" name="year" style="width: 165px;" >
        <!-- Manually list years from 1940 to 2030 -->
        <option value="1940">1940</option>
        <option value="1941">1941</option>
        <option value="1942">1942</option>
        <option value="1943">1943</option>
        <option value="1944">1944</option>
        <option value="1945">1945</option>
        <option value="1946">1946</option>
        <option value="1947">1947</option>
        <option value="1948">1948</option>
        <option value="1949">1949</option>
        <option value="1950">1950</option>
        <option value="1951">1951</option>
        <option value="1952">1952</option>
        <option value="1953">1953</option>
        <option value="1954">1954</option>
        <option value="1955">1955</option>
        <option value="1956">1956</option>
        <option value="1957">1957</option>
        <option value="1958">1958</option>
        <option value="1959">1959</option>
        <option value="1960">1960</option>
        <option value="1961">1961</option>
        <option value="1962">1962</option>
        <option value="1963">1963</option>
        <option value="1964">1964</option>
        <option value="1965">1965</option>
        <option value="1966">1966</option>
        <option value="1967">1967</option>
        <option value="1968">1968</option>
        <option value="1969">1969</option>
        <option value="1970">1970</option>
        <option value="1971">1971</option>
        <option value="1972">1972</option>
        <option value="1973">1973</option>
        <option value="1974">1974</option>
        <option value="1975">1975</option>
        <option value="1976">1976</option>
        <option value="1977">1977</option>
        <option value="1978">1978</option>
        <option value="1979">1979</option>
        <option value="1980">1980</option>
        <option value="1981">1981</option>
        <option value="1982">1982</option>
        <option value="1983">1983</option>
        <option value="1984">1984</option>
        <option value="1985">1985</option>
        <option value="1986">1986</option>
        <option value="1987">1987</option>
        <option value="1988">1988</option>
        <option value="1989">1989</option>
        <option value="1990">1990</option>
        <option value="1991">1991</option>
        <option value="1992">1992</option>
        <option value="1993">1993</option>
        <option value="1994">1994</option>
        <option value="1995">1995</option>
        <option value="1996">1996</option>
        <option value="1997">1997</option>
        <option value="1998">1998</option>
        <option value="1999">1999</option>
        <option value="2000">2000</option>
        <option value="2001">2001</option>
        <option value="2002">2002</option>
        <option value="2003">2003</option>
        <option value="2004">2004</option>
        <option value="2005">2005</option>
        <option value="2006">2006</option>
        <option value="2007">2007</option>
        <option value="2008">2008</option>
        <option value="2009">2009</option>
        <option value="2010">2010</option>
        <option value="2011">2011</option>
        <option value="2012">2012</option>
        <option value="2013">2013</option>
        <option value="2014">2014</option>
        <option value="2015">2015</option>
        <option value="2016">2016</option>
        <option value="2017">2017</option>
        <option value="2018">2018</option>
        <option value="2019">2019</option>
        <option value="2020">2020</option>
        <option value="2021">2021</option>
        <option value="2022">2022</option>
        <option value="2023">2023</option>
        <option value="2024">2024</option>
        <option value="2025">2025</option>
        <option value="2026">2026</option>
        <option value="2027">2027</option>
        <option value="2028">2028</option>
        <option value="2029">2029</option>
        <option value="2030">2030</option>
</select> </p>
                        
                        
                    
                    
<p class="box6" > Gender ? </p>
                    <p align="center"><input  type="radio"name="genderf" value="female"/>Female  <input  type="radio"name="genderm" value="Male"/>Male  <input  type="radio"name="genderc" value="Custom"/>Custom   </p>

                     <h4 align="center"><u><input align="center" type="text" size="70px" name="Email" placeholder="Email address or phone number"/></u> </h4>
                    <h4 align="center"><input align="center" type="password" size="70px" name="Password" placeholder="New Password"/> </h4>
                    
                    <p class="box6"> People who use our service may have uploaded your contact information to<br>Quick Event Hub. Learn more.</p>
                    
                    <p class="box6" > By clicking Sign Up. you agree to our Terms. Privacy Policy and Cookies Policy<br> You may receive SMS notifications from us and can opt out at any time</p>
                   

                    <p align="center"><input type="submit" class="button" value="Sign Up"> </p>
                       </form> 
            <p align="center"> <a href="index.jsp">Already have an account?</a>  </p>   
        </div>
        </div>
    </body>
</html>
