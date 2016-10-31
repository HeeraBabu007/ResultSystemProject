<%-- 
    Document   : registration
    Created on : Jul 15, 2016, 9:09:10 PM
    Author     : jajajajamwant
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.*"%>

<html>
    <head>
        <title>
            Showing Result
        </title>
    </head>
    <body>
        <h1>result</h1>

<%
    
   
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ResultSystem","root","root");
            Statement st=con.createStatement();
            String roll=request.getParameter("roll");
            ResultSet rs=st.executeQuery("select * from result where roll='"+roll+"'");
            if(!rs.next())
            {
                out.println("sorry couldn't found");
            }
            else{
 %>
    
 <table border="1">
     <tr>
         <th>name</th>
         <th>roll</th>
         <th>semester</th>
         <th>subject1</th>
         <th>subject2</th>
         <th>subject3</th>
         <th>subject4</th>
         <th>subject5</th>
         <th>subject6</th>
         
     </tr>
     <tr>
         <td><%=rs.getString(1)%></td>
         <td><%=rs.getString(2)%></td>
         <td><%=rs.getInt(3)%></td>
         <td><%=rs.getInt(4)%></td>
         <td><%=rs.getInt(5)%></td>
         <td><%=rs.getInt(6)%></td>
         <td><%=rs.getInt(7)%></td>
         <td><%=rs.getInt(8)%></td>
         <td><%=rs.getInt(9)%></td>
         
     </tr>
 </table>
         <br>
         <%}%>
  </body>
</html>
