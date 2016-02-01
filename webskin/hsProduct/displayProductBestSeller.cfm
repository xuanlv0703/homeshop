<cfsetting enablecfoutputonly="true">
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfset qProductFeatures = application.fapi.getContentObjects(typename="hsProduct")/>
<cfoutput>
<!-- Bestsellers -->
<div class="row sidebar-box red">
    
    <div class="col-lg-12 col-md-12 col-sm-12">
        
        <div class="sidebar-box-heading">
        <i class="icons icon-award-2"></i>
            <h4>Bestsellers</h4>
        </div>
        
        <div class="sidebar-box-content">
            <table class="bestsellers-table">
				<div class="owl-carousel" data-max-items="3">
					<cfloop query="qProductFeatures" from="1" to="3" index="i">
					<skin:view typename="hsProduct" webskin="displayProductBestSellerCard" objectid="#qProductFeatures.objectid[i]#"/>
					</cfloop>
				</div>
            </table>
        </div>
        
    </div>
    
</div>
<!-- /Bestsellers -->
</cfoutput>
<cfsetting enablecfoutputonly="false">