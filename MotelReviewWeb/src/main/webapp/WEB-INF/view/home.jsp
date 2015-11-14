<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Super 8 - Reviews</title>

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<link href="resources/css/bootstrap.css" rel="stylesheet">


</head>

<body id="page-top" class="index">

	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top">Super 8</a>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!-- Header -->
	<header>
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in">Welcome To Super 8!</div>
				<div class="intro-heading">It's Nice To Have You</div>
				<a href="#services" class="page-scroll btn btn-xl">Reviews </a>
			</div>
		</div>
	</header>
	<form:form method="POST" action="/MotelReviewWeb/addReview">
		<!-- Contact Section -->
		<section id="services">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2 class="section-heading">Your Info</h2>
						<h3 class="section-subheading text-muted">Leave us your info before leaving comments.</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" name="firstName" class="form-control" placeholder="First Name *" required data-validation-required-message="Please enter your first name." />
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Last Name *" name="lastName" required
										data-validation-required-message="Please enter your last name.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Room Number *" name="roomNumber" required
										data-validation-required-message="Please enter your room number.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="tel" class="form-control" placeholder="Your Phone"
										name="phone"
										data-validation-required-message="Please enter your phone number.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="email" class="form-control"
										placeholder="Your Email" name="email"
										data-validation-required-message="Please enter your email.">
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-lg-12 text-center">
								<div id="success"></div>
								<button class="btn btn-xl">Continue</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Contact Section -->
		<section id="about">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2 class="section-heading">Hello there!</h2>
						<h3 class="section-subheading text-muted">Did you like to stay?</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-sm-6">
								<div class="team-member">
									<img src="resources/img/yes.jpg"
										class="img-responsive img-circle" alt="">
									<h4>Yes</h4>
								<input type="radio" name="stay" value="1">
							</div>
							<div class="col-sm-6">
								<div class="team-member">
									<img src="resources/img/no.jpg"
										class="img-responsive img-circle" alt="">
									<h4>No</h4>
								<input type="radio" name="stay" value="0">									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Team Section -->
		<section id="team" class="bg-light-gray">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2 class="section-heading">Our Services</h2>
						<h3 class="section-subheading text-muted">Our amazing
							services.</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4">
						<div class="team-member">
							<img src="img/bed.jpg" class="img-responsive img-circle" alt="">
							<h4>Bed</h4>
							<ul class="list-inline social-buttons">
								<li><input type="radio" name="bed" value="Bad">Bad</li>
								<li><input type="radio" name="bed" value="Good">Good</li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="team-member">
							<img src="img/breakfast.jpg" class="img-responsive img-circle"
								alt="">
							<h4>Food</h4>
							<ul class="list-inline social-buttons">
								<li><input type="radio" name="food" value="Bad">Bad</li>
								<li><input type="radio" name="food" value="Good">Good</li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="team-member">
							<img src="img/AC.jpg" class="img-responsive img-circle" alt="">
							<h4>AC</h4>
							<ul class="list-inline social-buttons">
								<li><input type="radio" name="ac" value="Bad">Bad</li>
								<li><input type="radio" name="ac" value="Good">Good</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4">
						<div class="team-member">
							<img src="img/FreeParking.png" class="img-responsive img-circle"
								alt="">
							<h4>Free Parking</h4>
							<ul class="list-inline social-buttons">
								<li><input type="radio" name="parking" value="Bad">Bad</li>
								<li><input type="radio" name="parking" value="Good">Good</li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="team-member">
							<img src="img/WiFi.png" class="img-responsive img-circle" alt="">
							<h4>WiFi</h4>
							<ul class="list-inline social-buttons">
								<li><input type="radio" name="wifi" value="Bad">Bad</li>
								<li><input type="radio" name="wifi" value="Good">Good</li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="team-member">
							<img src="img/location.jpg" class="img-responsive img-circle"
								alt="">
							<h4>Location</h4>
							<ul class="list-inline social-buttons">
								<li><input type="radio" name="location" value="Bad">Bad</li>
								<li><input type="radio" name="location" value="Good">Good</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 text-center">
						<p class="large text-muted">We dedeciate to provide excellent
							services with affordable prices, your review will help us to
							improve.</p>
					</div>
				</div>
			</div>
		</section>

		<!-- Contact Section -->
		<section id="about">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2 class="section-heading">Your Comments</h2>
						<h3 class="section-subheading text-muted">We appreciate your
							any comments.</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6">
								<div class="form-group">
									<textarea class="form-control" placeholder="Your Comments *"
										name="review" required
										data-validation-required-message="Please enter a message."></textarea>
									<p class="help-block text-danger"></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section id="submit">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div id="success"></div>
						<button type="submit" class="btn btn-xl">Submit Your Reviews</button>
					</div>
				</div>
			</div>
		</section>
	</form:form>
	<!-- Clients Aside -->
	<aside class="clients">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<a href="#"> <img src="img/logos/envato.jpg"
						class="img-responsive img-centered" alt="">
					</a>
				</div>
				<div class="col-md-3 col-sm-6">
					<a href="#"> <img src="img/logos/designmodo.jpg"
						class="img-responsive img-centered" alt="">
					</a>
				</div>
				<div class="col-md-3 col-sm-6">
					<a href="#"> <img src="img/logos/themeforest.jpg"
						class="img-responsive img-centered" alt="">
					</a>
				</div>
				<div class="col-md-3 col-sm-6">
					<a href="#"> <img src="img/logos/creative-market.jpg"
						class="img-responsive img-centered" alt="">
					</a>
				</div>
			</div>
		</div>
	</aside>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<span class="copyright">Copyright &copy; Motel Reviews 2015</span>
				</div>
				<div class="col-md-4">
					<ul class="list-inline social-buttons">
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="list-inline quicklinks">
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms of Use</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<!-- Plugin JavaScript -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
</body>
</html>