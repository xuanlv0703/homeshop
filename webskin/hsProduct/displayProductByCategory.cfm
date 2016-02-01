<cfsetting enablecfoutputonly="true">
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<!--- <cfset qProductFeatures = application.fapi.getContentObjects(typename="hsProduct")/> --->
<cfquery name="qProductFeatures" datasource="#dsn#">
	select objectid
	from hsProduct inner join hsProduct_acategories
	on hsProduct.objectid=hsProduct_acategories.parentid
	and hsProduct_acategories.data = <cfqueryparam cfsqltype="cf_sql_varchar" value="#stobj.objectid#">
</cfquery>

<cfoutput>
<!-- Featured Products -->
<div class="products-row row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        
        <div class="carousel-heading">
            <h4>Product by Category</h4>
        </div>
        <cfset j = 1/>
        <cfloop query="qProductFeatures">
            <cfif j mod 3 eq 1><div class="row"></cfif>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <skin:view typename="hsProduct" webskin="displayProductCard" objectid="#qProductFeatures.objectid#"/>
            </div>
           <cfif j mod 3 eq 0 OR j eq qProductFeatures.recordCount></div></cfif>
           <cfset j++>
        </cfloop>
    </div>
</div>
<!-- /Featured Products -->
</cfoutput>
<cfsetting enablecfoutputonly="false">