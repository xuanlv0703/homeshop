<cfsetting enablecfoutputonly="true">
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfoutput>
<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12">
		<div class="breadcrumbs">
	    	<p><a href="/">Home</a> <i class="icons icon-right-dir"></i> #stobj.label#</p>
	    </div>
	</div>
</div>
<skin:view typename="hsProduct" webskin="displayProductByCategory" objectid="#stobj.objectid#"/>
</cfoutput>
<cfsetting enablecfoutputonly="false">