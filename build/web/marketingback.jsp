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
            String com=request.getParameter("com_n");
            String agnt=request.getParameter("agnt_name");
            String gender=request.getParameter("gender");
            String pov=request.getParameter("p_o_v");
            String dm=request.getParameter("detail_m");
            String cno=request.getParameter("contctno");
            String email=request.getParameter("email");
            String ent_t=request.getParameter("ent_t");
            String ext_t=request.getParameter("ext_t");
            String date=request.getParameter("date");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/VisitorManagement","root","root");
            Statement st=con.createStatement();
            st.executeUpdate("insert into marketing_agent values('"+com+"','"+agnt+"','"+gender+"','"+pov+"','"+dm+"','"+cno+"','"+email+"','"+ent_t+"','"+ext_t+"','"+date+"')");
            String Query="select * from marketing_agent";
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
