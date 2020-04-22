<%-- 
    Document   : Login_code
    Created on : 22 avr. 2020, 15:14:55
    Author     : LEGION
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String log_in =request.getParameter("login");
            String password =request.getParameter("password");
            ResultSet rs=CNX.Select_requwest("SELECT RANK from JARDIINIER WHERE LOGIN='"+log_in+"',PASSWORD='"+password+"'");
            if(rs.next()){
                session.setAttribute("login", log_in);
                session.setAttribute("rank", rs.getString(1));
                response.sendRedirect("");
            }else{
               RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
               dispatcher.include(request, response); 
            }
        %>
    </body>
</html>
