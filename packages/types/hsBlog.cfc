<cfcomponent displayName="Blog Post" extends="farcry.core.packages.types.types" 
	fualias="blog" bFriendly="true" bObjectBroker="true">

	<cfproperty name="title" type="string" required="false"
		ftSeq="1" ftFieldset="Blog Details" ftLabel="Title">
	<cfproperty name="teaser" type="longchar" required="false"
		ftSeq="2" ftFieldset="Blog Details" ftLabel="Teaser"
		ftType="longchar" ftLimit="500">

	<cfproperty name="aCategories" type="array" required="false"
		ftSeq="3" ftFieldset="Details" ftLabel="Categories"
		ftType="array" ftJoin="dmCategory" ftLibraryDataSQLOrderBy="label ASC">

	<cfproperty name="posteddatetime" type="date" required="false" 
		ftSeq="4" ftFieldset="Blog Details" ftLabel="Date Posted"
		ftType="datetime" ftDefaultType="Evaluate" ftDefault="now()" 
		ftDateFormatMask="dd mmm yyyy" ftTimeFormatMask="hh:mm tt" 
		ftShowTime="true">

	<cfproperty name="body" type="longchar" required="false"
		ftSeq="5" ftFieldset="Content" ftLabel="Body" 
		ftType="richtext" ftTemplateTypeList="dmImage,dmFile,dmNavigation,dmHTML"
		ftImageArrayField="aAttachments" ftImageTypename="dmImage" ftImageField="StandardImage">

	<cfproperty ftSeq="6" ftFieldset="Product Image" name="SourceImage" type="string" hint="The URL location of the uploaded image" required="true" default="" ftValidation="required" 
		ftType="Image" 
		ftCreateFromSourceOption="false" 
		ftAllowResize="false"
		ftDestination="/images/hsBlog/imgSource" 
		ftlabel="Source Image" 
		ftImageWidth="" 
		ftImageHeight=""
		ftbUploadOnly="true"
   		ftAllowedExtensions="jpg,jpeg,gif,png,tiff,tif,bmp"
		ftHint="Upload your high quality source image here."  
		ftBulkUploadTarget="true"/>
	
	<cfproperty ftSeq="7" ftFieldset="Product Image" name="imgFull" type="string" required="false" default="" 
		ftType="Image"  
		ftDestination="/images/hsBlog/imgFull" 
		ftImageWidth="870" 
		ftImageHeight="405" 
		ftAutoGenerateType="center"
		ftSourceField="SourceImage" 
		ftCreateFromSourceDefault="true" 
		ftAllowUpload="true" 
		ftQuality=".95"
        ftAllowedExtensions="jpg,jpeg,gif,png,tiff,tif,bmp"
		ftlabel="Full Image"
		ftHint="This is the image that will be used for full size" />

	<cfproperty ftSeq="8" ftFieldset="Product Image" name="imgTeaser" type="string" required="false" default="" 
		ftType="Image"  
		ftDestination="/images/hsBlog/imgTeaser" 
		ftImageWidth="420" 
		ftImageHeight="196" 
		ftAutoGenerateType="center"
		ftSourceField="SourceImage" 
		ftCreateFromSourceDefault="true" 
		ftAllowUpload="true" 
		ftQuality=".95"
        ftAllowedExtensions="jpg,jpeg,gif,png,tiff,tif,bmp"
		ftlabel="Teaser Image"
		ftHint="This image will be used as a teaser" />

	<cfproperty name="aAttachments" type="array" required="false"
		ftSeq="9" ftFieldset="Content" ftLabel="Attached Images / Files"
		ftType="array" ftJoin="dmImage,dmFile"
		ftAllowEdit="true" ftAllowBulkUpload="true">

	<cfproperty name="aRelated" type="array" required="false"
		ftSeq="10" ftFieldset="Relationships" ftLabel="Related Blog Posts"
		ftType="array" ftJoin="hsBlog" ftLibraryDataSQLOrderBy="posteddatetime DESC">


</cfcomponent>