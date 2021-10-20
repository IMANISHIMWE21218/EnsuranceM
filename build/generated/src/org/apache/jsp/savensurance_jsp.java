package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Dao.GenericDao;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import Models.Client;
import Dao.GeneralDao;
import Models.Insurance;

public final class savensurance_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    ");
 
//    try{
//            Client cl = new Client();
//            Insurance in = new Insurance();
//            
//            in.setClient((Client) new GenericDao().Serch_By_Id(cl, Integer.parseInt(request.getParameter("client"))));
//            in.setStartingDate(request.getParameter("StartingDate"));
//            //DateTimeFormatter fo = DateTimeFormatter.ofPattern("yyyy-mm-dd");
//            //LocalDateTime now = LocalDateTime.now();
//            in.setEndingDate(request.getParameter("EndingDate"));
//            in.setServices(request.getParameter("ServiceType"));
//            //new GenericDao().Save(in);
            
            //response.sendRedirect("Client.jsp");
            
            
            Insurance insurance = new Insurance();
		Client ct = new Client();
		GeneralDao<Client> client_dao = new GeneralDao<Client>(Client.class);
		GeneralDao<Insurance> dao = new GeneralDao<Insurance>(Insurance.class);

		String client = request.getParameter("client");
		String startdate = request.getParameter("StartingDate");
                DateTimeFormatter fo = DateTimeFormatter.ofPattern("yyyy-mm-dd");
                LocalDateTime now = LocalDateTime.now();
                String enddate = request.getParameter("EndingDate");
		String service = request.getParameter("ServiceType");
		
			try {
				
				ct = client_dao.findById(client);
				//insurance.setClient(client);
				insurance.setStartingDate(startdate);
				insurance.setEndingDate(enddate);
				insurance.setServices(service);
                                insurance.setClient(ct);
				dao.save(insurance);
				
				out.println("Insurance saved successful");
				
			} catch (Exception e) {
				out.println(e);
			}
		
            
            
//    }catch(Exception ex)
//    {
//    out.println(ex.getMessage());
//    }
            //GeneralDao edao = new GeneralDao(Insurance.class);
            //Client client = new Client();
           //client.setClientName(clientss);
                   
           //Insurance sv = new Insurance(client, StartingDate, EndingDate, services);
           
           //edao.save(sv);
    
    
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("</html>\n");
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
