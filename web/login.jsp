<%-- 
    Document   : login
    Created on : May 1, 2021, 4:03:39 PM
    Author     : Win 10
--%>

<%@page import="java.util.List"%>
<%@page import="Dao.GeneralDao"%>
<%@page import="Models.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE>
<%
    // REQUESTING DATA
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
    // DEFINING STAFF SESSION
    Staff staffSession = (Staff) session.getAttribute("staff");
    try {
        boolean isValid = false;
        GeneralDao<Staff> staffDao = new GeneralDao<Staff>(Staff.class);
        List<Staff> staffList = staffDao.findAll();
        for (Staff st : staffList) {
            if (st.getStaffuser().equals(userName) && st.getPassword().equals(password)) {
                isValid = true;
                // CREATING NEW SESSION IF IT DOSEN'T EXIST
                if (staffSession == null) {
                    staffSession = new Staff();
                    session.setAttribute("staff", staffSession);
                    // PUTING DATA IN SESSION
                    staffSession.setStaffuser(st.getStaffuser());
                    staffSession.setPassword(st.getPassword());
                    staffSession.setStaffemail(st.getStaffemail());
                    staffSession.setStaff_id(st.getStaff_id());
                }
            }
        }
        if (isValid) {
            response.sendRedirect("Admin.jsp");
        } else {
             response.sendRedirect("index.jsp");
             out.println("<script>alert('invalid username or password')</script>");
            
           
        }
    } catch (Exception e) {
        out.println("Error! Please System Mantainer");
    }

%>
