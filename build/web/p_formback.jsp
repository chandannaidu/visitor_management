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
            String fn=request.getParameter("firstname");
            String ln=request.getParameter("lastname");
            String gender=request.getParameter("gender");
            String pov=request.getParameter("p_o_v");
            String cno=request.getParameter("contctno");
            String email=request.getParameter("email");
            String ent_t=request.getParameter("ent_t");
            String ext_t=request.getParameter("ext_t");
//            String date=request.getParameter("date");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/VisitorManagement","root","root");
            Statement st=con.createStatement();
            st.executeUpdate("insert into parent values('"+fn+"','"+ln+"','"+gender+"','"+pov+"','"+cno+"','"+email+"','"+ent_t+"','"+ext_t+"')");
            String Query="select * from parent";
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
<!--,'"+date+"'-->