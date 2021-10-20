package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Models.Staff;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"bootstrap-5.0.0-beta3-dist/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"LoginForm.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>GO-Insurance</title>\n");
      out.write("\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"login\">\n");
      out.write("            <div class=\"header\">\n");
      out.write("                <p>ACCOUNT LOGIN</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"body\">\n");
      out.write("                <form class=\"form-auth-small\" action=\"login.jsp\" method=\"POST\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"signin-email\" class=\"control-label sr-only\">User-Name</label>\n");
      out.write("                        <input type=\"email\" name=\"userName\" class=\"form-control\" id=\"signin-email\" value=\"\" placeholder=\"eg. auca@domain.com\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"signin-password\" class=\"control-label sr-only\">Password</label>\n");
      out.write("                        <input type=\"password\" name=\"password\" class=\"form-control\" id=\"signin-password\" value=\"\" placeholder=\"Password\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group clearfix\">\n");
      out.write("                        <label class=\"fancy-checkbox element-left\">\n");
      out.write("                            <input type=\"checkbox\">\n");
      out.write("                            <span style=\"color: #ffffff;\">Remember me</span>\n");
      out.write("                        </label>\t\t\t\t\t\t\t\t\n");
      out.write("                    </div>\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-outline-success btn-lg btn-block m-4\">LOGIN</button>\n");
      out.write("                    <div class=\"bottom\">\n");
      out.write("                        <span class=\"helper-text m-b-10\"><i class=\"fa fa-lock\"></i> <a href=\"page-forgot-password.html\">Forgot password?</a></span>\n");
      out.write("                        <span>Don't have an account? <br><a href=\"home.html\">Back</a></span>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
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
