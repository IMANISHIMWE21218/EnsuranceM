<%-- 
    Document   : services
    Created on : Apr 9, 2021, 3:44:40 PM
    Author     : Win 10
--%>

<%@page import="Models.Staff"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Add services</title>

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
        <link href="mystyle.css" rel="stylesheet" type="text/css"/>



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
         <section id="stuck_container">

        <div class="row">
            <div class="col-sm-4">
                <h1>service</h1>

                <form id="servicesForm" action="saveservices.jsp" method="POST">

                    <div class="form-group row">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm m-1">Service _type</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control form-control-sm"  name="ServiceType" id="ServiceType">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm m-1">Service_price</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control form-control-sm"  name="ServicePrice" id="ServicePrice">
                        </div>
                    </div>

                    <div class="form-group col-sm-11" onclick="" align="right" >
                        <button type="submit" class="btn btn-outline-success m-3">Save</button>                 

                    </div> 


                </form>
                
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