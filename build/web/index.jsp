<%-- 
    Document   : index
    Created on : May 1, 2021, 4:26:27 PM
    Author     : Win 10
--%>

<%@page import="Models.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-5.0.0-beta3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="LoginForm.css" rel="stylesheet" type="text/css"/>
        <title>GO-Insurance</title>

        <meta charset="utf-8">

    </head>
    <body>

        <div class="login">
            <div class="header">
                <p>ACCOUNT LOGIN</p>
            </div>
            <div class="body">
                <form class="form-auth-small" action="login.jsp" method="POST" id="myform">
                    <div class="form-group">
                        <label for="signin-email" class="control-label sr-only">User-Name</label>
                        <input type="email" required="" name="userName" class="form-control" id="signin-email" value="" placeholder="eg. auca@domain.com">
                        <p id="errors" style="color:red;"></p>
                    </div>
                    <div class="form-group">
                        <label for="signin-password" class="control-label sr-only">Password</label>
                        <input type="password" required="" name="password" class="form-control" id="signin-password" value="" placeholder="Password">
                        <p id="error" style="color:red;"></p>
                    </div>
                    <div class="form-group clearfix">
                        <label class="fancy-checkbox element-left">
                            <input type="checkbox">
                            <span style="color: #ffffff;">Remember me</span>
                        </label>								
                    </div>
                    <button type="submit" class="btn btn-outline-success btn-lg btn-block m-4" id="login">LOGIN</button>
                    <div class="bottom">
                        <span class="helper-text m-b-10"><i class="fa fa-lock"></i> <a href="page-forgot-password.html">Forgot password?</a></span>
                        <span>Don't have an account? <br><a href="home.html">Back</a></span>
                    </div>
                </form>
            </div>
        </div>


    </body>
    
    <script>
        function validate(email){
            var re=/\S+@\S+.\S+/;
            return re.test(email)
        }
        let pwd=document.querySelector('#signin-password');
        let btn=document.querySelector('#login');
        let error=document.querySelector('#error');
        let errors=document.querySelector('#errors');
        let form=document.querySelector('#myform')
        btn.addEventListener("click", (e)=>{
            e.preventDefault();
            let pwdValue=pwd.value;
            if(pwdValue.length<6){
                error.innerHTML="password must be 6 char";
                
            }
            
            let email=document.querySelector('#signin-email');
            emvalue=email.value;
            if(emvalue.length<3){
               errors.innerHTML="email cant be empty"; 
            }
            
            if(!validate(emvalue)){
                errors.innerHTML="invalid email";
            }
            
            form.submit();
            
        })
        
    </script>
</html>