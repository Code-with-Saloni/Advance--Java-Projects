<%-- 
    Document   : msg
    Created on : 25 Aug, 2024, 8:46:08 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center>
    <body>
        <h1>Scolarship eligibility</h1>
        <%
         String pString=request.getParameter("per");
         String cla=(String)session.getAttribute("class");
         
                String n=(String)session.getAttribute("name");
                String m=(String)session.getAttribute("mobile");
                String e=(String)session.getAttribute("email");
                String g=(String)session.getAttribute("gender");
                String d=(String)session.getAttribute("date");
                String roll=(String)session.getAttribute("roll");
                String pass=(String)session.getAttribute("cpass");
         
          int p = (pString != null && !pString.isEmpty()) ? Integer.parseInt(pString) : 0;

            
            if ("10th".equals(cla) && p > 75) 
            {
                out.print("You are eligible for scholarship");
            }
            else if ("12th".equals(cla) && p > 65)
            {
                out.print("You are eligible for scholarship");
            }
            else if ("Graduation".equals(cla) && p > 65) 
            {
                out.print("You are eligible for scholarship");
            }
            else if ("Master".equals(cla) && p > 60) 
            {
                out.print("You are eligible for scholarship");
            }
            else 
            {
                out.print("You cannot get a scholarship");
            }
            
            
            out.print("Name: "+n+"<br>");
            out.print("Class: "+cla+"<br>");
            out.print("Mobile No: "+m+"<br>");
            out.print("Email ID: "+e+"<br>");
            out.print("Roll No: "+roll+"<br>");
            out.print("Gender: "+g+"<br>");
            out.print("Date of Birth: "+d+"<br>");
            out.print("Password: "+pass+"<br>");
            out.print("Percentage: "+p+"<br>");
            
            
        %>
          
    </body>
    </center>
</html>
