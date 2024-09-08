<%-- 
    Document   : donorinfo
    Created on : 7 Aug, 2024, 7:38:37 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body><center>
         <h1>DONER'S REGISTRATION</h1>
         <b>
        <%
       String n=request.getParameter("sname");
       String m=request.getParameter("mob");
       String i=request.getParameter("eid");
       String c=request.getParameter("age");
       String w=request.getParameter("wegt");
       String h=request.getParameter("Bloodgrp");
      int a=Integer.parseInt(c);
       int we=Integer.parseInt(w);
       out.print("WELCOME "+n+"<br>");
       out.print("You are registered successfuly "+"<br>");
       out.print("AS per your details entered "+"<br>");
       out.print("Email id "+i+"<br>");
       out.print("Blood Group is "+h+"<br>");
       out.print("Age "+c+"<br>");
       out.print("Weight "+w+"<br>");
       out.print("Registered Mobile number "+m+"<br>");
       if(a>18 && we>45)
       {
             out.print("Congratulations you are eligible for blood donation visit @Rajapeth Amravati at 10.00 am");
              
       }
       else{
             out.print("Sorry You are not Eligible for blood donationn we have request your details, we will contact you next time");
       }       
         %></b>
         </center>
    </body>
</html>
