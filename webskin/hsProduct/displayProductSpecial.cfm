<cfsetting enablecfoutputonly="true">
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfset qProductFeatures = application.fapi.getContentObjects(typename="hsProduct")/>
<cfoutput>
<!-- Specials -->
<div class="row products-row sidebar-box orange">
     
    <div class="col-lg-12 col-md-12 col-sm-12">
        
        <!-- Carousel Heading -->
        <div class="carousel-heading no-margin">
            
            <h4><i class="icons icon-magic"></i> Specials</h4>
            <div class="carousel-arrows">
                <i class="icons icon-left-dir"></i>
                <i class="icons icon-right-dir"></i>
            </div>
            
        </div>
        <!-- /Carousel Heading -->
        
    </div>
    
    <!-- Carousel -->
    <div class="carousel owl-carousel-wrap col-lg-12 col-md-12 col-sm-12">
        
        <div class="owl-carousel" data-max-items="1">
            <cfloop query="qProductFeatures">
                <skin:view typename="hsProduct" webskin="displayProductCard" objectid="#qProductFeatures.objectid#"/>
            </cfloop>
        </div>
    
    </div>
    <!-- / Carousel -->
    
    
</div>
<!-- /Specials -->
</cfoutput>
<cfsetting enablecfoutputonly="false">