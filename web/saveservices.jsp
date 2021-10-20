<%-- 
    Document   : saveservices
    Created on : Apr 9, 2021, 3:49:20 PM
    Author     : Win 10
--%>

<%@page import="Dao.GeneralDao"%>
<%@page import="Models.Services"%>
<%@page import="java.security.Provider.Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 

          
            String ServiceType = request.getParameter("ServiceType");
            String ServicePrice = request.getParameter("ServicePrice");
            
           Services sv = new Services( ServiceType, ServicePrice);
           GeneralDao cdao = new GeneralDao(Services.class);
           cdao.save(sv);
      
        
        
        %>