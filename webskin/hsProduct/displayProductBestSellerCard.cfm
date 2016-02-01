<cfsetting enablecfoutputonly="true">
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfoutput>
<tr>
    <td class="product-thumbnail">
    	<a href="#application.fapi.getLink(typename="hsProduct",objectid=stobj.objectid)#">
    		<skin:view typename="hsProductImage" objectid="#stobj.aAttachments[1]#" template="displayThumbnail" /></a>
	</td>
    <td class="product-info">
        <p><a href="#application.fapi.getLink(typename="hsProduct",objectid=stobj.objectid)#">#stobj.title#</a></p>
        <span class="price">$#stobj.sellprice#</span>
    </td>
</tr>
</cfoutput>
<cfsetting enablecfoutputonly="false">