<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Full Page --->
<!--- @@author: xuanlv--->
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />

<skin:view objectid="#stObj.objectid#" typename="#stObj.typename#" template="displayHeaderStandard" />


<cfoutput>

<skin:view typename="#stObj.typename#" objectid="#stObj.objectid#" webskin="#url.bodyView#" />

<!-- Banner -->
<skin:view typename="#stobj.typename#" webskin="displayBanner"/>
<!-- /Banner -->

</cfoutput>

<skin:view objectid="#stObj.objectid#" typename="#stObj.typename#" template="displayFooterStandard" />

<cfsetting enablecfoutputonly="false">