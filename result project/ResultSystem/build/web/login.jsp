<%-- 
    Document   : login
    Created on : Jul 15, 2016, 11:09:02 PM
    Author     : jajajajamwant
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.*"%>
<%
    String name = request.getParameter("name");
    String roll = request.getParameter("roll");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ResultSystem","root","root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from student where name='"+name+"' and roll='"+roll+"'");
    if(rs.next())
    {
        session.setAttribute("roll",roll);
        //
        response.sendRedirect("enterdetail.jsp");
    }
    else
    {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>    