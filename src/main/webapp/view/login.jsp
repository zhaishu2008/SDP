
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seminar Booking System</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css" type="text/css">
        <link type="text/css" rel="stylesheet" href="https://cdn.firebase.com/libs/firebaseui/3.1.1/firebaseui.css" />
        <link type="text/css" rel="stylesheet" href="https://cdn.firebase.com/libs/firebaseui/3.1.1/firebaseui.css" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">



        <script src="https://www.gstatic.com/firebasejs/5.5.1/firebase.js"></script>
        <script>
            // Initialize Firebase
            var config = {
                apiKey: "AIzaSyBotGjTPo84Ak-MTTzHxmZG60rBahWDHfQ",
                authDomain: "uts-dummy-database.firebaseapp.com",
                databaseURL: "https://uts-dummy-database.firebaseio.com",
                projectId: "uts-dummy-database",
                storageBucket: "uts-dummy-database.appspot.com",
                messagingSenderId: "454655610210"
            };
            firebase.initializeApp(config);
        </script>
        <script src="https://cdn.firebase.com/libs/firebaseui/3.1.1/firebaseui.js"></script>
        <script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-database.js"></script>
        <script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-firestore.js"></script>
        <script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-messaging.js"></script>
        <script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-functions.js"></script>

    </head>
    <body>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


        <div style="width: 500px;
             margin-left: auto; margin-right: auto; margin-top: 10%; margin-bottom: auto; text-align: center;
             ">
            <div style="height:60px; line-height: 60px; font-family:verdana; font-size:120%; color: white; background-color: #1D6DF1;">Log in</div>
            <form style="background-color: white; height: 400px; padding: 60px;">
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="loginEmail" placeholder="Email">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password"class="form-control" id="loginPassword" placeholder="Password">
                </div>

                <center><input type =“button” value="Log in" class="btn btn-primary" onclick="login()"></center>
                <br />         
            </form>
        </div>

        <script>


            function login() {

                var email = $("#loginEmail").val();
                var password = $("#loginPassword").val();

                firebase.signInWithEmailAndPassword(email, password).catch(function (error) {
                    // Handle Errors here.
                    var errorCode = error.code;
                    var errorMessage = error.message;
                    window.alert("Error: " + errorMessage);
                });

                firebase.onAuthStateChanged(function (user) {
                    if (user) {

                        var uid = user.uid;
                        if (uid.indexOf("AZb6cOObuOG5e1m0pQ") > 0) {
                            window.location.href = "Management.jsp";
                        }
                        firebase.database().ref('/Users/' + uid).once('value').then(function (snapshot) {
                            var type = snapshot.val().Type;
                            if (type === Administrator) {
                                window.location.href = Admin.jsp";
                            } else {


                                window.alert("Log in successfully");
                                window.location.href = 'Homepage.jsp';
                                console.log(uid);
                            }
                        });
                    }
                });
            }



        </script>

    </body>
</html>
