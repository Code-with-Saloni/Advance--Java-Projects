<%-- 
    Document   : user
    Created on : 25 Aug, 2024, 8:44:36 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user login</title>
    </head>
    <body>
        <h1>User Login</h1>
        
        <%
            String r=request.getParameter("roll");
            String c=request.getParameter("cpass");
            String cl=request.getParameter("class");
            
            String n=request.getParameter("name");
            String m=request.getParameter("mobile");
            String e=request.getParameter("email");
            String g=request.getParameter("gender");
            String d=request.getParameter("date");
            session.setAttribute("name",n);
            session.setAttribute("mobile",m);
            session.setAttribute("email",e);
            session.setAttribute("gender",g);
            session.setAttribute("date",d);
            
            session.setAttribute("roll",r);
            session.setAttribute("cpass",c);
            session.setAttribute("class",cl);
             
            %>
    <center>
            <form action="dashboard.jsp" >
                <table border="1">
                    
                    <tbody>
                        <tr>
                            <td>Roll no</td>
                            <td><input type="text" name="uroll" id="uroll" value="" /></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="text" name="upass" value="" /></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="login" /></td>
                            
                        </tr>
                    </tbody>
                </table>

           
             </form>
    </center>
            
    </body>
</html>