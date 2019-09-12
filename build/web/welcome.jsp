<%-- 
    Document   : welcome
    Created on : Nov 13, 2017, 9:15:55 AM
    Author     : Advaith
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    
    function fnSetCurrentTime(){
         var currentdate = new Date(); 
       var timest =currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
        return timest;
    }
      
    function fnSetCurrentDate(){
//         var currentdate = new Date(); 
       var today = new Date();
       var datest = today.getFullYear() + "-"  
                +  today.getDate()+ "-" //jan=0
                + (today.getMonth()+1);
        return datest;
    }
    
    function fnSetEntryTime(){
        var ent_time = document.getElementById("txtEntryTime");
        ent_time.value = fnSetCurrentTime();
    }
    function fnSetExitTime(){
        var ext_time = document.getElementById("txtExitTime");
        ext_time.value = fnSetCurrentTime();
    }
     function fnSetDate(){
        var date = document.getElementById("txtDate");
        date.value = fnSetCurrentDate();
    }
    
    setInterval(function(){
    fnGetCurrentDateTime();
    },1000);
        </script>
    </head>
        <h1>Hello World!</h1>
         <td><LABEL for="ext_t"><INPUT type="button" name="ext_t" onclick="fnSetExitTime();" value="EXIT TIME" id="ext_t"><sup style="color:#F00">*</sup> </LABEL><INPUT id="txtExitTime" name="ext_t" type="text"></td>
         
         <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<% 
     Date d = new Date(); // returns a java.util.Date
    String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/"; 
String dbName = "VisitorManagement";
String userId = "root";
String password = "root"; 
try { Class.forName(driverName); } 
catch (ClassNotFoundException e) 
{ e.printStackTrace(); } 
Connection con = DriverManager.getConnection(connectionUrl+dbName, userId, password); 
Statement st=con.createStatement();
String query = "update Parent set exttime='"+d.toString()+"' where email='"+session.getAttribute("email")+"'";
//st.executeQuery(query);
st.executeUpdate(query);
response.sendRedirect("visitorlist.jsp");
%> 
  
   >

