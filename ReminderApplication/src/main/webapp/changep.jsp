<!DOCTYPE html>
<html lang="en">
<head>
<link rel = "icon" href = "image/icon/reminderlogo.png"  type = "image/x-icon">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
   

    <!-- Website Title -->
    <title>Log In </title>
    
    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700&display=swap&subset=latin-ext" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
	<link href="css/magnific-popup.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	
	
</head>
<body data-spy="scroll" data-target=".fixed-top">

   <%@page import="login.LoginDao"%>  
<jsp:useBean id="obj" class="login.User"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=LoginDao.validate(obj);  
if(status){  
out.println("Your successfully logged in");  
session.setAttribute("session","TRUE");

String redirectURL = "changePassword.jsp";
session.setAttribute("email",obj.getemail());
session.setAttribute("pass",obj.getpassword());
session.setAttribute("repass",obj.getrepassword());
response.sendRedirect(redirectURL);


}  
 
%>  
    <!-- Header -->
    <header id="header" class="ex-2-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Change Password</h1>
                   <p>Back to <a class="white" href="view.jsp">VIEW </a></p> 
                    <!-- Sign Up Form -->
                    <div class="form-container">
                        <form  data-toggle="validator" data-focus="false" action="changePassword.jsp" method="post">
                            <div class="form-group">
                                <input type="password" name="current" class="form-control-input" id="lemail">
                                <label class="label-control" for="lemail">CurrentPassword</label>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">
                                <input type="password" name="newpas" class="form-control-input" id="lpassword">
                                <label class="label-control" for="lpassword">NewPassword</label>
                                <div class="help-block with-errors"></div>
                            </div>
                                  <div class="form-group">
                                <input type="password" name="confirm" class="form-control-input" id="lpassword">
                                <label class="label-control" for="lpassword">ConfirmPassword</label>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="form-control-submit-button" >CHANGE PASSWORD</button>
                            </div>
                         
                            <div class="form-message">
                                <div id="lmsgSubmit" class="h3 text-center hidden"></div>
                            </div>
                        </form>
                    </div> <!-- end of form container -->
                    <!-- end of sign up form -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->


    <!-- Scripts -->
    <script src="js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="js/popper.min.js"></script> <!-- Popper tooltip library for Bootstrap -->
    <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
    <script src="js/validator.min.js"></script> <!-- Validator.js - Bootstrap plugin that validates forms -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
</body>
</html>