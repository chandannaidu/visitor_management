
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        
    </head>
    <body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
        <%@ page import ="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%
            String sid=request.getParameter("staff_id");
            String dpt=request.getParameter("bus");
            String sn=request.getParameter("staff_name");
            String add=request.getParameter("address");
            String p_n=request.getParameter("phone_no");
            String b_g=request.getParameter("blood_g");
            String bus_no=request.getParameter("bus_no");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/VisitorManagement","root","root");
            Statement st=con.createStatement();
            st.executeUpdate("insert into adbus values('"+sid+"','"+dpt+"','"+sn+"','"+add+"','"+p_n+"','"+b_g+"','"+bus_no+"')");
            String Query="select * from adbus";
            PreparedStatement psm=con.prepareStatement(Query);
            
            ResultSet rs=psm.executeQuery();
//             rs.close();
//              psm.close();
//              con.close();
            if(rs.next())
            {
//             out.println("registered succesfully");
             //response.sendRedirect("index.jsp");
                out.println("registered succesfully");
            }
            else
            {
                out.println("error in registration");
            }
            rs.close();
              psm.close();
              con.close();
         %>
    </body>
</html>

