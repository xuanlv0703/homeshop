<cfsetting enablecfoutputonly="true">
<cfset qBlogs = application.fapi.getContentObjects(typename="hsBlog",lProperties="objectid,title,teaser,imgTeaser,posteddatetime")/>
<cfoutput>
<div class="products-row row">
    <!-- Carousel Heading -->
    <div class="col-lg-12 col-md-12 col-sm-12">
        
        <div class="carousel-heading">
            <h4>Latest news &amp; Reviews</h4>
            <div class="carousel-arrows">
                <i class="icons icon-left-dir"></i>
                <i class="icons icon-right-dir"></i>
            </div>
        </div>
    </div>
    <!-- /Carousel Heading -->
   
    <!-- Carousel -->
    <div class="carousel owl-carousel-wrap col-lg-12 col-md-12 col-sm-12">
        <div class="owl-carousel" data-max-items="2">
        	<cfloop query="qBlogs">
        		<!-- Slide -->
	            <div>
	                <!-- Carousel Item -->
	                <article class="news">
	                    <div class="news-background">
	                        <div class="row">
	                            <div class="col-lg-6 col-md-6 col-sm-6 news-thumbnail">
	                                <a href="#application.fapi.getLink(typename="hsBlog",objectid="#qBlogs.objectid#")#"><img src="#qBlogs.imgTeaser#" alt="#qBlogs.title#"></a>
	                            </div>
	                            <div class="col-lg-6 col-md-6 col-sm-6 news-content">
	                                <h5><a href="#application.fapi.getLink(typename="hsBlog",objectid="#qBlogs.objectid#")#">#qBlogs.title#</a></h5>
	                                <span class="date"><i class="icons icon-clock-1"></i> #dateformat(qBlogs.posteddatetime,"dd/mm/yyyy")#</span>
	                                <p>#qBlogs.teaser#</p>
	                            </div>
	                        </div>
	                    </div>
	                </article>
	                <!-- /Carousel Item -->
	            </div>
	            <!-- /Slide -->
        	</cfloop>
        </div>
    </div>
    <!-- /Carousel -->
</div>
</cfoutput>
<cfsetting enablecfoutputonly="false">