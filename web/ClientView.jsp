<%-- 
    Document   : ClientView
    Created on : Apr 20, 2021, 9:52:40 AM
    Author     : Win 10
--%>
<%@page import="Models.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="Dao.GeneralDao"%>
<%@page import="Models.Client"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>AddClient</title>

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
            $(window).load(function () {
                $().UItoTop({easingType: 'easeOutQuart'});
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
                                        <li><a href="home.jsp">Home</a></li>
                                        <li><a href="about.html">About</a></li>
                                        <li><a href="services.html">Services</a></li>
                                        <li><a href="blog.html">Blog</a></li>
                                        <li><a href="logout.jsp">LogOut</a></li>
                                        <li class="current"><a href="contacts.html">Contacts</a></li>
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
        <section id="content">

            <div class="row">
                <div class="col-sm-4">

                    <form id="clientForm"action="saveclient.jsp" method="POST">
                        <div class="form-group row">
                            <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm m-1">ClientName</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control form-control-sm" required="" id="ClientName" name="ClientName">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm m-1">ClientDob</label>
                            <div class="col-sm-7">
                                <input type="date" class="form-control form-control-sm" required="" id="ClientDob" name="ClientDob">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm m-1">ClientPhone</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control form-control-sm" required="" id="ClientPhone" name="ClientPhone" pattern="07[2,3,8]?\d{7}$">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm m-1">ClientCategory</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control form-control-sm" id="ClientCategory" name="ClientCategory">
                            </div>
                        </div>

                    </form>
                    <div class="form-group col-sm-11" onclick="addClient()" align="right" >
                        <button type="submit" class="btn btn-outline-success m-3">Save</button>                 

                    </div> 
                </div>
            </div> 


            <table id="clientTB" class="table table-hover table-light">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">ClientName</th>
                        <th scope="col">ClientDoB</th>
                        <th scope="col">ClientPhone</th>
                        <th scope="col">ClientCategory</th>
                        <th scope="col">Delete</th>
                        <th scope="col">Update</th>
                    </tr>
                </thead>
            </table> 
            <link href="mystyle.css" rel="stylesheet" type="text/css"/>
            <script src="jquery/jquery.js" type="text/javascript"></script>
            <script src="jquery/jquery.min.js" type="text/javascript"></script>
            <script src="jquery/jquery.validate.min.js" type="text/javascript"></script>
            <script src="DataTables/datatables.min.js" type="text/javascript"></script>

            <script>
                        //var ClientId = null;
                        var isNew = true;
                        var cl;
                        function getData() {

                            $('#clientTB').dataTable().fnDestroy();
                            $.ajax({
                                url: "listClient.jsp",
                                type: 'GET',
                                dataType: 'JSON',
                                success: function (data) {
                                    console.log("data" + data);


                                    $('#clientTB').dataTable({
                                        "aaData": data,
                                        "scrollx": true,
                                        "aoColumns": [
                                            {"sTitle": "#", "mData": "ClientId"},
                                            {"sTitle": "ClientName", "mData": "ClientName"},
                                            {"sTitle": "ClientDoB", "mData": "ClientDob"},
                                            {"sTitle": "ClientPhone", "mData": "ClientPhone"},
                                            {"sTitle": "ClientCategory", "mData": "ClientCategory"},
                                            {
                                                "sTitle": "Edit",
                                                "mData": "ClientId",
                                                "render": function (mData)
                                                {
                                                    return '<button class="btn btn-sm btn-icon btn-pure btn-default on-default m-r-5 button-delete bg-success" onclick="getDitails(' + mData + ')" style="color:#fff;">update</button>';
                                                }
                                            },
                                            {
                                                "sTitle": "Delete",
                                                "mData": "ClientId",
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

                        function addClient() {


                            var url = "";
                            var method = "";
                            var data = "";
                            if (isNew === true) {
                                url = "saveclient.jsp";
                                method = "POST";
                                data = $("#clientForm").serialize();
                            } else {
                                //for update
                                url = "Clientupdate.jsp";
                                data = $("#clientForm").serialize() + "&ClientId=" + cl;
                                method = "POST";
                                

                            }
                            $.ajax({
                                type: method,
                                url: url,
                                dataType: 'TEXT',
                                data: data,
                                success: function (data) {
                                    alert("clientAdded");
                                    document.querySelector("#ClientName").value = "";
                                    document.querySelector("#ClientDob").value = "";
                                    document.querySelector("#ClientPhone").value = "";
                                    document.querySelector("#ClientCategory").value = ""
                                    getData();
                                }
                            });
                            
                        }

                        //delete
                        function deleteData(ClientId) {
                            $.ajax({
                                type: 'POST',
                                url: 'ClientDelete.jsp',
                                data: {"ClientId": ClientId},

                                success: function (data) {
                                    console.log(ClientId);
                                    getData();
                                }
                            });
                        }

                        function getDitails(ClientId) {
                            isNew = false;
                            $.ajax({
                                type: "POST",
                                url: "retriveClient.jsp",
                                data: {"ClientId": ClientId},
                                success: function (data) {
                                    //                            alert("loaded");

                                    var obj = JSON.parse(data);
                                    cl = obj.ClientId;

                                    document.querySelector("#ClientName").value = obj.ClientName;
                                    document.querySelector("#ClientDob").value = obj.ClientDob;
                                    document.querySelector("#ClientPhone").value = obj.ClientPhone;
                                    document.querySelector("#ClientCategory").value = obj.ClientCategory;


                                }
                            });
                        }

            </script>



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