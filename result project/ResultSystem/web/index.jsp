<%-- 
    Document   : index
    Created on : Jul 15, 2016, 8:19:42 PM
    Author     : jajajajamwant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result System</title>
    </head>
    <body>
        <form method="post" action="login.jsp">
            <centre>
                <table border="1"width="30%"cellpadding="3">
                    <thead>
                        <tr>
                            <th colspan="2">Login Here to Watch Result</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Name</td>
                            <td><input type="text"name="name"value=""/></td>
                        </tr>
                        <tr>
                            <td>Roll Number</td>
                            <td><input type="text"name="roll"value=""/></td>
                        </tr>
                        <tr>
                            <td><input type="submit"value="Login"/></td>
                            <td><input type="reset"value="Reset"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">Yet Not Registered!!<a href="register.jsp">Register Here</a></td>
                        </tr>
                    </tbody>
                </table>
            </centre>
        </form>
    </body>
</html>
