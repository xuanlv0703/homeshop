<cfsetting enablecfoutputonly="true">
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfset qCategories = application.fapi.getContentObjects(typename="dmCategory",typecategory_eq="product",lProperties="objectid,label")/>
<cfoutput>
<div class="row sidebar-box purple">
    
    <div class="col-lg-12 col-md-12 col-sm-12">
        
        <div class="sidebar-box-heading">
            <i class="icons icon-folder-open-empty"></i>
            <h4>Danh mục</h4>
        </div>
        
        <div class="sidebar-box-content">
            <ul>
            	<cfloop query="qCategories">
                	<li><a href="#application.fapi.getLink(typename="dmCategory",objectid="#qCategories.objectid#")#">#qCategories.label# <i class="icons icon-right-dir"></i></a></li>
            	</cfloop>
            </ul>
        </div>
        
    </div>
        
</div>
</cfoutput>
<cfsetting enablecfoutputonly="false">