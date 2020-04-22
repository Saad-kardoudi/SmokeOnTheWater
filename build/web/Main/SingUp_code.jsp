<%-- 
    Document   : SingUp_code
    Created on : 22 avr. 2020, 16:37:48
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String prenom = request.getParameter("prenom");
            String nom = request.getParameter("nom");
            String login = request.getParameter("login");
            String password = request.getParameter("password");
            boolean rs = CNX.AMS_requwest("INSERT INTO JARDIINIER ((SELECT max(NUM)+1 from JARDIINIER),'"+nom+"','"+prenom+"',null,'"+login+"','"+password+"','Client')");
            if(rs==true){
                response.sendRedirect("login.jsp");
            }else{
                RequestDispatcher dispatcher = request.getRequestDispatcher("SingUp.jsp");
               dispatcher.include(request, response);
            }
        %>
    </body>
</html>
