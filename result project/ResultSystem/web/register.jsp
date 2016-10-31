<%-- 
    Document   : reg
    Created on : Jul 15, 2016, 8:45:18 PM
    Author     : heera babu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result System</title>
    </head>
    <body>
        <form method="post"action="registration.jsp">
            <center>
                <table border="1"width="30%"cellpadding="5">
                    
                    <thead>
                        <tr>
                            <th colspan="2">Enter Information Here</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Name</td>
                            <td><input type="text"name="name"value=""/></td>
                        </tr>
                        <tr>
                            <td>Father's Name</td>
                            <td><input type="text"name="fname"value=""/></td>
                        </tr>
                        <tr>
                            <td>Roll Number</td>
                            <td><input type="text"name="roll"value=""/></td>
                        </tr>
                        <tr>
                            <td>Branch</td>
                            <td><input type="text"name="branch"value=""/></td>
                        </tr>
                        <tr>
                            <td>Birthday</td>
                            <td><input type="text"name="dob"value=""/></td>
                        </tr>
                        <tr>
                            <td><input type="submit"value="Submit"/></td>
                        </tr>
                        <tr>
                            <td><input type="reset"value="Reset"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">Already Registered!!<a href="index.jsp">Login Here</a></td>
                        </tr>                
                    </tbody>
                </table>
            </center>
        </form>
    </body>
</html>
