<cfoutput>
<div class="footer-container">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="footer">
					  <p id="back-top"><a href="##top"><span></span></a> </p>
						  <div class="footer-cols-wrapper">
								<div class="footer-col">			
									<h4>Information</h4>
									<div class="footer-col-content">
										<ul>
											<li><a href="">About Us</a></li>

										</ul>
										<ul class="links">
		                                	<li class=" last" ><a href="" title="Contact Us" >Contact Us</a></li>
		            					</ul>	
									</div>
								</div>
								<div class="footer-col">
									<h4>Admin Section</h4>
									<div class="footer-col-content">
										<ul>
											<cfif request.IsLogin AND request.user.r_Name eq 'Admin'>
												<li><a href="?pg=admin.category.view">Category</a></li>
												<li><a href="?pg=admin.product.view">Product</a></li>
												<li><a href="?pg=admin.logout">Logout</a></li>
												<cfelse>
													<li><a href="?pg=login">Login</a></li>			
											</cfif>
										</ul>
									</div>
								</div>
								<div class="footer-col">
								<h4>My account</h4>
									<div class="footer-col-content">
										<ul>
											<li><a href="?pg=home">Sign In</a></li>
										</ul>
									</div>
								</div>
								<div class="clear"></div>
						  </div>
				</div>
			</div>
		</div>
	</div>
</div>
</cfoutput>