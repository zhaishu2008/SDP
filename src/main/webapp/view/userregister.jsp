<html>
<head>
<title></title>

<script src="https://www.gstatic.com/firebasejs/5.5.3/firebase.js"></script>
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
          var userRef = firebase.database().ref().child('user');        
          var userKey = userRef.key;
          console.log(userKey);
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
</head>
<body onload="appendTable(jsonArray);">
   	<div id="div1"></div>
        
<table id="table">
 <tr>
<th>choose</th>
 <th>account</th>
 </tr>
 
 <c:forEach var="b" items="${bs }">
     <!--???????  -->
     <%-- <tr id="+${b.getId()}+">
        <td >${b.getId()}</td>
       <td>${b.getBjsName()}</td>
         <td><input name="upd" type="button" value="??" onClick="upd(${b.getId()})"/></td>
         <td><input name="del"  type="button" value="??" onClick="del(${b.getId()})"/></td>
   </tr> --%>
 <!-- ??????? -->
 <tr id="+${b.getId()}+">
<td><input type="checkbox" name="test"></td>
        <td class="idd" >${b.getId()}</td> 
        <td>${b.getBjsName()}</td>
         <td><input name="upd" type="button" value="edit" onClick="upd(${b.getId()})"/></td>
        <%-- <td><input name="del"  type="button" value="edit" onClick="del(${b.getId()})"/></td> --%>
     </tr>
 
</c:forEach>
 </table>
        
     <script>
    var database = firebase.database();
    database.ref().once('value', function(snapshot){
        if(snapshot.exists()){
            var content = '';
            snapshot.forEach(function(data){
                var val = data.val();
                content +='<tr>';
                content += '<td>' + val.email + '</td>';
                content += '<td>' + val.password + '</td>';
                content += '</tr>';
            });
            $('#ex-table').append(content);
        }
    });
</script>
     
</body>
</html>
