
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
         <link href='//fonts.googleapis.com/css?family=Marmelad' rel='stylesheet' type='text/css'>
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
        </script>

        <script src="https://www.gstatic.com/firebasejs/5.5.1/firebase-auth.js"></script>
        <script src="https://www.gstatic.com/firebasejs/5.5.1/firebase-database.js"></script>
        <script src="https://www.gstatic.com/firebasejs/5.5.1/firebase-firestore.js"></script>
        <script src="https://www.gstatic.com/firebasejs/5.5.1/firebase-messaging.js"></script>
        <script src="https://www.gstatic.com/firebasejs/5.5.1/firebase-functions.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seminar Booking System</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css" type="text/css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

       <script> firebase.auth().onAuthStateChanged(function(user){
    if(user) {
        $("#lgbtn").html("My account");
        $("#lgbtn").click(function(){window.location.href="./view/account.jsp";});
         $("#smbtn").html("Log out");
         $("#smbtn").click(function(){firebase.auth().signOut().then(function() {window.location.herf="index.jsp";
}).catch(function(error) {
});});
         
    }else{
         $("#lgbtn").html("Log in");
         $("#lgbtn").click(function(){window.location.href="./view/login.jsp";});
         $("#smbtn").html("Sign up");
         $("#smbtn").click(function(){window.location.href="./view/signup.jsp";});
    }
        });
        
        
          </script>

        <a href="index.jsp">
            <img width="10%" height="92px">
        </a>

        <div style="position:relative;
             transition: .5s ease;
             top: -60px;
             left: 1000px;
             right: 50px;
             bottom: 300px;">
            <button id="lgbtn" style=" margin: 20px;" class="btn btn-lg btn-warning">Log in</button>

            <button id="smbtn" class="btn btn-primary">Sign up</button>
        </div>


        <div style=" margin-top: 2%; text-align:center">
            <h1>Seminar Booking System</h1>
            <br/>
            <p style=" color: white; font-family: Helvetica;">
                More efficient appointment system for patients to make an reservation in their available time. 
                <br/>
                Specific doctors can
                be selected by patients. 

            </p>
        </div>

    </body>
</html>
