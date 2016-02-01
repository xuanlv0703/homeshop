<cfsetting enablecfoutputonly="true">
<cfoutput>
<div class="blog-item">
    <a href="#application.fapi.getLink(typename="hsBlog",objectid=stobj.objectid)#"><img src="#stobj.imgTeaser#" alt="#stobj.title#"></a>
    <div class="blog-info">
    	<h3><a href="#application.fapi.getLink(typename="hsBlog",objectid=stobj.objectid)#">#stobj.title#</a></h3>
        <div class="blog-meta">
        	<span class="date"><i class="icons icon-clock"></i> #dateformat(stobj.posteddatetime,"dd/mm/yyyy")#</span>
            <span class="cat"><i class="icons icon-tag"></i> <a href="##">lorem</a>, <a href="##">tablet</a></span>
            <span class="views"><i class="icons icon-eye-1"></i> 11 times</span>
        </div>
        <p>#stobj.teaser#</p>
    </div>
</div>
</cfoutput>
<cfsetting enablecfoutputonly="false">