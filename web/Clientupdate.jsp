<%-- 
    Document   : Clientupdate
    Created on : Apr 11, 2021, 6:44:21 PM
    Author     : Win 10
--%>

<%@page import="Dao.GeneralDao"%>
<%@page import="Models.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    try {
        int ClientId = Integer.parseInt(request.getParameter("ClientId"));
        String ClientName = request.getParameter("ClientName");
        String ClientDob = request.getParameter("ClientDob");
        String ClientPhone = request.getParameter("ClientPhone");
        String ClientCategory = request.getParameter("ClientCategory");
        Client cl = new Client();
        cl.setClientCategory(ClientCategory);
        cl.setClientDob(ClientDob);
        cl.setClientId(ClientId);
        cl.setClientName(ClientName);
        cl.setClientPhone(ClientPhone);
        GeneralDao cdao = new GeneralDao(Client.class);
        cdao.update(cl);

        response.sendRedirect("Client.jsp");
    } catch (Exception e) {
        out.println("errpr" + e.getMessage());
    }
%>

