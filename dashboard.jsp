<%-- 
    Document   : dashboard
    Created on : 25 Aug, 2024, 8:45:32 PM
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
            
        <%
             String ro=request.getParameter("uroll");
             String pa=request.getParameter("upass");
             
             String roll=(String)session.getAttribute("roll");
             String pass=(String)session.getAttribute("cpass");
             String cla=(String)session.getAttribute("class");
             
             String n=(String)session.getAttribute("name");
             String m=(String)session.getAttribute("mobile");
             String e=(String)session.getAttribute("email");
             String g=(String)session.getAttribute("gender");
             String d=(String)session.getAttribute("date");
             session.setAttribute("name",n);
            session.setAttribute("mobile",m);
            session.setAttribute("email",e);
            session.setAttribute("gender",g);
            session.setAttribute("date",d);
            session.setAttribute("roll",roll);
            session.setAttribute("cpass",pass);
            
            
            
             
             
             session.setAttribute("class",cla);
             
              if(ro.equalsIgnoreCase(roll) && pa.equals(pass))
             {
                 response.sendRedirect("dashboard1.jsp");
             }
              else
              {
                  response.sendRedirect("user.jsp");
              }
            
             %>
             
    </body>
</html>