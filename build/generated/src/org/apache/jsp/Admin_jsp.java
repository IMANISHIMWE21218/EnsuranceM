package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Models.Staff;

public final class Admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<title>Home</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta name=\"format-detection\" content=\"telephone=no\" />\n");
      out.write("<link rel=\"icon\" href=\"images/favicon.ico\">\n");
      out.write("<link rel=\"shortcut icon\" href=\"images/favicon.ico\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("<script src=\"js/jquery.js\"></script>\n");
      out.write("<script src=\"js/jquery-migrate-1.1.1.js\"></script>\n");
      out.write("<script src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("<script src=\"js/script.js\"></script> \n");
      out.write("<script src=\"js/superfish.js\"></script>\n");
      out.write("<script src=\"js/jquery.equalheights.js\"></script>\n");
      out.write("<script src=\"js/jquery.mobilemenu.js\"></script>\n");
      out.write("<script src=\"js/tmStickUp.js\"></script>\n");
      out.write("<script src=\"js/jquery.ui.totop.js\"></script>\n");
      out.write("<link href=\"bootstrap-5.0.0-beta3-dist/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<script>\n");
      out.write(" $(window).load(function(){\n");
      out.write("  $().UItoTop({ easingType: 'easeOutQuart' });\n");
      out.write("  $('#stuck_container').tmStickUp({});  \n");
      out.write(" }); \n");
      out.write("</script>\n");
      out.write("<!--[if lt IE 8]>\n");
      out.write(" <div style=' clear: both; text-align:center; position: relative;'>\n");
      out.write("   <a href=\"http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode\">\n");
      out.write("     <img src=\"http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg\" border=\"0\" height=\"42\" width=\"820\" alt=\"You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today.\" />\n");
      out.write("   </a>\n");
      out.write("</div>\n");
      out.write("<![endif]-->\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("<script src=\"js/html5shiv.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" media=\"screen\" href=\"css/ie.css\">\n");
      out.write("<![endif]-->\n");
      out.write("</head>\n");
      out.write("<body class=\"page1\" id=\"top\">\n");
      out.write("        \n");
      out.write("   ");

            Staff staffSession = (Staff) session.getAttribute("staff");
            if (staffSession == null) {
                staffSession = new Staff();
                session.setAttribute("staff", staffSession);
            }
            if (staffSession.getStaffuser()== null) {
                session.invalidate();
                response.sendRedirect("index.jsp");
            }
        
      out.write("\n");
      out.write("    \n");
      out.write("<!--==============================\n");
      out.write("              header\n");
      out.write("=================================-->\n");
      out.write("<header>\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"grid_12 rel\">\n");
      out.write("        <h1>\n");
      out.write("          <a href=\"index.html\">\n");
      out.write("            <img src=\"images/logo.png\" alt=\"Logo alt\">\n");
      out.write("          </a>\n");
      out.write("        </h1>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <section id=\"stuck_container\">\n");
      out.write("  <!--==============================\n");
      out.write("              Stuck menu\n");
      out.write("  =================================-->\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"grid_12 \">\n");
      out.write("          <div class=\"navigation \">\n");
      out.write("            <nav>\n");
      out.write("              <ul class=\"sf-menu\">\n");
      out.write("               <li class=\"current\"><a href=\"index.html\">Home</a></li>\n");
      out.write("               <li><a href=\"ClientView.jsp\">Clients</a></li>\n");
      out.write("               <li><a href=\"Ensurance.jsp\">Insurance</a></li>\n");
      out.write("               <li><a href=\"services.jsp\">Insurance-Services</a></li>\n");
      out.write("               <li><a href=\" \">Insurance-Payment</a></li>\n");
      out.write("               <li><a href=\"Admin.jsp\">Admin</a></li>\n");
      out.write("               <li><a class=\"btn btn-block\" href=\"\" role=\"button\">LogOut</a></li>\n");
      out.write("               \n");
      out.write("             </ul>\n");
      out.write("            </nav>\n");
      out.write("            <div class=\"clear\"></div>\n");
      out.write("          </div>       \n");
      out.write("         <div class=\"clear\"></div>  \n");
      out.write("        </div>\n");
      out.write("     </div> \n");
      out.write("    </div> \n");
      out.write("  </section>\n");
      out.write("    \n");
      out.write("\n");
      out.write("<!--=====================\n");
      out.write("          Content\n");
      out.write("======================-->\n");
      out.write("<section id=\"content\"><div class=\"ic\">More Website Templates @ TemplateMonster.com - July 28, 2014!</div>\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"grid_10 preffix_1 ta__center\">\n");
      out.write("        <div class=\"greet\">\n");
      out.write("          <h2 class=\"head__1\">\n");
      out.write("            Administrator\n");
      out.write("          </h2>\n");
      out.write("         \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  </article>\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"grid_5\">\n");
      out.write("        <h4>About Company</h4>\n");
      out.write("        <img src=\"images/page1_img3.jpg\" alt=\"\" class=\"img_inner fleft\">\n");
      out.write("          <p>Curabitur vel lorem sit amet nulla ullamcorper fermentum In vitae dert arius augue, eu consectetur </p>\n");
      out.write("          <p class=\"offset__1\">Eligulaam dui eros dertolisce dertolo adipiscing quam id risus sagittis</p>\n");
      out.write("          Curabitur vel lorem sit amet nulla ullamcorper fermentum In vitae dert rius augue, eu consectetur larem dui eros dertolisce dertolo \n");
      out.write("      </div>\n");
      out.write("      <div class=\"grid_4\">\n");
      out.write("        <h4>Solutions</h4>\n");
      out.write("        <ul class=\"list-1\">\n");
      out.write("          <li><a href=\"#\">Vivamus at magna non nunc tristique </a></li>\n");
      out.write("          <li><a href=\"#\">Aliquam nibh ante, egestas id</a></li>\n");
      out.write("          <li><a href=\"#\">Ommodo luctus libero</a></li>\n");
      out.write("          <li><a href=\"#\">Faucibus malesuada faucibusonec </a></li>\n");
      out.write("          <li><a href=\"#\">Laoreet metus id laoreet</a></li>\n");
      out.write("          <li><a href=\"#\">Jalesuadaorem ipsum dolor sit ame</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"grid_3\">\n");
      out.write("        <h4>Contact Info</h4>\n");
      out.write("        <address>\n");
      out.write("          <ul class=\"cont_address\">\n");
      out.write("            <li>8901 Marmora Road, Glasgow, D04 89GR</li>\n");
      out.write("            <li>+1 (800) 123 9876</li>\n");
      out.write("            <li><a href=\"#\">info@demolink.org</a></li>\n");
      out.write("            <li><a href=\"#\">www.demolink.org</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </address>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</section>\n");
      out.write("<!--==============================\n");
      out.write("              footer\n");
      out.write("=================================-->\n");
      out.write("<footer id=\"footer\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"grid_12\"> \n");
      out.write("        <div class=\"copyright\"><span class=\"brand\">Stable</span> &copy; <span id=\"copyright-year\"></span> | <a href=\"#\">Privacy Policy</a>\n");
      out.write("          <div class=\"sub-copy\">Website designed by <a href=\"http://www.templatemonster.com/\" rel=\"nofollow\">TemplateMonster.com</a></div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>  \n");
      out.write("</footer>\n");
      out.write("<a href=\"#\" id=\"toTop\" class=\"fa fa-chevron-up\"></a>\n");
      out.write("</body>\n");
      out.write("</html>");
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
