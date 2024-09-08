<%-- 
    Document   : dashboard1
    Created on : 25 Aug, 2024, 8:45:49 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Dashboard</h1>
    <center>
        <form action="msg.jsp">
            <table border="1">
                                
                <tbody>
                    <tr>
                        <td>Enter Percentage</td>
                        <td><input type="text" name="per" value="" /></td>
                    </tr>
                    <tr>
                        <td> <input type="submit" value="Check" /></td>
                        
                    </tr>
                </tbody>
            </table>

    </center>
            <%
                String cl=(String)session.getAttribute("class");
                
                String n=(String)session.getAttribute("name");
                String m=(String)session.getAttribute("mobile");
                String e=(String)session.getAttribute("email");
                String g=(String)session.getAttribute("gender");
                String d=(String)session.getAttribute("date");
                String roll=(String)session.getAttribute("roll");
                String pass=(String)session.getAttribute("cpass");
                 session.setAttribute("name",n);
                 session.setAttribute("mobile",m);
                 session.setAttribute("email",e);
                 session.setAttribute("gender",g);
                 session.setAttribute("date",d);
                 session.setAttribute("roll",roll);
                 session.setAttribute("cpass",pass);
                
                session.setAttribute("class",cl);
                %>
                <script>
                    function val()
                    {
                        //Percentage Validation
                var p=document.getElementById("per").value;
                
                if(isNaN(p))
                {
                    alert("Enter Numeric value");
                    return false;
                }
                    }
        </form>
        
    </body>
</html>