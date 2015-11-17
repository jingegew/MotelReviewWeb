<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<!-- Add the below

1. Yes/No : Entertainment
2. Entertainment - channels 
3. Cleaning
4. 

  -->


<title>Fodly Bites</title>

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
<script>
$(document).ready(function(){
    $("#RecommendYes").click(function(){
	
        $("#RecommendYesOptions").show();
		$("#submitButton").show();
		
    });
});
$(document).ready(function(){
    $("#RecommendYes").click(function(){
	
        $("#RecommendYesOptions").show();
		$("#submitButton").show();
		
    });
});
    </script>
	
    <script>
$(document).ready(function(){
    $("#submitName").click(function(){
    	 $("#services").hide();
        $("#RecommendDiv").show();
		
    });
});
</script>




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

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="hidden"><a href="#page-top"></a></li>
					<li><a class="page-scroll" href="#services">Welcome</a></li>
					<li><a class="page-scroll" href="#contact">Services</a></li>
					<li><a class="page-scroll" href="#portfolio">Portfolio</a></li>
					<li><a class="page-scroll" href="#about">About</a></li>
					<li><a class="page-scroll" href="#team">Team</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!-- Header -->
	<header>
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in">Welcome To Super8!</div>
				<div class="intro-heading">It's Nice To Have You</div>
				
			</div>
		</div>
		
		
	</header>
	<form:form method="POST" action="/MotelReviewWeb/addReview" autocomplete="off">
		<!-- Contact Section -->
		<section id="services" style="background-image: url(resources/img/Super8ImageBackground.jpg); height:100%; background-repeat: no-repeat;background-position: center;
 background-size:cover;height:100vh;">
			<div class="container" id="servicesContainer" ng-app="" >
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2 class="section-heading" style="margin-top:1cm">Hi {{name}}</h2>
						
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6" align=center>
							
							
								<div class="form-group" >
									<input   type="text" id="firstName"  ng-model="name"  align=center class="form-control"
										placeholder="First Name" required
										data-validation-required-message="Please enter your first name" />
									<p class="help-block text-danger"></p>
								</div>
								
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Last Name" id="name" required
										data-validation-required-message="Please enter your last name">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Room Number" id="email" required
										data-validation-required-message="Please enter the room number you stayed in..">
									<p class="help-block text-danger"></p>
								</div>
								
								<div class="form-group">
									<input type="tel" class="form-control" placeholder="Phone"
										id="phone"
										data-validation-required-message="Please enter your phone number.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="email" class="form-control"
										placeholder="Email" id="email"
										data-validation-required-message="Please enter your room number.">
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-lg-12 text-center">
								<div id="success"></div>
								<button type="submit"  id="submitName" class="btn btn-danger" style="margin-bottom:2cm; margin-top:1cm">Continue</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Contact Section -->
		<section id="about" style="margin-top:3cm" style="height:100vh">
			<div class="ViewPortcontainer" id="RecommendDiv" ng-app="" >
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2 class="section-heading" style="margin-top:1cm">Thank you...</h2>
						<h3 class="section-subheading text-muted" style="margin-bottom:1cm">Did you like the
							stay?</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-md-6" >
								<div class="team-member" align=center>
								<input type="image" src="resources/img/yes.jpg" name="RecommendYes" class="btTxt submit" id="RecommendNo" height=160px width=160px"/>
									
								</div>
							</div>
							<div class="col-md-6">
								<div class="team-member"   align=center style="margin-top:0.4cm">
								
								<input type="image" src="resources/img/NoRoundPic.png" name="RecommendNo" class="btTxt submit" id="RecommendNo" height=160px width=160px"/>
								
									
										
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Team Section -->
		<section id="team" class="bg-light-gray" id="RecommendYesOptions" >
			<div class="container" align=center>	
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2 class="section-heading" style="margin-top:2cm;margin-bottom:1cm">Thank You!</h2>
						<h3 class="section-subheading text-muted" style="margin-bottom:2cm">What services did you like?</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4">
						<div class="team-member">
						
						<input id="r1" type="radio" name="RoomConditionRadio" class="radio4" />
