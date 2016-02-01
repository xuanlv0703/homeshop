<cfsetting enablecfoutputonly="true">
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=676235822503327&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<cfoutput>
<!--- <div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12">
		<div class="breadcrumbs">
			<p><a href="/">Home</a> <i class="icons icon-right-dir"></i> Blog Single</p>
		</div>
	</div>
</div> --->
         
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="carousel-heading">
            <h4>#stobj.title#</h4>
        </div>
	</div>
    
    <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="blog-item">
            <img src="#stobj.imgFull#" alt="">
            <div class="blog-info">
                <div class="blog-meta">
                	<span class="date"><i class="icons icon-clock"></i> #dateformat(stobj.posteddatetime,"dd/mm/yyyy")#</span>
                    <span class="cat"><i class="icons icon-tag"></i> <a href="##">lorem</a>, <a href="##">tablet</a></span>
                    <span class="views"><i class="icons icon-eye-1"></i> 11 times</span>
                </div>
                #stobj.body#

                <div class="social-share">
                    <div class="fb-share-button" data-href="##" data-type="button_count" style="margin-top:5px;"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<cfif arrayLen(stobj.aRelated)>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="carousel-heading no-margin">
                <h4>Latest from</h4>
            </div>
            <div class="page-content">
            	<ul>
                	<cfloop array="#stobj.aRelated#" index="i">
                     <skin:view typename="hsBlog" webskin="displayteaserRelated" objectid="#i#"/>   
                    </cfloop>
                </ul>
            </div>
    	</div>
    </div>
</cfif>

 <div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="carousel-heading no-margin">
            <h4>Latest Comments</h4>
        </div>
        <div class="page-content">
            <div class="fb-comments" data-width="100%" data-href="#CGI.request_url#" data-numposts="10" data-colorscheme="light"></div>
        </div>
	</div>
</div>
</cfoutput>
<cfsetting enablecfoutputonly="false">