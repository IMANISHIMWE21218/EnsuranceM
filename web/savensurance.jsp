<%-- 
    Document   : savensurance
    Created on : Apr 9, 2021, 5:50:38 PM
    Author     : Win 10
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="Models.Client"%>
<%@page import="Dao.GeneralDao"%>
<%@page import="Models.Insurance"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% 
    
            String client = request.getParameter("ClientName");
           
            String StartingDate = request.getParameter("StartingDate");
            DateTimeFormatter fo = DateTimeFormatter.ofPattern("yyyy-mm-dd");
            LocalDateTime now = LocalDateTime.now();
            String EndingDate = request.getParameter("EndingDate");
            String services = request.getParameter("ServiceType");
            
            GeneralDao edao = new GeneralDao(Insurance.class);
            //Client client = new Client();
           //client.setClientName(clientss);
                   
           Insurance sv = new Insurance(client, StartingDate, EndingDate, services);
           
           edao.save(sv);
    
    %>
    
    
</html>