<label for="r1" style=" font-weight:normal;">Good &nbsp;</label>
<input id="r2" type="radio" name="RoomConditionRadio" class="radio4" />
<label for="r2" style="font-weight:normal;">Bad</label>	
	<h4>
                    
							<label style="margin-top:0.5cm"><img src="resources/img/bed.png" class="img-responsive img-circle"  style="height:160px;width:160px" alt=""></label>
							</h4><h4 >Room Condition\Facilities</h4>
							<ul class="list-inline social-buttons">
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="team-member">
						<input id="r3" type="radio" name="BreakFastRadio" class="radio4" />
<label for="r3" style=" font-weight:normal;">Good &nbsp;</label>
<input id="r4" type="radio" name="BreakFastRadio" class="radio4" />
<label for="r4" style="font-weight:normal;">Bad</label>	
						<h4>							
					<label style="margin-top:0.5cm">	<img src="resources/img/breakfast.png" class="img-responsive" style="height:160px;width:160px"  alt=""></label>
							</h4>
							<h4>BreakFast</h4>
							<ul class="list-inline social-buttons">
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="team-member">
					<input id="r5" type="radio" name="ACRadio" class="radio4" />
<label for="r5" style=" font-weight:normal;">Good &nbsp;</label>
<input id="r6" type="radio" name="ACRadio" class="radio4" />
<label for="r6" style="font-weight:normal;">Bad</label>	
						<h4>					
						<label style="margin-top:0.5cm">	<img src="resources/img/AirConditioning.png" class="img-responsive" style="height:160px;width:160px" alt=""></label>
							</h4>	
							<h4>AC</h4>
							<ul class="list-inline social-buttons">
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row" style="margin-top:1cm;	">
					<div class="col-sm-4">
						<div class="team-member">
						<input id="r7" type="radio" name="ParkingRadio" class="radio4" />
<label for="r7" style=" font-weight:normal;">Good &nbsp;</label>
<input id="r8" type="radio" name="ParkingRadio" class="radio4" />
<label for="r8" style="font-weight:normal;">Bad</label>	
<h4>
							<label  ><img src="resources/img/FreeParking.png" class="img-responsive" style="height:160px;width:160px"
								alt=""></label>
								</h4>
							<h4>Parking</h4>
							<ul class="list-inline social-buttons">
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="team-member" >
						<input id="r9" type="radio" name="WIFIRadio" class="radio4" />
<label for="r9" style=" font-weight:normal;">Good &nbsp;</label>
<input id="r10" type="radio" name="WIFIRadio" class="radio4" />
<label for="r10" style="font-weight:normal;">Bad</label>
							
							<h4><label  ><img src="resources/img/WiFi.png" class="img-responsive" style="height:160px;width:160px" alt="">
							</label>
							</h4><h4>WiFi</h4>
							<ul class="list-inline social-buttons">
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="team-member">
						<input id="r11" type="radio" name="LocationRadio" class="radio4" />
<label for="r11" style=" font-weight:normal;">Good &nbsp;</label>
<input id="r12" type="radio" name="LocationRadio" class="radio4" />
<label for="r12" style="font-weight:normal;">Bad</label>

