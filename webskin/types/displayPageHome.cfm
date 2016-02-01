<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Home Page --->
<!--- @@author: xuanlv--->
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<skin:view objectid="#stObj.objectid#" typename="#stObj.typename#" template="displayHeaderStandard" />
<cfoutput>

<div class="row content">
    <!-- Main Content -->
    <section class="main-content col-lg-9 col-md-9 col-sm-9 col-lg-push-3 col-md-push-3 col-sm-push-3">
        <skin:view typename="hsSlider" webskin="displaySlider"/>
		<skin:view typename="hsProduct" webskin="displayFeatureProducts"/>
		<skin:view typename="hsProduct" webskin="displayNewColections"/>
		<skin:view typename="hsProduct" webskin="displayRandomProducts"/>
		<skin:view typename="hsProduct" webskin="displayProductBrands"/>
    </section>
    <!-- /Main Content -->
    <!-- Sidebar -->
    <aside class="sidebar col-lg-3 col-md-3 col-sm-3  col-lg-pull-9 col-md-pull-9 col-sm-pull-9">
        <!-- Categories -->
        <skin:view typename="dmCategory" webskin="displayCategoryNav"/>
        <!-- /Categories -->
        <!-- Compare Products -->
        <div class="row sidebar-box blue">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="sidebar-box-heading">
                    <i class="icons icon-docs"></i>
                    <h4>Liên hệ quảng cáo</h4>
                </div>
                <div class="sidebar-box-content sidebar-padding-box">
                    <img src="/img/sidebar-slide1.jpg" alt="Slide1"/>
                </div>
            </div>
        </div>
        <!-- /Compare Products -->
        
        <!-- Carousel -->
        <div class="row sidebar-box">
            <div class="col-lg-12 col-md-12 col-sm-12 sidebar-carousel">
                <!-- Slider -->
                <section class="sidebar-slider">
                    <div class="sidebar-flexslider">
                        <ul class="slides">
                            <li>
                                <a href="http://duthu.vn/" target="_blank"><img src="/img/sidebar-slide1.jpg" alt="Slide1"/></a>
                            </li>
                            <li>
                                <a href="http://duthu.vn/" target="_blank"><img src="/img/sidebar-slide2.jpg" alt="Slide1"/></a>
                            </li>
                            <li>
                                <a href="http://duthu.vn/" target="_blank"><img src="/img/sidebar-slide3.jpg" alt="Slide1"/></a>
                            </li>
                        </ul>
                    </div>
                    <div class="slider-nav"></div>
                </section>
                <!-- /Slider -->
            </div>
        </div>
        <!-- /Carousel -->
        
        <!-- Bestsellers -->
        <skin:view typename="hsProduct" webskin="displayProductBestSeller"/>
        <!-- /Bestsellers -->
        
        <!-- Tag Cloud -->
        <div class="row sidebar-box green">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="sidebar-box-heading">
                    <i class="icons icon-tag-6"></i>
                    <h4>Tags Cloud</h4>
                </div>
                <div class="sidebar-box-content sidebar-padding-box">
                    <a href="http://duthu.vn/" class="tag-item" target="_blank">dongho</a>
                    <a href="http://duthu.vn/" class="tag-item" target="_blank">daudua</a>
                    <a href="http://duthu.vn/" class="tag-item" target="_blank">teen</a>
                    <a href="http://duthu.vn/" class="tag-item" target="_blank">donghocap</a>
                    <a href="http://duthu.vn/" class="tag-item" target="_blank">lamdep</a>
                    <a href="http://duthu.vn/" class="tag-item" target="_blank">tinhdau</a>
                </div>   
            </div>
        </div>
        <!-- /Tag Cloud -->
        
        <!-- Specials -->
        <skin:view typename="hsProduct" webskin="displayProductSpecial"/>
        <!-- /Specials -->
    </aside>
    <!-- /Sidebar -->
</div>
<!-- /Content -->

<!-- News -->
<skin:view typename="hsBlog" webskin="displayLastedBlog"/>
<!-- /News -->

<!-- Banner -->
<skin:view typename="#stobj.typename#" webskin="displayBanner"/>
<!-- /Banner -->

</cfoutput>

<skin:view objectid="#stObj.objectid#" typename="#stObj.typename#" template="displayFooterStandard" />

<cfsetting enablecfoutputonly="false">