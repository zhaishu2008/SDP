<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<head>
    <title></title>

    <script src="https://www.gstatic.com/firebasejs/5.5.3/firebase.js"></script>
    <link type="text/css" rel="stylesheet" href="https://cdn.firebase.com/libs/firebaseui/3.1.1/firebaseui.css" />
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
          var ref = firebase.database().ref();
            ref.on("value", function(snapshot) {
               console.log(snapshot.val());
            }, function (error) {
               console.log("Error: " + error.code);
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
      
    <table id="table">
        <% String rs = ref()
            %>
        <tr>
            <th>choose</th>
            <th>account</th>
        </tr>

            <tr id="+${b.getId()}+">
                <td><input type="checkbox" name="test"></td>
                <td class="idd" >${b.getId()}</td> 
                <td>${b.getBjsName()}</td>
                <td><input name="upd" type="button" value="Edit" onClick="upd(${b.getId()})"/></td>
                <td><input name="upd" type="button" value="Delect" onClick="upd(${b.getId()})"/></td>
                    <%-- <td><input name="del"  type="button" value="edit" onClick="del(${b.getId()})"/></td> --%>
            </tr>

        </c:forEach>
    </table>



</body>

