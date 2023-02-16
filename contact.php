<?php session_start(); ?>
<?php include "header.php"; ?>	
	<!-- Start All Pages -->
		
		<img src="images/cn.png" width="100%">
	<!-- End All Pages -->
	
	<!-- Start Contact -->
	
	<div class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						
						
						<p>Our Main Goal is Client Satisfaction</p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<form  action="" method="post" autocomplete="off">
						<div class="row">
							<div class="col-md-12">
								<!-- <div class="form-group">
									<input type="text" class="form-control" id="id" name="id" placeholder="Your ID" required data-error="Please enter your ID">
									<div class="help-block with-errors"></div>
								</div>  -->
								<div class="form-group">
									<input type="text" class="form-control" id="name" name="name" placeholder="Your Name" required data-error="Please enter your name" pattern="[a-z,A-Z]*">
									<div class="help-block with-errors"></div>
								</div>                                
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="email" placeholder="Your Email" id="email" class="form-control" name="email" required data-error="Please enter your email">
									<div class="help-block with-errors"></div>
								</div> 
							</div>

							<div class="col-md-12">
								<div class="form-group">
									<input type="number" placeholder="Your Number" id="number" class="form-control" name="contact" required data-error="Please enter your Contact" pattern="\d{10}">
									<div class="help-block with-errors"></div>
								</div> 
							</div>
							
							<div class="col-md-12">
								<div class="form-group"> 
									<textarea class="form-control" id="message" placeholder="Your Message" rows="4" name="message" data-error="Write your message" required></textarea>
									<div class="help-block with-errors"></div>
								</div>
								<div class="submit-button text-center">
									<button name="sb" class="btn btn-common" id="submit" type="submit">Send Message</button>
									<div id="msgSubmit" class="h3 text-center hidden"></div> 
									<div class="clearfix"></div> 
								</div>
							</div>
						</div>            
					</form>
					<?php
					if(isset($_POST['sb']))
					{
						// $id = $_POST['id'];
						$name = $_POST['name'];
						$email = $_POST['email'];
						$contact = $_POST['contact'];
						$message = $_POST['message'];

						include "connect.php";
						mysqli_query($con,"insert into contact(name, email, contact, message) values('$name','$email','$contact', '$message')");
						echo "<h2 style='color:tomato; text-align:center;'>Your Query has been Processed!</h2>";
					}	

					?>

				</div>
			</div>
		
		</div>
	</div>




	<div class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Contact</h2>
						<p>Contact Information are Listed here... Thanks for Visit Our Site</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<form id="contactForm">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<h1 style="font-family: cambria; color: red; text-align: center;">Our CAFENE</h1>
									<div class="help-block with-errors"></div>
								</div>                                 
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<center><span style="color: tomato; font-size: 1.3em; text-align: center; "><b>Email Us :</b> patroanjali303@gmail.com</span></center>
									<div class="help-block with-errors"></div>
								</div> 
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<center><span style="color: tomato; font-size: 1.3em; text-align: center; "><b>Mobile  :</b> +91 703 0349 125</span></center>
									<div class="help-block with-errors"></div>
								</div> 
							</div>
							<div class="col-md-12">
								<div class="form-group"> 
									<center><span style="color: tomato; font-size: 1.3em; text-align: center; "><b>Location  :</b> West - Mumbai, Maharashtra, Pin - 401501</span></center>
									<div class="help-block with-errors"></div>
								</div>
								
							</div>
						</div>            
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact -->
<?php include "footer.php"; ?>