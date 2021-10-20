<%-- 
    Document   : logout
    Created on : May 1, 2021, 4:35:30 PM
    Author     : Win 10
--%>

<%@page import="Models.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    try {
        session.invalidate();
        response.sendRedirect("index.jsp");
    } catch (Exception e) {
    }
%>