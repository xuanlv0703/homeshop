<cfsetting enablecfoutputonly="true">
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfoutput>
<!-- Slide -->
<div>
    <!-- Carousel Item -->
    <div class="product">
        
        <div class="product-image">
        	<skin:view typename="hsProductImage" objectid="#stobj.aAttachments[1]#" template="displayThumbnail" />
            <a href="#application.fapi.getLink(typename="hsProduct",objectid=stobj.objectid)#" class="product-hover">
                <i class="icons icon-eye-1"></i> Quick View
            </a>
        </div>
        
        <div class="product-info">
            <h5><a href="#application.fapi.getLink(typename="hsProduct",objectid=stobj.objectid)#">#stobj.title#</a></h5>
            <span class="price">$#stobj.sellprice#</span>
        </div>
        
        <div class="product-actions">
            <span class="add-to-cart">
                <span class="action-wrapper">
                    <i class="icons icon-basket-2"></i>
                    <span class="action-name">Add to cart</span>
                </span >
            </span>
            <span class="add-to-favorites">
                <span class="action-wrapper">
                    <i class="icons icon-heart-empty"></i>
                    <span class="action-name">Add to wishlist</span>
                </span>
            </span>
            <span class="add-to-compare">
                <span class="action-wrapper">
                    <i class="icons icon-docs"></i>
                    <span class="action-name">Add to Compare</span>
                </span>
            </span>
        </div>
        
    </div>
    <!-- /Carousel Item -->
</div>
<!-- /Slide -->
</cfoutput>
<cfsetting enablecfoutputonly="false">