<%-- 
    Document   : retriveClient
    Created on : May 1, 2021, 2:54:53 PM
    Author     : Win 10
--%>

<%@page import="Dao.GenericDao"%>
<%@page import="Dao.GeneralDao"%>
<%@page import="Models.Client"%>
<%@page import="com.google.gson.Gson"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int client = Integer.parseInt(request.getParameter("ClientId"));
    Gson g = new Gson();
    GenericDao client_dao = new GenericDao();
    Client findclient = client_dao.SerchClient(client);
    String clientJson = g.toJson(findclient);
    out.println(clientJson);
%>