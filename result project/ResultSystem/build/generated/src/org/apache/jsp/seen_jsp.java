package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public final class seen_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>\n");
      out.write("            Showing Result\n");
      out.write("        </title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>result</h1>\n");
      out.write("\n");

    
   
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ResultSystem","root","root");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from result");
            while(!rs.next())
            {
                out.println("sorry couldn't found");
            }
 
      out.write("\n");
      out.write("    \n");
      out.write(" <table border=\"1\">\n");
      out.write("     <tr>\n");
      out.write("         <th>name</th>\n");
      out.write("         <th>roll</th>\n");
      out.write("         <th>semester</th>\n");
      out.write("         <th>subject1</th>\n");
      out.write("         <th>subject2</th>\n");
      out.write("         <th>subject3</th>\n");
      out.write("         <th>subject4</th>\n");
      out.write("         <th>subject5</th>\n");
      out.write("         <th>subject6</th>\n");
      out.write("         \n");
      out.write("     </tr>\n");
      out.write("     <tr>\n");
      out.write("         <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("         <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("         <td>");
      out.print(rs.getInt(3));
      out.write("</td>\n");
      out.write("         <td>");
      out.print(rs.getInt(4));
      out.write("</td>\n");
      out.write("         <td>");
      out.print(rs.getInt(5));
      out.write("</td>\n");
      out.write("         <td>");
      out.print(rs.getInt(6));
      out.write("</td>\n");
      out.write("         <td>");
      out.print(rs.getInt(7));
      out.write("</td>\n");
      out.write("         <td>");
      out.print(rs.getInt(8));
      out.write("</td>\n");
      out.write("         <td>");
      out.print(rs.getInt(9));
      out.write("</td>\n");
      out.write("         \n");
      out.write("     </tr>\n");
      out.write(" </table>\n");
      out.write("             </body>\n");
      out.write("</html>\n");
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
