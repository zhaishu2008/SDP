<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<head>
    <title></title>

    <script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-database.js"></script>
    <script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-firestore.js"></script>
    <script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-messaging.js"></script>
    <script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-functions.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link type="text/css" rel="stylesheet" href="https://cdn.firebase.com/libs/firebaseui/3.1.1/firebaseui.css" />
    <script>
        // Initialize Firebase
        var config = {
            apiKey: "AIzaSyBotGjTPo84Ak-MTTzHxmZG60rBahWDHfQ",
            authDomain: "uts-dummy-database.firebaseapp.com",
            databaseURL: "https://uts-dummy-database.firebaseio.com",
            projectId: "uts-dummy-database.firebaseio.com/"
        };
        firebase.initializeApp(config);

        $(document).ready(function () {
            var userRef = firebase.database().ref('user/');

            $('#Edit').on('click', function () {
                var user = $('#input').val();

                console.log(user);
                userRef.push({
                    email: user
                });
            });

            userRef.on("value", function (snapshot) {
                var val = snapshot.val();
                let list = '';

                $.each(val, function (a, b) {
                    console.log('each',a, b);
                    list = `${list}<li>${b} <button type="button" class="remove" data-key="${a}">Delect</button></li>`;
                });
                $('#ml').html(list);
            });
                $('#rm').on('click','.remove', function(){
                console.log('remove', $(this).data('key'));
                });
        });
    </script>



    <style>
        table {
            width: 600px;
            padding: 0 ;
            margin: 100 auto;
            border-collapse: collapse;
        }
        td,th {
            border: 1px solid #ddd;
            padding: 6px 6px 6px 12px;
            color: #4f6b72;
            text-align: center;
        }
        th {
            background: #d3d3d3;

        }
    </style>
<div class="box">
    <table>
        <tr>
            <td><a href="Createuser.jsp">Create User</a></td>
        </tr>
    </table></div>
</head>
<body>

    <br>  
    <br> 

    <table border="1">

        <tr>
            <th>choose</th>
            <th>account</th>
        </tr>

        <tr>
            <td><input type="checkbox" name="test"></td>
            <td id="ml" ></td> 
            <td><input name="upd" type="button" value="Edit" onClick="upd(${b.getId()})"/></td>
                <%-- <td><input name="del"  type="button" value="edit" onClick="del(${b.getId()})"/></td> --%>
        </tr>

    </table>




</body>

