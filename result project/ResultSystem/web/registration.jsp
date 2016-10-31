<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.*"%>


<%
    
   
    String name = request.getParameter("name");
    String fname = request.getParameter("fname");
    String roll = request.getParameter("roll");
     String branch = request.getParameter("branch");
    String dob = request.getParameter("dob");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ResultSystem","root","root");
    PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?)");
		
		ps.setString(1,name);
		ps.setString(2,fname);
		ps.setString(3,roll);
                ps.setString(4,branch);
		ps.setString(5,dob);
		int i=ps.executeUpdate();
    if(i>4)
    {
        //session.setAttribute("userid",user);
        response.sendRedirect("enterdetail.jsp");
        //out.print("Registration Successful!"+"<a href='index.jsp'>Go to Login</a>");
    }
    else
    {
        response.sendRedirect("index.jsp");
    }

 %>
    
