<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" href="image/icon/reminderlogo.png" type="image/x-icon">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">



<!-- Website Title -->
<title>Image</title>

<!-- Styles -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700&display=swap&subset=latin-ext"
	rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/fontawesome-all.css" rel="stylesheet">
<link href="css/swiper.css" rel="stylesheet">
<link href="css/magnific-popup.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!-- Favicon  -->
<link rel="icon" href="images/favicon.png">
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
	<nav
		class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
		<div class="container">



			<div class="collapse navbar-collapse" id="navbarsExampleDefault">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link page-scroll"
						href="home.jsp">HOME <span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link page-scroll"
						href="notes.jsp">NOTES</a></li>
					<li class="nav-item"><a class="nav-link page-scroll"
						href="fevorite.jsp">FEVORITE</a></li>

					<li class="nav-item"><a class="nav-link page-scroll"
						href="view.jsp">VIEW</a></li>

					<li class="nav-item"><a class="nav-link page-scroll"
						href="image.jsp">IMAGE</a></li>



					<li class="nav-item"><a class="nav-link page-scroll"
						href="alram.jsp">ALARM</a></li>
				</ul>

			</div>
		</div>
	</nav>
	<!-- end of navbar -->
	<!-- end of navigation -->







	<!-- Header -->
	<header id="header" class="ex-2-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">

					<div class="form-container">
						<form action="imageprocess.jsp" method="post"  enctype='multipart/form-data'>
							
							<div class="form-group">

								<input type="file" name="image" >


							</div>

							<div class="form-group">
								<button type="submit" class="form-control-submit-button">Upload</button>
							</div>
							<div class="form-message">
								<div id="smsgSubmit" class="h3 text-center hidden"></div>
							</div>
						</form>
					</div>
					<!-- end of form container -->
					<!-- end of sign up form -->

				</div>
				<!-- end of col -->
			</div>
			<!-- end of row -->
		</div>
		<!-- end of container -->
	</header>
	<!-- end of ex-header -->
	<!-- end of header -->


	<!-- Scripts -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery for Bootstrap's JavaScript plugins -->
	<script src="js/popper.min.js"></script>
	<!-- Popper tooltip library for Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Bootstrap framework -->
	<script src="js/jquery.easing.min.js"></script>
	<!-- jQuery Easing for smooth scrolling between anchors -->
	<script src="js/swiper.min.js"></script>
	<!-- Swiper for image and text sliders -->
	<script src="js/jquery.magnific-popup.js"></script>
	<!-- Magnific Popup for lightboxes -->
	<script src="js/validator.min.js"></script>
	<!-- Validator.js - Bootstrap plugin that validates forms -->
	<script src="js/scripts.js"></script>
	<!-- Custom scripts -->
</body>
</html>