<cfsetting enablecfoutputonly="true">

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin">
<!--- params --->
<cfparam name="stObj.seoTitle" default="#stObj.label#">
<cfif NOT len(stObj.seoTitle)>
	<cfset stObj.seoTitle = stObj.label>
</cfif>
<cfparam name="stParam.pageTitle" default="#stObj.seoTitle#">

<cfoutput>
<!DOCTYPE html>

<html>

<head>

<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Title -->
<title>HomeShop - #stParam.pageTitle#</title>

<!-- Fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,900,700italic,500italic' rel='stylesheet' type='text/css'>

<!-- Stylesheets -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet" href="/css/perfect-scrollbar.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="/css/fontello.css">
<link rel="stylesheet" type="text/css" href="/css/settings.css" media="screen" />
<link rel="stylesheet" href="/css/animation.css">
<link rel="stylesheet" href="/css/owl.carousel.css">
<link rel="stylesheet" href="/css/owl.theme.css">
<link rel="stylesheet" href="/css/chosen.css">

<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<link rel="stylesheet" href="/css/ie.css">
<![endif]-->
<!--[if IE 7]>
<link rel="stylesheet" href="/css/fontello-ie7.css">
<![endif]-->

</head>


<body>

<!-- Container -->
<div class="container">

<!-- Header -->
<header class="row">
	
	<div class="col-lg-12 col-md-12 col-sm-12">
		
		<!-- Top Header -->
		<div id="top-header">
			
			<div class="row">
				
				<nav id="top-navigation" class="col-lg-7 col-md-7 col-sm-7">
					<ul class="pull-left">
						<li><a href="create_an_account.html">My Account</a></li>
						<li><a href="orders_list.html">List Order</a></li>
						<li><a href="order_info.html">Checkout</a></li>
						<li><a href="#application.fapi.getLink(alias="aboutus")#">About Us</a></li>
						<li><a href="#application.fapi.getLink(alias="contact")#">Contact</a></li>
					</ul>
				</nav>
				
				<nav class="col-lg-5 col-md-5 col-sm-5">
					<ul class="pull-right">
						<li class="purple"><a href="##"><i class="icons icon-user-3"></i> Login</a>
							<ul id="login-dropdown" class="box-dropdown">
								<li>
                                	<div class="box-wrapper">
                                        <h4>LOGIN</h4>
                                        <div class="iconic-input">
                                            <input type="text" placeholder="Username">
                                            <i class="icons icon-user-3"></i>
                                        </div>
                                        <div class="iconic-input">
                                            <input type="text" placeholder="Password">
                                            <i class="icons icon-lock"></i>
                                        </div>
                                        <input type="checkbox" id="loginremember"> <label for="loginremember">Remember me</label>
                                        <br>
                                        <br>
                                        <div class="pull-left">
                                            <input type="submit" class="orange" value="Login">
                                        </div>
                                        <div class="pull-right">
                                            <a href="##">Forgot your password?</a>
                                            <br>
                                            <a href="##">Forgot your username?</a>
											<br>
                                        </div>
                                        <br class="clearfix">
                                    </div>
									<div class="footer">
										<h4 class="pull-left">NEW CUSTOMER?</h4>
										<a class="button pull-right" href="create_an_account.html">Create an account</a>
									</div>
								</li>
							</ul>
						</li>
						<li><a href="##"><i class="icons icon-lock"></i> Create an Account</a></li>
					</ul>
				</nav>
				
			</div>
			
		</div>
		<!-- /Top Header -->
		
		
		
		<!-- Main Header -->
		<div id="main-header">
			
			<div class="row">
				
				<div id="logo" class="col-lg-4 col-md-4 col-sm-4">
					<a href="/"><img src="/img/logo.png" alt="Logo"></a>
				</div>
				
				<nav id="middle-navigation" class="col-lg-8 col-md-8 col-sm-8">
					<ul class="pull-right">
						<li class="blue">
							<a href="compare_products.html"><i class="icons icon-docs"></i>0 Items</a>
                        </li>
						<li class="red">
							<a href="wishlist.html"><i class="icons icon-heart-empty"></i>2 Items</a>
                        </li>
						<li class="orange"><a href="order_info.html"><i class="icons icon-basket-2"></i>17 Items</a>
                        	<ul id="cart-dropdown" class="box-dropdown parent-arrow">
								<li>
                                	<div class="box-wrapper parent-border">
                                        <p>Recently added item(s)</p>
                                        
                                        <table class="cart-table">
                                        	<tr>
                                        		<td><img src="/img/products/sample1.jpg" alt="product"></td>
                                                <td>
                                                    <h6>Lorem ipsum dolor</h6>
                                                    <p>Product code PSBJ3</p>
                                                </td>
                                                <td>
                                                	<span class="quantity"><span class="light">1 x</span> $79.00</span>
                                                    <a href="##" class="parent-color">Remove</a>
                                                </td>
                                            </tr>
                                            <tr>
                                        		<td><img src="/img/products/sample1.jpg" alt="product"></td>
                                                <td>
                                                    <h6>Lorem ipsum dolor</h6>
                                                    <p>Product code PSBJ3</p>
                                                </td>
                                                <td>
                                                	<span class="quantity"><span class="light">1 x</span> $79.00</span>
                                                    <a href="##" class="parent-color">Remove</a>
                                                </td>
                                            </tr>
                                            <tr>
                                        		<td><img src="/img/products/sample1.jpg" alt="product"></td>
                                                <td>
                                                    <h6>Lorem ipsum dolor</h6>
                                                    <p>Product code PSBJ3</p>
                                                </td>
                                                <td>
                                                	<span class="quantity"><span class="light">1 x</span> $79.00</span>
                                                    <a href="##" class="parent-color">Remove</a>
                                                </td>
                                            </tr>
                                        </table>
                                        
                                        <br class="clearfix">
                                    </div>
                                    
									<div class="footer">
										<table class="checkout-table pull-right">
                                        	<tr>
                                            	<td class="align-right">Tax:</td>
                                                <td>$0.00</td>
                                            </tr>
                                            <tr>
                                            	<td class="align-right">Discount:</td>
                                                <td>$37.00</td>
                                            </tr>
                                            <tr>
                                            	<td class="align-right"><strong>Total:</strong></td>
                                                <td><strong class="parent-color">$999.00</strong></td>
                                            </tr>
                                        </table>
									</div>
                                    
                                    <div class="box-wrapper no-border">
                                    	<a class="button pull-right parent-background" href="##">Checkout</a>
										<a class="button pull-right" href="order_info.html">View Cart</a>
                                    </div>
								</li>
							</ul>
                        </li>
					</ul>
				</nav>
				
			</div>
			
		</div>
		<!-- /Main Header -->
		
		
		<!-- Main Navigation -->
		<nav id="main-navigation" class="style1">
			<ul>
				
				<li class="home-green current-item">
					<a href="/">
						<i class="icons icon-shop-1"></i>
						<span class="nav-caption">Trang chủ</span>
						<span class="nav-description">DUTHU.VN</span>
					</a>
				</li>
				
				<li class="red">
					<a href="#application.fapi.getLink(alias="products")#">
						<i class="icons icon-clock-7"></i>
						<span class="nav-caption">Đồng hồ</span>
						<span class="nav-description">Nam & Nữ</span>
					</a>
				</li>
				
				<li class="blue">
					<a href="#application.fapi.getLink(alias="products")#">
						<i class="icons icon-tree-2"></i>
						<span class="nav-caption">Dầu dừa</span>
						<span class="nav-description">Tinh dầu dừa</span>
					</a>
				</li>
				
				
				<li class="green">
					<a href="#application.fapi.getLink(alias="blog")#">
						<i class="icons icon-pencil-7"></i>
						<span class="nav-caption">Tin tức</span>
						<span class="nav-description">Tin tức</span>
					</a>
				</li>

				<li class="orange">
					<a href="#application.fapi.getLink(alias="aboutus")#">
						<i class="icons icon-mobile-6"></i>
						<span class="nav-caption">Về chúng tôi</span>
						<span class="nav-description">Về chúng tôi</span>
					</a>
				</li>
				
				<li class="purple">
					<a href="#application.fapi.getLink(alias="contact")#">
						<i class="icons icon-location-7"></i>
						<span class="nav-caption">Liên hệ</span>
						<span class="nav-description">Góp ý & Liên hệ</span>
					</a>
				</li>
				
				<li class="nav-search">
                    <i class="icons icon-search-1"></i>
				</li>
				
			</ul>
			
			<form  action="#application.fapi.getLink(alias='search')#" method="get">
				<div id="search-bar">
					<div class="col-lg-12 col-md-12 col-sm-12">
	                	<table id="search-bar-table">
	                        <tr>
	                        	<td class="search-column-1">
	                                <input type="text" placeholder="Nhập thông tin tìm kiếm" name="q">
	                            </td>
	                        </tr>
	                    </table>
					</div>
					<div id="search-button">
						<input type="submit" value="">
						<i class="icons icon-search-1"></i>
					</div>
				</div>
			</form>

		</nav>
		<!-- /Main Navigation -->
	</div>
</header>
<!-- /Header -->
</cfoutput>
<cfsetting enablecfoutputonly="false">