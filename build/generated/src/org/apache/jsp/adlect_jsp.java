package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adlect_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("\n");
      out.write(" \n");
      out.write("    <style>\n");
      out.write("           body{\n");
      out.write("                background-image: url(\"adform.png\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 100%;\n");
      out.write("                color:black;\n");
      out.write("         \n");
      out.write("              }\n");
      out.write("       /* body{\n");
      out.write("            background-color:FFFBD0;\n");
      out.write("                color:black;\n");
      out.write("        }*/\n");
      out.write("        table{\n");
      out.write("            background-color:transparent;\n");
      out.write("                color:black;\n");
      out.write("        }      \n");
      out.write("        a{\n");
      out.write("    text-decoration: none;\n");
      out.write("    display: inline-block;\n");
      out.write("    padding: 8px 16px;\n");
      out.write("       }\n");
      out.write("\n");
      out.write("a:hover {\n");
      out.write("    background-color: #ddd;\n");
      out.write("    color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".previous {\n");
      out.write("    background-color:  #4CAF50;\n");
      out.write("    color: black;\n");
      out.write("}\n");
      out.write(".round {\n");
      out.write("    border-radius: 50%;\n");
      out.write("}\n");
      out.write("#pos{\n");
      out.write("    position: absolute; \n");
      out.write("                            visibility: visible; \n");
      out.write("                            left: 30px; \n");
      out.write("                            top: 40px; \n");
      out.write("                            z-index: 200;\n");
      out.write("}\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        function validate()\n");
      out.write("                 {    \n");
      out.write("                     if(document.getElementById(\"staff_id\").value==\"\")\n");
      out.write("                     {\n");
      out.write("                         alert(\"PLZ PROVIDE STAFF ID\");\n");
      out.write("                         document.getElementById(\"staff_id\").focus();\n");
      out.write("                         return false;\n");
      out.write("                     }\n");
      out.write("                     if(document.getElementById(\"dpt\").value==\"\")\n");
      out.write("                     {\n");
      out.write("                         alert(\"PLZ PROVIDE DEPARTMENT\");\n");
      out.write("                         document.getElementById(\"dpt\").focus();\n");
      out.write("                         return false;\n");
      out.write("                     }\n");
      out.write("                     if(document.getElementById(\"staff_name\").value==\"\")\n");
      out.write("                     {\n");
      out.write("                         alert(\"PLZ PROVIDE STAFF NAME\");\n");
      out.write("                         document.getElementById(\"staff_name\").focus();\n");
      out.write("                         return false;\n");
      out.write("                     }\n");
      out.write("                      if(document.getElementById(\"add\").value==\"\")\n");
      out.write("                     {\n");
      out.write("                         alert(\"PLZ PROVIDE STAFF address\");\n");
      out.write("                         document.getElementById(\"staff_name\").focus();\n");
      out.write("                         return false;\n");
      out.write("                     }\n");
      out.write("                     else  \n");
      out.write("                      {  \n");
      out.write("                         alert('Form Successfully Submitted');  \n");
      out.write("                         window.location.reload()  \n");
      out.write("                         return true;\n");
      out.write("                      } \n");
      out.write("             }\n");
      out.write("             \n");
      out.write(" function confirmreset()\n");
      out.write(" {\n");
      out.write("\n");
      out.write("  return confirm(\"Do you want to reset the form?\");\n");
      out.write(" }\n");
      out.write("                   \n");
      out.write("   function fnGetCurrentDateTime(){\n");
      out.write("       var currentdate = new Date(); \n");
      out.write("        var datetime = \"Date : \" + currentdate.getDate() + \"/\"\n");
      out.write("                + (currentdate.getMonth()+1)  + \"/\" \n");
      out.write("                + currentdate.getFullYear() + \"<br/>\" \n");
      out.write("                + \"Time : \"+ currentdate.getHours() + \":\"  \n");
      out.write("                + currentdate.getMinutes() + \":\" \n");
      out.write("                + currentdate.getSeconds();\n");
      out.write("            document.getElementById(\"spnDateTime\").innerHTML = datetime;\n");
      out.write("    }\n");
      out.write("     function fnSetCurrentTime(){\n");
      out.write("         var currentdate = new Date(); \n");
      out.write("       var timest =currentdate.getHours() + \":\"  \n");
      out.write("                + currentdate.getMinutes() + \":\" \n");
      out.write("                + currentdate.getSeconds();\n");
      out.write("        return timest;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    setInterval(function(){\n");
      out.write("    fnGetCurrentDateTime();\n");
      out.write("    },1000);\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("<center>\n");
      out.write("\n");
      out.write("<h1>LECTURERS FORM</h1>\n");
      out.write("<p id=\"pos\"><a href=\"mainpage.jsp\" class=\"previous round\">&#8249;</a></p>\n");
      out.write(" <span id=\"spnDateTime\" style=\"float:right;\">TIME</span>\n");
      out.write("\n");
      out.write("<form name=\"new\" onsubmit=\"return(validate());\">\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("<table border='1' style=\"width:40%;\"height=80%;\">\n");
      out.write(" <tr>\n");
      out.write("\n");
      out.write("  <td><LABEL for=\"staff_id\">STAFF ID:<sup style=\"color:#F00\">*</sup> </LABEL></td>\n");
      out.write("\n");
      out.write("         <td><INPUT type=\"text\" id=\"staff_id\"></td>\n");
      out.write("\n");
      out.write(" </tr>\n");
      out.write(" <tr>\n");
      out.write("\n");
      out.write("  <td><LABEL for=\"dpt\">department:<sup style=\"color:#F00\">*</sup> </LABEL></td>\n");
      out.write("\n");
      out.write("  <td><input type=\"checkbox\" id=\"dpt\" value=\"CSE\">CSE<br/>\n");
      out.write("      <input type=\"checkbox\" id=\"dpt\" value=\"ECE\">ECE<br/>\n");
      out.write("          <input type=\"checkbox\" id=\"dpt\" value=\"MECH\">MECH<br/>\n");
      out.write("          <input type=\"checkbox\" id=\"dpt\" value=\"TC\">TC</td>\n");
      out.write("\n");
      out.write(" </tr>\n");
      out.write(" <tr>\n");
      out.write("\n");
      out.write("  <td><LABEL for=\"staff_name\">STAFF NAME:<sup style=\"color:#F00\">*</sup> </LABEL></td>\n");
      out.write("\n");
      out.write("         <td><INPUT type=\"text\" id=\"staff_name\"></td>\n");
      out.write("\n");
      out.write(" </tr>\n");
      out.write("\n");
      out.write(" <tr>\n");
      out.write("  <td><LABEL for=\"detail\" style=\"text-align:left;\">ADDRESS: </LABEL></td>\n");
      out.write("\n");
      out.write("  <td><textarea id=\"detail_m\"  rows=\"15\" cols=\"45\"></textarea></td>\n");
      out.write("\n");
      out.write(" </tr>\n");
      out.write("  <tr>\n");
      out.write("  <td><LABEL for=\"phone_no\" style=\"text-align:left;\">PHONE NUMBER </LABEL></td>\n");
      out.write("\n");
      out.write("  <td><textarea id=\"phone_no\" maxlength=\"10\"></textarea></td>\n");
      out.write("\n");
      out.write(" </tr>\n");
      out.write(" \n");
      out.write(" \n");
      out.write("\n");
      out.write("    </table>\n");
      out.write("    \n");
      out.write("    <br/><INPUT type=\"submit\" onClick=\"return validate()\" value=\"Submit\">\n");
      out.write("\n");
      out.write("  <INPUT type=\"reset\" onClick=\"return confirmreset()\">\n");
      out.write("  <br/><i style=\"color:red;font-size:12px;align:bottom right;\" >* - Mandatory</i></p>\n");
      out.write("\n");
      out.write(" </form></center>\n");
      out.write(" \n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
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
