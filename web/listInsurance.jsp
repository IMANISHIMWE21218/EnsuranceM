<%-- 
    Document   : listInsurance
    Created on : Apr 20, 2021, 5:24:49 PM
    Author     : Win 10
--%>

<%@page import="java.util.List"%>
<%@page import="Models.Insurance"%>
<%@page import="Dao.GeneralDao"%>
<%@page import="com.google.gson.Gson"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Gson g = new Gson();
    GeneralDao cldao = new GeneralDao(Insurance.class);
    List<Insurance> listclient = cldao.findAll();
    String client = g.toJson(listclient);
    out.print(client);
    
%>
