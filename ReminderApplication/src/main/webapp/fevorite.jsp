<!DOCTYPE html>
<html lang="en">
<head>
<link rel = "icon" href = "image/icon/reminderlogo.png"  type = "image/x-icon">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    

    <!-- Website Title -->
    <title>Fevorite </title>
    
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
	border-radius:10px;
	
}

th,
td {
	padding: 15px;
	background-color: #F3F7FD;
	color: #fff;
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
    

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
        <div class="container">
 
            
         <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="home.jsp">HOME <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="notes.jsp">NOTES</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="fevorite.jsp">FEVORITE</a>
                    </li>
						
						    <li class="nav-item">
                        <a class="nav-link page-scroll" href="view.jsp">VIEW</a>
                    </li>
						
						    <li class="nav-item">
                        <a class="nav-link page-scroll" href="image.jsp">IMAGE</a>
                    </li>
						
                    

                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="alram.jsp">ALARM</a>
                    </li>
                </ul>
             
            </div>
        </div>
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->


   

             


    <!-- Header -->
    <header id="header" class="ex-2-header">
       <div class="container">
    
 <table  >  
			 
			<tr><th>Fevorite List</th><th>Like</th></tr>  
			
			<c:forEach items="${list}" var="u">  
			
			<tr><td>${u.getlist()}</td><td><img src="image/love.png" width="25" height="25"alt="heart"></td></tr>   
			
			 
			</c:forEach>  
			
			</table> 
	
</div>
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