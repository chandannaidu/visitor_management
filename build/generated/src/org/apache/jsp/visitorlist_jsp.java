package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class visitorlist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>visitor list</title>\n");
      out.write("        <style>\n");
      out.write("                         body{\n");
      out.write("                background-image: url(\"vm28.jpg\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 100%;\n");
      out.write("                color:black;\n");
      out.write("            }\n");
      out.write("            #aa{\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            a {\n");
      out.write("    text-decoration: none;\n");
      out.write("    display: inline-block;\n");
      out.write("    padding: 8px 16px;\n");
      out.write("}\n");
      out.write("                      #pos{\n");
      out.write("                           position: absolute; \n");
      out.write("                            visibility: visible; \n");
      out.write("                            left: 600px; \n");
      out.write("                            top:800px; \n");
      out.write("                            z-index: 20;\n");
      out.write("                        }\n");
      out.write("#b{\n");
      out.write("    background-color:lightgrey;\n");
      out.write("    color:goldenrod;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a:hover {\n");
      out.write("    background-color: #ddd;\n");
      out.write("    color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".previous {\n");
      out.write("    background-color: #f1f1f1;\n");
      out.write("    color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".next {\n");
      out.write("    background-color: #4CAF50;\n");
      out.write("    color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".round {\n");
      out.write("    border-radius: 50%;\n");
      out.write("}\n");
      out.write("#dd{\n");
      out.write("    position: absolute; \n");
      out.write("                            visibility: visible; \n");
      out.write("                            left: 1px; \n");
      out.write("                            top:120px; \n");
      out.write("                            z-index: 200;\n");
      out.write("                            width:100%;\n");
      out.write("}\n");
      out.write("        </style>      \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("        function fnGetCurrentDateTime(){\n");
      out.write("       var currentdate = new Date(); \n");
      out.write("        var datetime = \"Date : \" + currentdate.getDate() + \"/\"\n");
      out.write("                + (currentdate.getMonth()+1)  + \"/\" \n");
      out.write("                + currentdate.getFullYear() + \"<br/>\" \n");
      out.write("                + \"Time : \"+ currentdate.getHours() + \":\"  \n");
      out.write("                + currentdate.getMinutes() + \":\" \n");
      out.write("                + currentdate.getSeconds();\n");
      out.write("            document.getElementById(\"spnDateTime\").innerHTML = datetime;\n");
      out.write("            return datetime;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    setInterval(function(){\n");
      out.write("    fnGetCurrentDateTime();\n");
      out.write("    },1000);\n");
      out.write("       function fnSetCurrentTime(){\n");
      out.write("         var currentdate = new Date(); \n");
      out.write("       var timest =currentdate.getHours() + \":\"  \n");
      out.write("                + currentdate.getMinutes() + \":\" \n");
      out.write("                + currentdate.getSeconds();\n");
      out.write("        return timest;\n");
      out.write("    }\n");
      out.write("     function fnSetExitTime(){\n");
      out.write("        var ent_time = document.getElementById(\"txtExitTime\");\n");
      out.write("        ent_time.value = fnSetCurrentTime();\n");
      out.write("    }\n");
      out.write("    </script>\n");
      out.write("          <h1 align=\"center\" id=\"aa\">PARENT LIST</h1> \n");
      out.write("        <p id=\"aa\">  <span id=\"spnDateTime\" style=\"float:right;\">TIME</span></p>\n");
      out.write("            <a href=\"mainpage.jsp\" class=\"previous round\">&#8249;</a>\n");
      out.write("            <div id=\"pos\">\n");
      out.write("            <a href=\"#\" class=\"previous\">&laquo; Previous</a>\n");
      out.write("            <a href=\"#\" class=\"next\">Next &raquo;</a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 String id = request.getParameter("userId");
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
ResultSet resultSet = null; 
      out.write(" \n");
      out.write("   <div id=\"dd\">\n");
      out.write("    <table align=\"center\" style=\"width:100%\" border=\"3\"> \n");
      out.write("        <tr> </tr> \n");
      out.write("        <tr bgcolor=\"gray\"> \n");
      out.write("            <td width=\"8%\"><b>FIRST NAME</b></td> \n");
      out.write("            <td width=\"7%\"><b>LAST NAME</b></td> \n");
      out.write("            <td width=\"4%\"><b>GENDER</b></td>\n");
      out.write("             <td width=\"20%\"><b>PURPOSE OF VISIT</b></td>\n");
      out.write("            <td width=\"11%\"><b>CONTACT NO</b></td>\n");
      out.write("            <td width=\"10%\"><b>EMAIL</b></td> \n");
      out.write("            <td width=\"7%\"><b>ENTRY TIME</b></td> \n");
      out.write("            <td width=\"7%\"><b>EXIT TIME</b></td> \n");
      out.write("        </tr> ");

            try{ connection = DriverManager.getConnection(connectionUrl+dbName, userId, password); 
//    statement=connection.createStatement(); String sql ="call cp();";
    statement=connection.createStatement(); String sql ="call cp();";
resultSet = statement.executeQuery(sql);
    while(resultSet.next())
{ 
      out.write(" <tr bgcolor=\"whitesmoke\" color=\"black\"> \n");
      out.write("    <td>");
      out.print(resultSet.getString("fname") );
      out.write("</td>\n");
      out.write("    <td>");
      out.print(resultSet.getString("lname") );
      out.write("</td> \n");
      out.write("    <td>");
      out.print(resultSet.getString("gender") );
      out.write("</td>\n");
      out.write("    <td>");
      out.print(resultSet.getString("pov") );
      out.write("</td> \n");
      out.write("    <td>");
      out.print(resultSet.getString("contact") );
      out.write("</td> \n");
      out.write("    <td>");
      out.print(resultSet.getString("email") );
      out.write("</td> \n");
      out.write("    <td>");
      out.print(resultSet.getString("enttime") );
      out.write("</td> \n");
      out.write("<!--<td>");
      out.print(resultSet.getString("exttime") );
      out.write("</td> -->\n");
      out.write("    <td><form action=\"welcome\" method=\"get\"><input type=\"submit\" value=\"Exit\"></form></td>\n");
      out.write("    <td><form action=\"UpdateExitTime\" method=\"get\">\n");
      out.write("             \n");
      out.write("<!--            <input type=\"text\" value=\"");
      out.print(resultSet.getString("timer"));
      out.write("\" id=\"timer\" hidden=\"true\" name='time'/>\n");
      out.write("            <input type=\"text\" value=\"");
      out.print(resultSet.getString("email"));
      out.write("\" name=\"email\" hidden=\"truess\"/>-->\n");
      out.write("            <script type=\"text/javascript\">\n");
      out.write("                var time = fnSetExitTime();\n");
      out.write("                document.getElementById(\"timer\").value=time;\n");
      out.write("               console.log(document.getElementById(\"timer\").value);\n");
      out.write("            </script>\n");
      out.write("            <button type=\"submit\">Exit</button>\n");
      out.write("        </form></td> \n");
      out.write("</tr> ");
 } } catch (Exception e) 
{ e.printStackTrace(); }

      out.write(" </table>\n");
      out.write("            </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("   \n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("   \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
