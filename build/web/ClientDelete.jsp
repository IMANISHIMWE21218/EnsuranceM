<%-- 
    Document   : ClientDelete
    Created on : Apr 11, 2021, 1:44:44 PM
    Author     : Win 10
--%>

<%@page import="Dao.GeneralDao"%>
<%@page import="Models.Client"%>
<%@page import="Models.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    try {
        int ClientId = Integer.parseInt(request.getParameter("ClientId"));
        GeneralDao updao = new GeneralDao(Client.class);
        
        Client client = new Client();
        client.setClientId(ClientId);
        
        updao.delete(client);
        response.sendRedirect("Client.jsp");
        
    } catch (Exception e) {
        out.println("errpr" + e.getMessage());
    }
    
  
%>

