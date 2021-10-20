package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import Dao.GeneralDao;
import Models.Client;

public final class Client_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Insurance client</title>\n");
      out.write("        <script src=\"bootstrap-5.0.0-beta3-dist/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"bootstrap-5.0.0-beta3-dist/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"DataTables/datatables.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("           <nav class=\"navbar navbat- bg-dark\">\n");
      out.write("            <a href=\"\" class=\"navbar-brand\" >home</a>\n");
      out.write("            <a href=\"about.html\" class=\"navbar-brand\">About</a>\n");
      out.write("            <a href=\"services.html\" class=\"navbar-brand \">Services</a>\n");
      out.write("            <a href=\"blog.html\" class=\"navbar-brand\">Blog</a>\n");
      out.write("            <a href=\"contacts.html\" class=\"navbar-brand\" >Contacts</a>\n");
      out.write("\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("\n");
      out.write("                <form id=\"clientForm\"action=\"saveclient.jsp\" method=\"POST\">\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabelSm\" class=\"col-sm-2 col-form-label col-form-label-sm m-1\">ClientName</label>\n");
      out.write("                        <div class=\"col-sm-7\">\n");
      out.write("                            <input type=\"text\" class=\"form-control form-control-sm\" id=\"ClientName\" name=\"ClientName\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabelSm\" class=\"col-sm-2 col-form-label col-form-label-sm m-1\">ClientDob</label>\n");
      out.write("                        <div class=\"col-sm-7\">\n");
      out.write("                            <input type=\"date\" class=\"form-control form-control-sm\" id=\"ClientDob\" name=\"ClientDob\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabelSm\" class=\"col-sm-2 col-form-label col-form-label-sm m-1\">ClientPhone</label>\n");
      out.write("                        <div class=\"col-sm-7\">\n");
      out.write("                            <input type=\"text\" class=\"form-control form-control-sm\" id=\"ClientPhone\" name=\"ClientPhone\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabelSm\" class=\"col-sm-2 col-form-label col-form-label-sm m-1\">ClientCategory</label>\n");
      out.write("                        <div class=\"col-sm-7\">\n");
      out.write("                            <input type=\"text\" class=\"form-control form-control-sm\" id=\"ClientCategory\" name=\"ClientCategory\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </form>\n");
      out.write("                <div class=\"form-group col-sm-11\" onclick=\"addClient()\" align=\"right\" >\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-outline-success m-3\">Save</button>                 \n");
      out.write("\n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("        </div> \n");
      out.write("\n");
      out.write("\n");
      out.write("        <table id=\"clientTB\" class=\"table table-hover table-light\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th scope=\"col\">#</th>\n");
      out.write("                    <th scope=\"col\">ClientName</th>\n");
      out.write("                    <th scope=\"col\">ClientDoB</th>\n");
      out.write("                    <th scope=\"col\">ClientPhone</th>\n");
      out.write("                    <th scope=\"col\">ClientCategory</th>\n");
      out.write("                    <th scope=\"col\">Delete</th>\n");
      out.write("                    <th scope=\"col\">Update</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("        </table> \n");
      out.write("        \n");
      out.write("        <script src=\"jquery/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"jquery/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"jquery/jquery.validate.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"DataTables/datatables.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("//var ClientId = null;\n");
      out.write("                    function getData() {\n");
      out.write("                        \n");
      out.write("                        $('#clientTB').dataTable().fnDestroy();\n");
      out.write("                        $.ajax({\n");
      out.write("                            url: \"listClient.jsp\",\n");
      out.write("                            type: 'GET',\n");
      out.write("                            dataType: 'JSON',\n");
      out.write("                            success: function (data) {\n");
      out.write("                                console.log(\"data\" + data);\n");
      out.write("\n");
      out.write("\n");
      out.write("                                $('#clientTB').dataTable({\n");
      out.write("                                    \"aaData\": data,\n");
      out.write("                                    \"scrollx\": true,\n");
      out.write("                                    \"aoColumns\": [\n");
      out.write("                                        {\"sTitle\": \"#\", \"mData\": \"ClientId\"},\n");
      out.write("                                        {\"sTitle\": \"ClientName\", \"mData\": \"ClientName\"},\n");
      out.write("                                        {\"sTitle\": \"ClientDoB\", \"mData\": \"ClientDob\"},\n");
      out.write("                                        {\"sTitle\": \"ClientPhone\", \"mData\": \"ClientPhone\"},\n");
      out.write("                                        {\"sTitle\": \"ClientCategory\", \"mData\": \"ClientCategory\"},\n");
      out.write("                                        {\n");
      out.write("                                            \"sTitle\": \"Delete\",\n");
      out.write("                                            \"mData\": \"ClientId\",\n");
      out.write("                                            \"render\": function (mData)\n");
      out.write("                                            {\n");
      out.write("                                                return '<button class=\"btn btn-sm btn-icon btn-pure btn-default on-default m-r-5 button-delete bg-success\" onclick=\"getDitails(' + mData + ')\" style=\"color:#fff;\">update</button>';\n");
      out.write("                                            }\n");
      out.write("                                        },\n");
      out.write("                                        {\n");
      out.write("                                            \"sTitle\": \"Edit\",\n");
      out.write("                                            \"mData\": \"ClientId\",\n");
      out.write("                                            \"render\": function (mData)\n");
      out.write("                                            {\n");
      out.write("                                                return '<button class=\"btn btn-sm btn-icon btn-pure btn-default on-default m-r-5 button-delete bg-danger\" onclick=\"deleteData(' + mData + ')\" style=\"color:#fff;\">delete</button>';\n");
      out.write("                                            }\n");
      out.write("                                        }\n");
      out.write("                                    ]\n");
      out.write("                                });\n");
      out.write("                            }\n");
      out.write("                        });\n");
      out.write("                    }\n");
      out.write("                    getData();\n");
      out.write("\n");
      out.write("                    function addClient() {\n");
      out.write("\n");
      out.write("                        var isNew = true;\n");
      out.write("                        var url = \"\";\n");
      out.write("                        var method = \"\";\n");
      out.write("                        var data = \"\";\n");
      out.write("                        if (isNew === true) {\n");
      out.write("                            url = \"saveclient.jsp\";\n");
      out.write("                            method = \"POST\";\n");
      out.write("                            data = $(\"#clientForm\").serialize();\n");
      out.write("                        } else {\n");
      out.write("                            //for update\n");
      out.write("                            url = \"Clientupdate.jsp\";\n");
      out.write("                            data = $(\"#clientForm\").serialize() + \"&ClientId=\" + ClientId;\n");
      out.write("                            method = \"POST\";\n");
      out.write("\n");
      out.write("                        }\n");
      out.write("                        $.ajax({\n");
      out.write("                            type: method,\n");
      out.write("                            url: url,\n");
      out.write("                            dataType: 'TEXT',\n");
      out.write("                            data: data,\n");
      out.write("                            success: function (data) {\n");
      out.write("                                alert(\"clientAdded\");\n");
      out.write("                                document.querySelector(\"#ClientName\").value = \"\";\n");
      out.write("                                document.querySelector(\"#ClientDob\").value = \"\";\n");
      out.write("                                document.querySelector(\"#ClientPhone\").value = \"\";\n");
      out.write("                                document.querySelector(\"#ClientCategory\").value = \"\"\n");
      out.write("\n");
      out.write("                            }\n");
      out.write("                        });\n");
      out.write("                        getData();\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    //delete\n");
      out.write("                    function deleteData(ClientId) {\n");
      out.write("                        $.ajax({\n");
      out.write("                            type: 'POST',\n");
      out.write("                            url: 'ClientDelete.jsp',\n");
      out.write("                            data: {\"ClientId\": ClientId},\n");
      out.write("\n");
      out.write("                            success: function (data) {\n");
      out.write("\n");
      out.write("                                getData();\n");
      out.write("                            }\n");
      out.write("                        });\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    function getDitails(ClientId) {\n");
      out.write("                        isNew = false;\n");
      out.write("                        $.ajax({\n");
      out.write("                            type: \"POST\",\n");
      out.write("                            url: \"listClient.jsp\",\n");
      out.write("                            data: {\"ClientId\": ClientId},\n");
      out.write("                            success: function (data) {\n");
      out.write("//                            alert(\"loaded\");\n");
      out.write("\n");
      out.write("                                var obj = JSON.parse(data);\n");
      out.write("                                ClientId = obj.ClientId;\n");
      out.write("\n");
      out.write("                                document.querySelector(\"#ClientName\").value = obj.ClientName;\n");
      out.write("                                document.querySelector(\"#ClientDob\").value = obj.ClientDob;\n");
      out.write("                                document.querySelector(\"#ClientPhone\").value = obj.ClientPhone;\n");
      out.write("                                document.querySelector(\"#ClientCategory\").value = obj.ClientCategory;\n");
      out.write("\n");
      out.write("\n");
      out.write("                            }\n");
      out.write("                        });\n");
      out.write("                    }\n");
      out.write("      \n");
      out.write("                                 ///the jsp table down up the ajax\n");
      out.write("        </script>\n");
      out.write("       \n");
      out.write("         <table class=\"table table-hover table-dark\">\n");
      out.write("              <thead>\n");
      out.write("                <tr>\n");
      out.write("                  <th scope=\"col\">#</th>\n");
      out.write("                  <th scope=\"col\">ClientName</th>\n");
      out.write("                  <th scope=\"col\">ClientDoB</th>\n");
      out.write("                  <th scope=\"col\">ClientPhone</th>\n");
      out.write("                  <th scope=\"col\">ClientCategory</th>\n");
      out.write("                </tr>\n");
      out.write("              </thead>\n");
      out.write("              ");
 
                   GeneralDao cldao = new GeneralDao(Client.class);
                   List<Client> listclient = cldao.findAll();
                   for(Client cl: listclient){
              
              
      out.write("\n");
      out.write("              <tbody>\n");
      out.write("                <tr>\n");
      out.write("                  \n");
      out.write("                   <td> ");
      out.print(cl.getClientId() );
      out.write(" </td>\n");
      out.write("                  <td> ");
      out.print(cl.getClientName() );
      out.write(" </td>\n");
      out.write("                  <td> ");
      out.print( cl.getClientDob() );
      out.write(" </td>\n");
      out.write("                  <td> ");
      out.print( cl.getClientPhone() );
      out.write(" </td>\n");
      out.write("                  <td> ");
      out.print( cl.getClientCategory() );
      out.write(" </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("                \n");
      out.write("              </tbody>\n");
      out.write("            </table>\n");
      out.write("         \n");
      out.write("    </body>  \n");
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
