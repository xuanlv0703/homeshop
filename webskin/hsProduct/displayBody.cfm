<cfsetting enablecfoutputonly="true">
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=676235822503327&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfoutput>
<!-- Main Content -->
<!--- <section class="main-content col-lg-9 col-md-9 col-sm-9"> --->
	

    <div id="product-single">
	
		<!-- Product -->
		<div class="product-single">
			
			<div class="row">
				
				<!-- Product Images Carousel -->
				<div class="col-lg-5 col-md-5 col-sm-5 product-single-image">
					
					<div id="product-slider">
						<ul class="slides">
							<li>
								<skin:view typename="hsProductImage" objectid="#stobj.aAttachments[1]#" template="displayDetail" />
							</li>
						</ul>
					</div>
					<div id="product-carousel">
						<ul class="slides">
							<cfloop array="#stobj.aAttachments#" index="i">
								<skin:view typename="hsProductImage" objectid="#i#" template="displayDetailThumb" />
							</cfloop>
						</ul>
						<div class="product-arrows">
							<div class="left-arrow">
								<i class="icons icon-left-dir"></i>
							</div>
							<div class="right-arrow">
								<i class="icons icon-right-dir"></i>
							</div>
						</div>
					</div>
				</div>
				<!-- /Product Images Carousel -->
				
				
				<div class="col-lg-7 col-md-7 col-sm-7 product-single-info">
					
					<h2>#stobj.title#</h2>
					<table>
						<tr>
							<td>Availability</td>
							<td><span class="green">in stock</span> 20 items</td>
						</tr>
						<tr>
							<td>Product code</td>
							<td>PBS173</td>
						</tr>
					</table>
					
					<span class="price"><del>$381.00</del> $281.00</span>
					
					<table class="product-actions-single">
						<tr>
							<td>Color: Red, Blue</td>
						</tr>
						<tr>
							<td>Quantity:</td>
							<td>
								<div class="numeric-input">
									<input type="text" value="1">
									<span class="arrow-up"><i class="icons icon-up-dir"></i></span>
									<span class="arrow-down"><i class="icons icon-down-dir"></i></span>
								</div>
								<a href="##">
									<span class="add-to-cart">
										<span class="action-wrapper">
											<i class="icons icon-basket-2"></i>
											<span class="action-name">Add to cart</span>
										</span >
									</span>
								</a>
							</td>
						</tr>
					</table> 
					
					<div class="product-actions">
						<span class="add-to-favorites">
							<span class="action-wrapper">
								<i class="icons icon-heart-empty"></i>
								<span class="action-name">Add to wishlist</span>
							</span>
						</span>
						<span class="add-to-compare">
							<span class="action-wrapper">
								<i class="icons icon-docs"></i>
								<span class="action-name">Add to compare</span>
							</span>
						</span>
						<span class="green product-action">
							<span class="action-wrapper">
								<i class="icons icon-info"></i>
								<span class="action-name">Ask a question</span>
							</span>
						</span>
					</div>
					
					<div class="social-share">
						<div class="fb-share-button" data-href="##" data-type="button_count" style="margin-top:5px;"></div>
					</div>
					
				</div>
				
			</div>
			
		</div>
		<!-- /Product -->
		
		
		<!-- Product Tabs -->
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="tabs">
					<div class="tab-heading">
						<a href="##tab1" class="button big">Description</a>
						<a href="##tab2" class="button big">Comments</a>
					</div>
					<div class="page-content tab-content">
						<div id="tab1">
							#stobj.body#
						<!--- 	<p class="tags home-green"><strong>Tags:</strong> <a href="##" class="tag-item">digital camera</a>
							<a href="##" class="tag-item">lorem</a>
							<a href="##" class="tag-item">gps</a></p> --->
						</div>
						<div id="tab2">
							<div class="fb-comments" data-width="100%" data-href="#CGI.request_url#" data-numposts="10" data-colorscheme="light"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Product Tabs -->
	</div>
    
    
	<!-- Product related -->
	<skin:view typename="hsProduct" webskin="displayRandomProducts"/>
	<!-- /Product related -->
	
	
	<!-- Recently Viewed Products -->
	<skin:view typename="hsProduct" webskin="displayFeatureProducts"/>
	<!-- /Recently Viewed Products -->
	
	
<!--- </section> --->
<!-- /Main Content -->
</cfoutput>
<cfsetting enablecfoutputonly="false">