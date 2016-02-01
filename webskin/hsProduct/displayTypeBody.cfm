<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Products Page --->
<!--- @@author: xuanlv--->
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfoutput>
<skin:view typename="hsSlider" webskin="displaySlider"/>


<cfset qProductFeatures = application.fapi.getContentObjects(typename="hsProduct")/>
<cfoutput>
<!-- Featured Products -->
<cfset j = 1/>
<skin:pagination paginationID="" query="qProductFeatures" r_stObject="stRow" recordsPerPage="3" top="false" bottom="true"  currentPage="true">
	<cfif j mod 3 eq 1><div class="row"></cfif>
    <div class="col-lg-4 col-md-4 col-sm-6">
		<skin:view typename="hsProduct" webskin="displayProductCard" objectid="#stRow.objectid#"/>
	</div>
   <cfif j mod 3 eq 0 OR j eq qProductFeatures.recordCount></div></cfif>
   <cfset j++>
</skin:pagination>
<!-- /Featured Products -->
</cfoutput>

<skin:view typename="hsProduct" webskin="displayFeatureProducts"/>

<skin:view typename="hsProduct" webskin="displayNewColections"/>

<skin:view typename="hsProduct" webskin="displayRandomProducts"/>

<skin:view typename="hsProduct" webskin="displayProductBrands"/>
</cfoutput>
<cfsetting enablecfoutputonly="false">