<h4><label >	<img src="resources/img/locationround.png" class="img-responsive" style="height:160px;width:160px"
								alt=""></label>
								</h4>
							<h4>Location</h4>
							<ul class="list-inline social-buttons">
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 text-center">
						<p class="large text-muted"></p>
					</div>
				</div>
			</div>
		</section>
		
		<section id="team-No-Recommendation" class="bg-light-gray" id="RecommendNoOptions"  style="display: none;">
			<div class="container" align=center>
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2 class="section-heading" style="margin-top:2cm;">Sorry to hear that.. </h2>
						<h3 class="section-subheading text-muted" style="margin-top:1cm;margin-bottom:2cm">Please let us know the services that bothered you and can be improved. Your feedback is extremely valuable to us.</h3>
					</div>	
				</div>
				<div class="row">
					<div class="col-sm-4">
						<div class="team-member">
						<h4><input type="checkbox"   id="RecoNoBedCheck" name="RecoNoBedCheck" value="0" align=center />&nbsp;</h4>
                    
						<label for=	"RecoNoBedCheck">	<img src="resources/img/bed.png" style="height:160px;width:160px" class="img-responsive" alt=""></label>
						<h4>Room Facilities</h4>
							<ul class="list-inline social-buttons">
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="team-member">
						<h4><input type="checkbox"   id="RecoNoBreakFastCheck" name="RecoNoBreakFastCheck" value="0" align=center />&nbsp;</h4>
                    
						<label for=	"RecoNoBreakFastCheck">		<img src="resources/img/breakfast.png" style="height:160px;width:160px" class="img-responsive"
								alt=""> </label>
							<h4>BreakFast</h4>
							<ul class="list-inline social-buttons">
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="team-member">
						<h4><input type="checkbox"   id="RecoNoACCheck" name="RecoNoACCheck" value="0" align=center />&nbsp;</h4>
                    
								<label for=	"RecoNoACCheck">	<img src="resources/img/AirConditioning.png" style="height:160px;width:160px" class="img-responsive" alt=""></label>
							<h4>AC</h4>
							<ul class="list-inline social-buttons">
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4">
						<div class="team-member">
						<h4><input type="checkbox"   id="RecoNoParkingCheck" name="RecoNoParkingCheck" value="0" align=center />&nbsp;</h4>
                    
								<label for=	"RecoNoParkingCheck">	<img src="resources/img/FreeParking.png" style="height:160px;width:160px"  class="img-responsive"
								alt=""></label>
							<h4>Parking</h4>
							<ul class="list-inline social-buttons">
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="team-member">
						<h4><input type="checkbox"   id="RecoNoWiFiCheck" name="RecoNoWiFiCheck" value="0" align=center />&nbsp;</h4>
                    
							<label for=	"RecoNoWiFiCheck"><img src="resources/img/WiFi.png" style="height:160px;width:160px" class="img-responsive" alt=""></label>
							<h4>WiFi</h4>
							<ul class="list-inline social-buttons">
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="team-member">
						<h4><input type="checkbox"   id="RecoNoLocationCheck" name="RecoNoLocationCheck" value="0" align=center />&nbsp;</h4>
                    
							<label for=	"RecoNoLocationCheck"><img src="resources/img/locationround.png" style="height:160px;width:160px" class="img-responsive"
								alt=""></label>
							<h4>Location</h4>
							<ul class="list-inline social-buttons">
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				
			</div>
		</section>

		<!-- Contact Section -->
		<section id="about">
			<div class="container" style="margin-top:1.5cm">
				<div class="row-fluid">
					<div class="col-lg-12" >
						<h3 class="section-heading" >Other Comments</h3>
						
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="row"  >
							
							<div class="col-md-6">
								<div class="form-group">
									<textarea class="form-control" placeholder="reivew here"
										id="message" style=height:100px;width:70%""
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
			<div class="container" >
				<div class="row">
					<div class="col-lg-12 text-center">
						<div id="success"></div>
						<button type="submit" class="btn btn-info btn-lg" style="margin-top:1cm;margin-bottom:2cm">Submit</button>
					</div>
				</div>
			</div>
		</section>
	</form:form>
	<!-- Clients Aside -->
	<!--  Not implemented now. 
	<aside class="clients">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<a href="#"> <img src="resources/img/logos/"
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

	-->
	<footer align=center>
		<div class="container" >
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
		
		<script>
		var viewportHeight = "height:" + document.documentElement.clientHeight; 

		document.getElementById('RecommendDiv').setAttribute('style', viewportHeight);
		</script>
</body>
</html>