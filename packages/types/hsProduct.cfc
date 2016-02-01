<cfcomponent displayName="Products" extends="farcry.core.packages.types.types" 
	fualias="product" bFriendly="true" bObjectBroker="true">

	<cfproperty name="title" type="string" required="false"
		ftSeq="1" ftFieldset="Details" ftLabel="Title">

	<cfproperty name="teaser" type="longchar" required="false"
		ftSeq="2" ftFieldset="Details" ftLabel="Teaser"
		ftType="longchar" ftLimit="500">

	<cfproperty name="aCategories" type="array" required="false"
		ftSeq="3" ftFieldset="Details" ftLabel="Categories"
		ftType="array" ftJoin="dmCategory" ftLibraryDataSQLOrderBy="label ASC">

	<cfproperty name="SellPrice" type="numeric" required="false" hint="Product current price"
	ftseq="4" ftType="numeric"
	ftlabel="Product Selling Price" ftDefault="" ftHint=""
	ftwizardStep="Price / Stock" ftfieldset="Price" />

	<cfproperty name="body" type="longchar" required="false"
		ftSeq="5" ftFieldset="Content" ftLabel="Body" 
		ftType="richtext" ftTemplateTypeList="dmImage,dmFile,dmNavigation,dmHTML"
		ftImageArrayField="aAttachments" ftImageTypename="dmImage" ftImageField="StandardImage">


	<cfproperty name="aAttachments" type="array" required="false"
		ftSeq="6" ftFieldset="Content" ftLabel="Attached Images / Files"
		ftType="array" ftJoin="hsProductImage,dmFile"
		ftAllowEdit="true" ftAllowBulkUpload="true">

	<cfproperty name="aRelated" type="array" required="false"
		ftSeq="7" ftFieldset="Relationships" ftLabel="Related Product"
		ftType="array" ftJoin="hsProduct" >


</cfcomponent>