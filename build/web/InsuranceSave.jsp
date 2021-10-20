<%-- 
    Document   : InsuranceSave
    Created on : Apr 19, 2021, 1:57:48 PM
    Author     : Win 10
--%>
<%@page import="Dao.GenericDao"%>
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

            Insurance insurance = new Insurance();
		Client ct = new Client();
		GeneralDao<Client> client_dao = new GeneralDao<Client>(Client.class);
		GeneralDao<Insurance> dao = new GeneralDao<Insurance>(Insurance.class);

		int client = Integer.parseInt(request.getParameter("client"));
		String startdate = request.getParameter("StartingDate");
                DateTimeFormatter fo = DateTimeFormatter.ofPattern("yyyy-mm-dd");
                LocalDateTime now = LocalDateTime.now();
                String enddate = request.getParameter("EndingDate");
		String service = request.getParameter("ServiceType");
                
		out.println(client);
			try {
				ct = client_dao.findById(client);
				insurance.setClient(ct);
				insurance.setStartingDate(startdate);
				insurance.setEndingDate(enddate);
				insurance.setServices(service);
                                insurance.setClient(ct);
				dao.save(insurance);
				out.println(ct);
				
			} catch (Exception e) {
				out.println(e);
			}
		

    %>
    
</html>
