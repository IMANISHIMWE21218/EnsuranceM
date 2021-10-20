package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import Dao.GeneralDao;
import Models.Staff;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE>\n");

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


      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
