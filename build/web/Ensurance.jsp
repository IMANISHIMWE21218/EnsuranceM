<%-- 
    Document   : ClientView
    Created on : Apr 20, 2021, 9:52:40 AM
    Author     : Win 10
--%>
<%@page import="Models.Staff"%>
<%@page import="Models.Services"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="Dao.GeneralDao"%>
<%@page import="Models.Client"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Create Insurance</title>
<link href="mystyle.css" rel="stylesheet" type="text/css"/>
<meta charset="utf-8">
<link href="style.css" rel="stylesheet" type="text/css"/>
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/contact-form.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/script.js"></script> 
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/tmStickUp.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/TMForm.js"></script>
<script src="js/modal.js"></script>


 <script src="bootstrap-5.0.0-beta3-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap-5.0.0-beta3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="DataTables/datatables.min.css" rel="stylesheet" type="text/css"/>
        


<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  
 }); 
</script>
<!--[if lt IE 8]>
 <div style=' clear: both; text-align:center; position: relative;'>
   <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
     <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
</div>
<![endif]-->
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body>
<!--==============================
              header
=================================-->
<header>
  <div class="container">
    <div class="row">
      <div class="grid_12 rel">
        <h1>
          <a href="index.html">
            <img src="images/logo.png" alt="Logo alt">
          </a>
        </h1>
      </div>
    </div>
  </div>
  <section id="stuck_container">
  <!--==============================
              Stuck menu
  =================================-->
    <div class="container">
      <div class="row">
        <div class="grid_12 ">
          <div class="navigation ">
            <nav>
              <ul class="sf-menu">
               <li><a href="index.html">Home</a></li>
               <li><a href="about.html">About</a></li>
               <li><a href="services.html">Services</a></li>
               <li><a href="blog.html">Blog</a></li>
               <li class="current"><a href="contacts.html">Contacts</a></li>
               <li><a href="Admin.html">Admin</a></li>
             </ul>
            </nav>
            <div class="clear"></div>
          </div>       
         <div class="clear"></div>  
        </div>
     </div> 
    </div> 
  </section>
</header>
<!--=====================
          Content
