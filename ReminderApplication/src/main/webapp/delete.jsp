
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3305/";
String database = "reminder";
String userid = "root";
String password = "gowtham";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel = "icon" href = "image/icon/reminderlogo.png"  type = "image/x-icon">

    <style>


.container {

	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
position: absolute;
top:30%;
left:20;
	width: 25%;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
	border-radius:10px;
	
}

th,
td {
	padding: 15px;
	background-color: #F3F7FD;
	color: #5F4DEE;
}

th {
	text-align: center;
	color:rgb(95,77,238);
}

thead {
	th {
		background-color: red;
	}
}

tbody {
	tr {
		&:hover {
			background-color: rgba(255,255,255,0.3);
		}
	}
	td {
	
		position: relative;
		&:hover {
			&:before {
				content: "";
				position: absolute;
				left: 0;
				right: 0;
				top: -9999px;
				bottom: -9999px;
				background-color: rgb(243,247,253);
				z-index: -1;
			}
		}
	}
}
</style>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    

    <!-- Website Title -->
    <title>Image</title>
    
    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700&display=swap&subset=latin-ext" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
	<link href="css/magnific-popup.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	
	<!-- Favicon  -->
    <link rel="icon" href="images/favicon.png">
    
    <style>


.container {

	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	width: 100%;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
	radius:10px;
	
}

th,
td {
	padding: 15px;
	background-color: #F3F7FD;
	color: #5F4DEE;
}

th {
	text-align: center;
	color:rgb(95,77,238);
}

thead {
	th {
		background-color: red;
	}
}

tbody {
	tr {
		&:hover {
			background-color: rgba(255,255,255,0.3);
		}
	}
	td {
	
		position: relative;
		&:hover {
			&:before {
				content: "";
				position: absolute;
				left: 0;
				right: 0;
				top: -9999px;
				bottom: -9999px;
				background-color: rgb(243,247,253);
				z-index: -1;
			}
		}
	}
}
</style>
    
    
</head>
<body data-spy="scroll" data-target=".fixed-top">
    
    <!-- Preloader -->
	<div class="spinner-wrapper">
        <div class="spinner">
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div>
    </div>
    <!-- end of preloader -->
    

 


   

             


    <!-- Header -->
    <header id="header" class="ex-2-header">
   
    <h1>Delete</h1>
    
<table >
<tr>
<td>email</td>
<td>password</td>
<td>repassword</td>
<td>image</td>
<td>note</td>
<td>time</td>
<td>Delete</td>
</tr>




<%String name=(String)session.getAttribute("email");   %>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql =("select * from user where email='"+name+"' ");
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("password") %></td>
<td><%=resultSet.getString("repassword") %></td>
<td><%=resultSet.getString("image") %></td>
<td><%=resultSet.getString("note") %></td>
<td><%=resultSet.getString("time") %></td>
<td><a href="primedelete.jsp?email=<%=resultSet.getString("email") %>"><div class="form-group">
                                <button type="submit" class="form-control-submit-button">LOG OUT</button>
                            </div></a></td></tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<%@page import="login.LoginDao"%>  
<jsp:useBean id="obj" class="login.User"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=LoginDao.validate(obj);  
if(status){  

session.setAttribute("session","TRUE");

String redirectURL = "primedelete.jsp";
session.setAttribute("email",obj.getemail());

response.sendRedirect(redirectURL);


}  
%>




       
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