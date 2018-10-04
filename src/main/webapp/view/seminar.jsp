
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seminar Booking System</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css" type="text/css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
<script src="https://www.gstatic.com/firebasejs/5.5.1/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyB6iLL-8kKBU_SHTjh6Fct9QKtTRi0_7fY",
    authDomain: "hospital-reservation-sys-affef.firebaseapp.com",
    databaseURL: "https://hospital-reservation-sys-affef.firebaseio.com",
    projectId: "hospital-reservation-sys-affef",
    storageBucket: "hospital-reservation-sys-affef.appspot.com",
    messagingSenderId: "648319940592"
  };
  firebase.initializeApp(config);
  var database = firebase.database();
</script>

<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-firestore.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-messaging.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-functions.js"></script>


    </head>
    <body>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 

 <a href="../index.jsp">
       <img width="10%" height="px">
       </a>

        <div style="width: 500px;
margin-left: auto; margin-right: auto; margin-top: 10%; margin-bottom: auto; text-align: center;
">
            <div style="height:60px; line-height: 60px; font-family:verdana; font-size:120%; color: white; background-color: #1D6DF1;">Sign up</div>
            <form style="background-color: white; height:950px; padding: 60px;">
  <div class="form-group">
    <label for="exampleInputAbstract">Seminar Abstract</label>
    <input id="seminarAbstract" type="text" class="form-control" placeholder="Abstract">
  </div>
  <div class="form-group">
    <label for="exampleInputCapacity">Seminar Capacity</label>
    <input id="seminarCapacity" type="text"class="form-control" placeholder="Capacity">
  </div>
                <div class="form-group">
    <label for="Host">Host</label>
    <input id="seminarHost" type="text"class="form-control" placeholder="Host">
  </div>
                <div class="form-group">
  <label for="Length">First Name</label>
    <input id="seminarLength" type="text"class="form-control" placeholder="Length">
  </div>
                 <div class="form-group">
  <label for="Organiser">Contact Number</label>
    <input id="seminarOrganiser" type="text"class="form-control" placeholder="Organiser">
  </div>
                <div class="form-group">
  <label for="Speaker">Contact Number</label>
    <input id="seminarSpeaker" type="text"class="form-control" placeholder="Speaker">
  </div>
                <div class="form-group">
  <label for="StartTime">Contact Number</label>
    <input id="seminarStartTime" type="text"class="form-control" placeholder="StartTime">
  </div>
                <br/>
                
                
                <br/>
                <div class="inline">
                <lable class="inline"> Day
                <select id="day" class="form-control">
  <option>1</option> <option>2</option> <option>3</option> <option>4</option> <option>5</option> <option>6</option
   <option>7</option> <option>8</option> <option>9</option> <option>10</option> <option>11</option> <option>12</option>
    <option>13</option> <option>14</option> <option>15</option> <option>16</option> <option>17</option> <option>18</option>
     <option>19</option> <option>20</option> <option>21</option> <option>22</option> <option>23</option> <option>24</option>
      <option>25</option> <option>26</option> <option>27</option> <option>28</option> <option>29</option> <option>30</option>
  
  
</select>
                    </lable>
                    
                <lable class="inline">Month
                <select id="month" class="form-control">
  
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
  <option>6</option>
  <option>7</option>
  <option>8</option>
  <option>9</option>
  <option>10</option>
  <option>11</option>
  <option>12</option>
</select>
                    </lable>
                    
                <lable class="inline">Year
                <select id="year" class="form-control">
   <option>2018</option> <option>2017</option> <option>2016</option> <option>2015</option>
  <option>2014</option> <option>2013</option> <option>2012</option> <option>2011</option> <option>2010</option> 
  <option>2009</option> <option>2008</option> <option>2007</option> <option>2006</option> <option>2005</option> 
  <option>2004</option> <option>2003</option> <option>2002</option> <option>2001</option>  <option>2000</option>
  <option>1999</option> <option>1998</option> <option>1997</option> <option>1996</option> <option>1995</option>
  <option>1994</option> <option>1993</option> <option>1992</option> <option>1991</option> <option>1990</option> 
  <option>1989</option> <option>1988</option> <option>1987</option> <option>1986</option> <option>1985</option> 
  <option>1984</option> <option>1983</option> <option>1982</option> <option>1981</option>  <option>1980</option>
  <option>1979</option> <option>1978</option> <option>1977</option> <option>1976</option> <option>1975</option> 
  <option>1974</option> <option>1973</option> <option>1972</option> <option>1971</option>  <option>1970</option>
  <option>1969</option> <option>1968</option> <option>1967</option> <option>1966</option> <option>1965</option> 
  <option>1964</option> <option>1963</option> <option>1962</option> <option>1961</option>  <option>1960</option>
  <option>1959</option> <option>1958</option> <option>1957</option> <option>1956</option> <option>1955</option> 
  <option>1954</option> <option>1953</option> <option>1952</option> <option>1951</option>  <option>1950</option>
  <option>1949</option> <option>1948</option> <option>1947</option> <option>1946</option> <option>1945</option> 
  <option>1944</option> <option>1943</option> <option>1942</option> <option>1941</option>  <option>1940</option>
  <option>1939</option> <option>1938</option> <option>1937</option> <option>1936</option> <option>1935</option> 
  <option>1934</option> <option>1933</option> <option>1932</option> <option>1931</option>  <option>1930</option>
  <option>1929</option> <option>1928</option> <option>1927</option> <option>1926</option> <option>1925</option> 
  <option>1924</option> <option>1923</option> <option>1922</option> <option>1921</option>  <option>1920</option>
</select>
                
                    </lable>
          </div>
                <br/>
                <br/>
                <center><input type =“button” value="Sign up" class="btn btn-primary" onclick="signup()"></center>
                <br />
                <br />
                <div class="help-block">Already have an account.</div><a href='login.jsp'>Log in</a>
                </form>
</div>
<script>
    function seminar(){
                      var seminarAbstract = $("#seminarAbstract").val();
                      var seminarCapacity = $("#seminarCapacity").val();
                      var seminarHost = $("#seminarHost").val();
                      var seminarLength = $("#seminarLength").val();
                      var seminarOrganiser = $("#seminarOrganiser").val();
                      var seminarSpeaker = $("#seminarSpeaker").val();
                      var seminarStartTime = $("#seminarStartTime").val();
                      var date = $('#day option:selected').val()+"/"+$('#month option:selected').val()+"/"+$('#year option:selected').val();
   
  
  firebase.auth().onAuthStateChanged(function(seminar){
    if(seminar) {
        firebase.database().ref('seminar/'+user.uid).set({
    Abstract: seminarAbstract,
    Capacity: seminarCapacity,
    Host: seminarHost,
    Length: seminarLength,
    Organiser: seminarOrganiser,
    Speaker: seminarSpeaker,
    seminarStartTime,
    date: date
    
  });   
     window.alert("Sign up successfully");
  window.location.href='vetify_1.jsp';

 }
  
});}


</script>
        
    </body>
</html>
