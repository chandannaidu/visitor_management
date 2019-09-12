<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>visitor list</title>
        <style>
                         body{
                background-image: url("vm28.jpg");
                background-repeat: no-repeat;
                background-size: 100%;
                color:black;
            }
            #aa{
                color: white;
            }
            a {
    text-decoration: none;
    display: inline-block;
    padding: 8px 16px;
}
                      #pos{
                           position: absolute; 
                            visibility: visible; 
                            left: 600px; 
                            top:800px; 
                            z-index: 20;
                        }
#b{
    background-color:lightgrey;
    color:goldenrod;
}

a:hover {
    background-color: #ddd;
    color: black;
}

.previous {
    background-color: #f1f1f1;
    color: black;
}

.next {
    background-color: #4CAF50;
    color: white;
}

.round {
    border-radius: 50%;
}
#dd{
    position: absolute; 
                            visibility: visible; 
                            left: 1px; 
                            top:120px; 
                            z-index: 200;
                            width:100%;
}
        </style>      
    </head>
    <body>
        <script type="text/javascript">
        function fnGetCurrentDateTime(){
       var currentdate = new Date(); 
        var datetime = "Date : " + currentdate.getDate() + "/"
                + (currentdate.getMonth()+1)  + "/" 
                + currentdate.getFullYear() + "<br/>" 
                + "Time : "+ currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
            document.getElementById("spnDateTime").innerHTML = datetime;
            return datetime;
    }
    
    setInterval(function(){
    fnGetCurrentDateTime();
    },1000);
       function fnSetCurrentTime(){
         var currentdate = new Date(); 
       var timest =currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
        return timest;
    }
     function fnSetExitTime(){
        var ent_time = document.getElementById("txtExitTime");
        ent_time.value = fnSetCurrentTime();
    }
    </script>
          <h1 align="center" id="aa">PARENT LIST</h1> 
        <p id="aa">  <span id="spnDateTime" style="float:right;">TIME</span></p>
            <a href="mainpage.jsp" class="previous round">&#8249;</a>
            <div id="pos">
            <a href="#" class="previous">&laquo; Previous</a>
            <a href="#" class="next">Next &raquo;</a>
            </div>
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
            <td width="8%"><b>FIRST NAME</b></td> 
            <td width="7%"><b>LAST NAME</b></td> 
            <td width="4%"><b>GENDER</b></td>
             <td width="20%"><b>PURPOSE OF VISIT</b></td>
            <td width="11%"><b>CONTACT NO</b></td>
            <td width="10%"><b>EMAIL</b></td> 
            <td width="7%"><b>ENTRY TIME</b></td> 
            <td width="7%"><b>EXIT TIME</b></td> 
        </tr> <%
            try{ connection = DriverManager.getConnection(connectionUrl+dbName, userId, password); 
//    statement=connection.createStatement(); String sql ="call cp();";
    statement=connection.createStatement(); String sql ="call cp();";
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
    <% 
        session.setAttribute("email",resultSet.getString("email"));
    %>
    <td><form action="welcome.jsp" method="get"><input type="submit" value="Exit"></form></td>
<!--            <script type="text/javascript">
                var time = fnSetExitTime();
                document.getElementById("timer").value=time;
               console.log(document.getElementById("timer").value);
            </script>
            <button type="submit">Exit</button>
        </form></td> -->
</tr> <% } } catch (Exception e) 
{ e.printStackTrace(); }
%> </table>
            </div>
    </body>
</html>
   

    
    
    
    
    
    
    

    
    























   
    
    
    
    
    
    

    
    





























