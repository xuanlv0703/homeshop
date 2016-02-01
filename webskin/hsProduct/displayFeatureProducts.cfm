<cfsetting enablecfoutputonly="true">
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfset qProductFeatures = application.fapi.getContentObjects(typename="hsProduct")/>
<cfoutput>
<!-- Featured Products -->
<div class="products-row row">
    
    <!-- Carousel Heading -->
    <div class="col-lg-12 col-md-12 col-sm-12">
        
        <div class="carousel-heading">
            <h4>Featured Products</h4>
            <div class="carousel-arrows">
                <i class="icons icon-left-dir"></i>
                <i class="icons icon-right-dir"></i>
            </div>
        </div>
        
    </div>
    <!-- /Carousel Heading -->
    
    <!-- Carousel -->
    <div class="carousel owl-carousel-wrap col-lg-12 col-md-12 col-sm-12">
        <div class="owl-carousel" data-max-items="3">
            <cfloop query="qProductFeatures">
                <skin:view typename="hsProduct" webskin="displayProductCard" objectid="#qProductFeatures.objectid#"/>
            </cfloop>
        </div>
    </div>
    <!-- /Carousel -->
</div>
<!-- /Featured Products -->
</cfoutput>
<cfsetting enablecfoutputonly="false">