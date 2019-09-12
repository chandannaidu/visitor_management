
<html>
    <head>
      
        <title>staff list</title>
        <style>
               
             
                              body{
                background-image: url("vm28.jpg");
                background-repeat: no-repeat;
                background-size: 100%;
                color:black;
                                  }
                                  #a{
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
                            z-index: 200px;
                            width:100%;
}
            
        </style>
        <script>
            
            </script>
    </head>
    <body>
        <p id="a">   <span id="spnDateTime" style="float:right;">TIME</span></p>
        <h1 align="center" id="a">HOUSEKEEPING STAFF LIST</h1>
        <a href="admin.jsp" class="previous round">&#8249;</a>
            <div id="pos">
            <a href="stafflistbus.jsp" class="previous">&laquo; Previous</a>
            <a href="stafflist.jsp" class="next">Next &raquo;</a>
            </div>
     
        
        
            
            
            
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
            <td width="10%"><b>ID NO</b></td>
            <td width="7%"><b>DEPARTMENT</b></td> 
            <td width="15%"><b>NAME</b></td> 
            <td width="25%"><b>address</b></td> 
            <td width="20%"><b>PHONE NO</b></td>
             <td width="8%"><b>BLOOD GROUP</b></td>
        </tr> <%
            try{ connection = DriverManager.getConnection(connectionUrl+dbName, userId, password); 
    statement=connection.createStatement(); String sql ="SELECT * FROM adhouse";
    resultSet = statement.executeQuery(sql);
    while(resultSet.next())
{ %> <tr bgcolor="whitesmoke" color="black"> 
    <td><%=resultSet.getString("id") %></td> 
    <td><%=resultSet.getString("dpt") %></td>
    <td><%=resultSet.getString("staff_name") %></td> 
    <td><%=resultSet.getString("address") %></td> 
    <td><%=resultSet.getString("phone_no") %></td> 
    <td><%=resultSet.getString("blood_g") %></td> 
</tr> <% } } catch (Exception e) 
{ e.printStackTrace(); }
%> </table>
            </div>
    </body>
</html>
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
    }
    
    setInterval(function(){
    fnGetCurrentDateTime();
    },1000);
    </script>
