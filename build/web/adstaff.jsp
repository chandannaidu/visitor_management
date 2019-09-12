<%-- 
    Document   : adstaff
    Created on : Nov 4, 2017, 9:43:45 PM
    Author     : Advaith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin staff</title>
        <style>
             body{
                background-image: url("adds.jpg");
                background-repeat: no-repeat;
                background-size: 100%;
             }
             h1{
                 align:center;
                 color:white;
                 font-size:300%;
             }
             #a{
                         color: white;
                                    }
                                           a {
    text-decoration: none;
    display: inline-block;
    padding: 8px 16px;
}

a:hover {
    background-color: #ddd;
    color: black;
}

.previous {
    background-color:  #4CAF50;
    color: black;
}
.round {
    border-radius: 50%;
}
#pos{
    position: absolute; 
                            visibility: visible; 
                            left: 30px; 
                            top: 40px; 
                            z-index: 200;
}
        </style>
        <script>
                               
   function fnGetCurrentDateTime(){
       var currentdate = new Date(); 
        var datetime = "Date : " + currentdate.getDate() + "/"
                + (currentdate.getMonth()+1)  + "/" 
                + currentdate.getFullYear() + "<br/>" 
                + "Time : "+ currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
            document.getElementById("spnDateTime").innerHTML = datetime;
    }
//     function fnSetCurrentTime(){
//         var currentdate = new Date(); 
//       var timest =currentdate.getHours() + ":"  
//                + currentdate.getMinutes() + ":" 
//                + currentdate.getSeconds();
//        }
//    return timest;
//    }
//    
    setInterval(function(){
    fnGetCurrentDateTime();
    },1000);
            
        </script>
    </head>
    <body>
        <h1 align="center">STAFF INFORMATION</h1>
       <p id="a">   <span id="spnDateTime" style="float:right;">TIME</span></p>
       <p id="pos"><a href="admin.jsp" class="previous round">&#8249;</a></p>
       <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<% String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/"; 
String dbName = "VisitorManagement";
String userId = "root";
String password = "root"; 
try { Class.forName(driverName); } 
catch (ClassNotFoundException e) 
{ e.printStackTrace(); } 
Connection connection = null; 
Statement statement = null; 
ResultSet resultSet = null; %> 
   <div id="dd">
    <table align="center" style="width:100%" border="3"> 
        <tr> </tr> 
        <tr bgcolor="gray"> 
            <td width="15%"><b></b></td>
            <td width="10%"><b></b></td> 
            <td width="4%"><b></b></td> 
            <td width="25%"><b></b></td>
            <td width="15%"><b></b></td>
            <td width="20"><b></b></td> 
            <td width="8%"><b></b></td> 
            <td width="8%"><b></b></td> 
        </tr> <%
            try{ connection = DriverManager.getConnection(connectionUrl+dbName, userId, password); 
    statement=connection.createStatement(); String sql ="SELECT * FROM parent";
    resultSet = statement.executeQuery(sql);
    while(resultSet.next())
{ %> <tr bgcolor="whitesmoke" color="black"> 
    <td><%=resultSet.getString("fname") %></td>
    <td><%=resultSet.getString("lname") %></td> 
    <td><%=resultSet.getString("gender") %></td>
    <td><%=resultSet.getString("pov") %></td> 
    <td><%=resultSet.getString("contact") %></td> 
    <td><%=resultSet.getString("email") %></td> 
    <td><%=resultSet.getString("enttime") %></td> 
    <td><%=resultSet.getString("exttime") %></td> 
</tr> <% } } catch (Exception e) 
{ e.printStackTrace(); }
%> </table>
            </div>
    </body>
</html>
