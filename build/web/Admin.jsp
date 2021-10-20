
<%@page import="Models.Staff"%>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
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
<link href="bootstrap-5.0.0-beta3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="mystyle.css" rel="stylesheet" type="text/css"/>
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
<body class="page1" id="top">
        
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
               <li class="current"><a href="home.jsp">Home</a></li>
               <li><a href="ClientView.jsp">Clients</a></li>
               <li><a href="Ensurance.jsp">Insurance</a></li>
               <li><a href="services.jsp">Insurance-Services</a></li>
               <li><a href=" ">Insurance-Payment</a></li>
               
               <li><a class="btn btn-primary" href="logout.jsp" role="button">LogOut</a></li>
               
             </ul>
            </nav>
            <div class="clear"></div>
          </div>       
         <div class="clear"></div>  
        </div>
     </div> 
    </div> 
  </section>
    

<!--=====================
          Content
======================-->
<section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - July 28, 2014!</div>
  <div class="container">
    <div class="row">
      <div class="grid_10 preffix_1 ta__center">
        <div class="greet">
          <h2 class="head__1">
            Administrator
          </h2>
         
        </div>
      </div>
    </div>
  </div>
  
  </article>
  <div class="container">
    <div class="row">
      <div class="grid_5">
        <h4>About Company</h4>
        <img src="images/page1_img3.jpg" alt="" class="img_inner fleft">
          <p>Curabitur vel lorem sit amet nulla ullamcorper fermentum In vitae dert arius augue, eu consectetur </p>
          <p class="offset__1">Eligulaam dui eros dertolisce dertolo adipiscing quam id risus sagittis</p>
          Curabitur vel lorem sit amet nulla ullamcorper fermentum In vitae dert rius augue, eu consectetur larem dui eros dertolisce dertolo 
      </div>
      <div class="grid_4">
        <h4>Solutions</h4>
        <ul class="list-1">
          <li><a href="#">Vivamus at magna non nunc tristique </a></li>
          <li><a href="#">Aliquam nibh ante, egestas id</a></li>
          <li><a href="#">Ommodo luctus libero</a></li>
          <li><a href="#">Faucibus malesuada faucibusonec </a></li>
          <li><a href="#">Laoreet metus id laoreet</a></li>
          <li><a href="#">Jalesuadaorem ipsum dolor sit ame</a></li>
        </ul>
      </div>
      <div class="grid_3">
        <h4>Contact Info</h4>
        <address>
          <ul class="cont_address">
            <li>8901 Marmora Road, Glasgow, D04 89GR</li>
            <li>+1 (800) 123 9876</li>
            <li><a href="#">info@demolink.org</a></li>
            <li><a href="#">www.demolink.org</a></li>
          </ul>
        </address>
      </div>
    </div>
  </div>
</section>
<!--==============================
              footer
=================================-->
<footer id="footer">
  <div class="container">
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