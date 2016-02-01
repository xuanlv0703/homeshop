<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Blogs Page --->
<!--- @@author: xuanlv--->
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfset qBlogs = application.fapi.getContentObjects(typename="hsBlog")/>

<cfoutput>

	<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
    	<div class="breadcrumbs">
        	<p><a href="/">Home</a> <i class="icons icon-right-dir"></i> News &amp; Reviews</p>
        </div>
    </div>
    </div>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="carousel-heading">
                <h4>New &amp; Reviews</h4>
            </div>
    	</div>
        <div class="col-lg-12 col-md-12 col-sm-12">
            <skin:view typename="hsBlog" webskin="displayTeaserCard" objectid="#qBlogs.objectid[1]#"/>
        </div>
    </div>
    
    <div class="row">
    	<cfloop query="qBlogs" from="2" to="3" index="i">
    		<div class="col-lg-6 col-md-6 col-sm-12">
    			<skin:view typename="hsBlog" webskin="displayTeaserCard" objectid="#qBlogs.objectid[i]#"/>
        	</div>
    	</cfloop>    
   </div>
   
   <div class="row">
   		<cfloop query="qBlogs" from="4" to="#qBlogs.recordcount#" index="i">
        	<div class="col-lg-4 col-md-4 col-sm-12">
    			<skin:view typename="hsBlog" webskin="displayTeaserCard" objectid="#qBlogs.objectid[i]#"/>
        	</div>
    	</cfloop>
    </div>
</cfoutput>
<cfsetting enablecfoutputonly="false">