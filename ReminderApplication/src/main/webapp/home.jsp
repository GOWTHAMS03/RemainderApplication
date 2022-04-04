<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="icon" href="image/icon/reminderlogo.png" type="image/x-icon">



<!-- Website Title -->
<title>Home</title>

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
				<span class="nav-item"> <a class="btn-outline-sm"
					href="login.jsp">LOG IN</a>
				</span>
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
					<div
						style="position: relative; left: 55px; top: -48px; font-weight: bold; font-size: 20px;">




						<%
						String name = (String) session.getAttribute("email");
						%>

						<h1 style="font-size: 60px; text-align: center;">
							WELCOME

							<%
						String[] e = name.split("@gmail.com");
						for (String email : e)
							out.print(email.toUpperCase());
						%>

						</h1>

					</div>
					<div class="image-container" style="position: relative; top: 17%;">
						<div class="img-wrapper">
							<img class="img-fluid" src="image/undraw_feeling_proud_qne1.svg"
								alt="alternative" width="500" height="500" rotate="90">
						</div>
						<!-- end of img-wrapper -->
					</div>



				</div>
				<!-- end of col -->
			</div>
			<!-- end of row -->
			<svg class="footer-frame" data-name="Layer 2"
				xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="none"
				viewBox="0 0 1920 79">
				<defs>
				<style>
.cls-2 {
	fill: #5f4def;
}
</style></defs>
				<title>footer-frame</title><path class="cls-2"
					d="M0,72.427C143,12.138,255.5,4.577,328.644,7.943c147.721,6.8,183.881,60.242,320.83,53.737,143-6.793,167.826-68.128,293-60.9,109.095,6.3,115.68,54.364,225.251,57.319,113.58,3.064,138.8-47.711,251.189-41.8,104.012,5.474,109.713,50.4,197.369,46.572,89.549-3.91,124.375-52.563,227.622-50.155A338.646,338.646,0,0,1,1920,23.467V79.75H0V72.427Z"
					transform="translate(0 -0.188)" /></svg>
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