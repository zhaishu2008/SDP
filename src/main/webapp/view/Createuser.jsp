
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
    apiKey: "AIzaSyAJuqSUJjoWEbfh8gOtEkqaiwQ3LeXCLME",
    authDomain: "sdp-seminar-booking.firebaseapp.com",
    databaseURL: "https://sdp-seminar-booking.firebaseio.com",
    projectId: "sdp-seminar-booking",
    storageBucket: "sdp-seminar-booking.appspot.com",
    messagingSenderId: "125542536172"
  };
  firebase.initializeApp(config);
</script>

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
            <img  width="10%" height="px">
        </a>


        <div style="height:60px; line-height: 60px; font-family:verdana; font-size:120%; color: white; background-color: #1D6DF1;">Create user</div>
        <form style="background-color: white; height:950px; padding: 60px;">
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input id="loginEmail" type="email" class="form-control" placeholder="Email">
            </div>
            
             <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
    <input id="loginPassword" type="password"class="form-control" placeholder="Password">
  </div>
            
            <div class="form-group">
                <label for="NAME">Last Name</label>
                <input id="lname" type="text"class="form-control" placeholder="Last Name">
            </div>
            <div class="form-group">
                <label for="NAME">First Name</label>
                <input id="fname" type="text"class="form-control" placeholder="First Name">
            </div>
            <br/>
            <br/>
            <div class="inline">
                <lable class="inline"> Type
                    <select id="type" class="form-control">

                        <option value="" selected data-default>Select your type</option>
                        <option>Administrator </option> 
                        <option>Host </option> 
                        <option>Organiser</option> 

                    </select>

                    <br/>
                    <br/>
                    <center><input type =“button” value="Create" class="btn btn-primary" onclick="Create()"></center>
                    <br />
                    <br />
            <script>
                function Create() {
                    var useremail = $("#loginEmail").val();
                    var userpassword = $("#loginPassword").val();
                    var lastname = $("#lname").val();
                    var firstname = $("#fname").val();
                    var type = $('#type option:selected').val();

                    firebase.auth().createUserWithEmailAndPassword(useremail, userpassword).catch(function (error) {

                        var errorMessage = error.message;
                        window.alert("Error: " + errorMessage);
                    });

                    firebase.auth().onAuthStateChanged(function (user) {
                        if (user) {
                            firebase.database().ref('Users/' + user.uid).set({
                                Email: useremail,
                                Password: userpassword,
                                Lastname: lastname,
                                Firstname: firstname,
                                Type: type
                            });
                            window.alert("Create user successfully");                           
                        }

                    });
                }


            </script>

    </body>
</html>
