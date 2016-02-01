<cfsetting enablecfoutputonly="true">
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />

<cfoutput>
<!-- Content -->
<div class="row content">
	
    <div class="col-lg-12 col-md-12 col-sm-12">
    	<div class="breadcrumbs">
        	<p><a href="/">Home</a> <i class="icons icon-right-dir"></i> #stobj.title#</p>
        </div>
    </div>
    
	<!-- Main Content -->
	<section class="main-content col-lg-12 col-md-12 col-sm-12">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="carousel-heading no-margin">
                    <h4>#stobj.title#</h4>
                </div>
                
                <div class="page-content">
                    #stobj.body#
                </div>
        	</div> 
        </div>
            
	</section>
	<!-- /Main Content -->
    
</div>
<!-- /Content -->
</cfoutput>

<cfsetting enablecfoutputonly="false">