======================-->
<h1>Create Insurance </h1>


        <div class="row">
            <div class="col-sm-4">

                <form id="insuranceForm" action="InsuranceSave.jsp" method="POST">
                    <div class="form-group row">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm m-1">client Name</label>
                        <div class="col-sm-7">

                            <select name="client"  class="form-select" aria-label="Default select example" id="client">
                                <%
                                    GeneralDao cdao = new GeneralDao(Client.class);
                                    List<Client> clientList = cdao.findAll();
                                    for (Client clients : clientList) {
                                %>
                                <option  value="<%= clients.getClientId()%>" ><%= clients.getClientName()%></option>
                                <% } %>

                            </select>


                        </div>
                    </div>






                    <div class="form-group row">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm m-1">StartingDate</label>
                        <div class="col-sm-7">
                            <input type="date" class="form-control form-control-sm"  name="StartingDate" id="StartingDate">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm m-1">EndingDate"</label>
                        <div class="col-sm-7">
                            <input type="date" class="form-control form-control-sm" id="EndingDate" name="EndingDate">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm m-1">ServiceType"</label>
                        <div class="col-sm-7">

                            <select name="ServiceType" class="form-select" id="ServiceType" aria-label="Default select example">
                                <%
                                    GeneralDao sdao = new GeneralDao(Services.class);
                                    List<Services> serviceList = sdao.findAll();
                                    for (Services services : serviceList) {
                                %>
                                <option><%= services.getServiceType()%></option>
                                <% }%>


                            </select>
                        </div>
                    </div>
                </form>
                <div class="form-group col-sm-11" onclick="addInsurance()" align="right" >
                    <button type="submit" class="btn btn-outline-success m-3">Save</button>                 

                </div> 
            </div>
        </div> 



        <table id="insuranceTB" class="table table-hover table-light">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">clientName</th>
                    <th scope="col">StartingDate</th>
                    <th scope="col">EndingDate</th>
                    <th scope="col">ServiceType</th>
                    <th scope="col">Delete</th>
                    <th scope="col">Update</th>
                </tr>
            </thead>
        </table> 

        <script src="jquery/jquery.js" type="text/javascript"></script>
        <script src="jquery/jquery.min.js" type="text/javascript"></script>
        <script src="jquery/jquery.validate.min.js" type="text/javascript"></script>
        <script src="DataTables/datatables.min.js" type="text/javascript"></script>

        <script>
                    function getData() {
                        $('#insuranceTB').dataTable().fnDestroy();
                        $.ajax({
                            url: "listInsurance.jsp",
                            type: 'GET',
                            dataType: 'JSON',
                            success: function (data) {
                                console.log("datas are " + data);
                                $('#insuranceTB').dataTable({
                                    "aaData": data,
                                    "scrollx": true,
                                    "aoColumns": [

                                        {"sTitle": "#", "mData": "InsuranceId"},
                                        {"sTitle": "clientName", "mData": "ClientName"},
                                        {"sTitle": "StartingDate", "mData": "StartingDate"},
                                        {"sTitle": "EndingDate", "mData": "EndingDate"},
                                        {"sTitle": "ServiceType", "mData": "services"},
                                        {
                                            "sTitle": "Delete",
                                            "mData": "InsuranceId",
                                            "render": function (mData)
                                            {
                                                return '<button class="btn btn-sm btn-icon btn-pure btn-default on-default m-r-5 button-delete bg-success" onclick="getDitails(' + mData + ')" style="color:#fff;">update</button>';
                                            }
                                        },
                                        {
                                            "sTitle": "Edit",
                                            "mData": "InsuranceId",
                                            "render": function (mData)
                                            {
                                                return '<button class="btn btn-sm btn-icon btn-pure btn-default on-default m-r-5 button-delete bg-danger" onclick="deleteData(' + mData + ')" style="color:#fff;">delete</button>';
                                            }
                                        }
                                    ]
                                });
                            }
                        });
                    }
                    getData();

                    function addInsurance() {

                        var isNew = true;
                        var url = "";
                        var method = "";
                        var data = "";
                        if (isNew === true) {
                            url = "InsuranceSave.jsp";
                            method = "POST";
                            data = $("#insuranceForm").serialize();
                        } else {
                            //for update
                            url = "Insuranceupdate.jsp";
                            data = $("#clientForm").serialize() + "&ClientId=" + ClientId;
                            method = "POST";

                        }
                        $.ajax({
                            type: method,
                            url: url,
                            dataType: 'TEXT',
                            data: data,
                            success: function (data) {
                                alert("InsuranceAdded");
                                document.querySelector("#client").value = "";
                                document.querySelector("#StartingDate").value = "";
                                document.querySelector("#EndingDate").value = "";
                                document.querySelector("#ServiceType").value = "";

                            }
                        });
                        getData();
                    }

                    //delete
                    function deleteData(ClientId) {
                        $.ajax({
                            type: 'POST',
                            url: 'ClientDelete.jsp',
                            data: {"InsuranceId": ClientId},

                            success: function (data) {

                                getData();
                            }
                        });
                    }
                    
                    
                 //detail
                 
                 function getDitails(ClientId) {
                        isNew = false;
                        $.ajax({
                            type: "POST",
                            url: "listClient.jsp",
                            data: {"ClientId": ClientId},
                            success: function (data) {
//                            alert("loaded");

                                var obj = JSON.parse(data);
                                ClientId = obj.ClientId;

                                document.querySelector("#ClientName").value = obj.ClientName;
                                document.querySelector("#ClientDob").value = obj.ClientDob;
                                document.querySelector("#ClientPhone").value = obj.ClientPhone;
                                document.querySelector("#ClientCategory").value = obj.ClientCategory;


                            }
                        });
                    }

        </script>


                <%
            Staff staffSession = (Staff) session.getAttribute("staff");
            if (staffSession == null) {
                staffSession = new Staff();
                session.setAttribute("staff", staffSession);
            }
            if (staffSession.getStaffuser()== null) {
                session.invalidate();
                response.sendRedirect("index.jsp");
            }
        %>   
    
         

</section>
<!--==============================
              footer
=================================-->

<footer id="footer">
  <div class="container-fluid padding">
    <div class="row">
      <div class="grid_12"> 
        <div class="copyright"><span class="brand">Stable</span> &copy; <span id="copyright-year"></span> | <a href="#">Privacy Policy</a>
          <div class="sub-copy">Website designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster.com</a></div>
        </div>
      </div>
    </div>
  </div>  
</footer>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>

</body>
</html>