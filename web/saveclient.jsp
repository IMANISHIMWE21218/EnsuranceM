<%-- 
    Document   : saveclient
    Created on : Apr 9, 2021, 3:00:59 PM
    Author     : Win 10
--%>

<%@page import="Dao.GeneralDao"%>
<%@page import="Models.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  

          
            String ClientName = request.getParameter("ClientName");
            String ClientDob = request.getParameter("ClientDob");
            String ClientPhone = request.getParameter("ClientPhone");
            String ClientCategory = request.getParameter("ClientCategory");
           Client cl = new Client(ClientName, ClientDob, ClientPhone, ClientCategory);
           GeneralDao cdao = new GeneralDao(Client.class);
           cdao.save(cl);
        
            response.sendRedirect("Client.jsp");
        %>
    </body>
</html>
