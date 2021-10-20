<%-- 
    Document   : listClient
    Created on : Apr 11, 2021, 5:35:01 PM
    Author     : Win 10
--%>

<%@page import="com.google.gson.Gson"%>
<%@page import="Dao.GeneralDao"%>
<%@page import="java.util.List"%>
<%@page import="Models.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
        Gson g = new Gson();
        GeneralDao cldao = new GeneralDao(Client.class);
        List<Client> listclient = cldao.findAll();
        String client = g.toJson(listclient);
        out.print(client);
    } catch (Exception e) {
        System.err.println("failed system!"+ e.getMessage());
    }

%>