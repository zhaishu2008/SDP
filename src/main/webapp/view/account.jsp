<%-- 
    Document   : account
    Created on : Sep 1, 2018, 1:55:16 AM
    Author     : Jesse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://www.gstatic.com/firebasejs/5.4.2/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyB3tgflnOWGhR0EVvjW6ldubM6vSdNqBFE",
    authDomain: "premium-origin-217008.firebaseapp.com",
    databaseURL: "https://premium-origin-217008.firebaseio.com",
    projectId: "premium-origin-217008",
    storageBucket: "premium-origin-217008.appspot.com",
    messagingSenderId: "1538681596"
  };
  firebase.initializeApp(config);
  var database = firebase.database();
</script><script src="https://www.gstatic.com/firebasejs/5.5.1/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyB3tgflnOWGhR0EVvjW6ldubM6vSdNqBFE",
    authDomain: "premium-origin-217008.firebaseapp.com",
    databaseURL: "https://premium-origin-217008.firebaseio.com",
    projectId: "premium-origin-217008",
    storageBucket: "premium-origin-217008.appspot.com",
    messagingSenderId: "1538681596"
  };
  firebase.initializeApp(config);
  var database = firebase.database();
</script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-firestore.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-messaging.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-functions.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital Reservation System</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css" type="text/css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </head>
    <body>
    <script>  
   firebase.auth().onAuthStateChanged(function(user){
    if(user) {
        var email = user.email;
        $("#email").html(email);
        $("#logout").click(function(){firebase.auth().signOut().then(function() {
 window.alert("Log out successfully"); 
 window.location.href="index.jsp";
}).catch(function(error) {
});});
    }else{
        window.location.herf="index.jsp";
   }});
   $('.collapse').collapse();
   
   
   
       var user = firebase.auth().currentUser; 
    var email= user.email;
  firebase.database().ref('users').set({
    
    email: email;
    
  });
</script>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="../index.jsp">
    <img src="../images/logo.png" width="60px" height="60px" class="d-inline-block align-top" alt="">
    HSP
  </a>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
        <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">My profile</a>
          <a class="dropdown-item" href="#">...</a>
          <a class="dropdown-item" href="#">...</a>
        </div>
      </li>

    </ul>
  </div>
    <form class="form-inline">
        <p id="email"></p>
<button id="logout" class="btn btn-warning">Log out</button>
    
  </form>
</nav>


    </body>
</html>
