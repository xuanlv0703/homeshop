<cfcomponent output="false" extends="farcry.core.packages.types.types" displayname="Product Images" bfriendly="false" bobjectbroker="true" objectbrokermaxobjects="20000" hint="Manage product images" bBulkUpload="true">

	<cfproperty 
		name="title" type="string" required="no" default=""/>

	<cfproperty 
		name="label" type="string" hint="Image title." required="no" default="" blabel="true" 
		ftSeq="2" ftFieldset="General Details" ftlabel="Image Title" ftValidation="required"
		ftBulkUploadEdit="true" />

	<cfproperty 
		name="alt" type="string" dbprecision="1000" hint="Alternate text" required="no" default=""
		ftSeq="4" ftFieldset="General Details" ftlabel="Alternative Text"
		fttype="longchar" ftlimit="999"
		ftBulkUploadEdit="true" /> 

	<cfproperty ftSeq="100" ftFieldset="Product Image" name="SourceImage" type="string" hint="The URL location of the uploaded image" required="true" default="" ftValidation="required" 
		ftType="Image" 
		ftCreateFromSourceOption="false" 
		ftAllowResize="false"
		ftDestination="/images/hsProductImage/imgSource" 
		ftlabel="Source Image" 
		ftImageWidth="" 
		ftImageHeight=""
		ftbUploadOnly="true"
   		ftAllowedExtensions="jpg,jpeg,gif,png,tiff,tif,bmp"
		ftHint="Upload your high quality source image here."  
		ftBulkUploadTarget="true"/>
	
	<cfproperty ftSeq="101" ftFieldset="Product Image" name="imgFull" type="string" required="false" default="" 
		ftType="Image"  
		ftDestination="/images/hsProductImage/imgFull" 
		ftImageWidth="870" 
		ftImageHeight="397" 
		ftAutoGenerateType="center"
		ftSourceField="SourceImage" 
		ftCreateFromSourceDefault="true" 
		ftAllowUpload="true" 
		ftQuality=".95"
        ftAllowedExtensions="jpg,jpeg,gif,png,tiff,tif,bmp"
		ftlabel="Full Image"
		ftHint="This is the image that will be used for full size" />
	
	<cfproperty ftSeq="102" ftFieldset="Product Image" name="imgDetail" type="string" required="false" default="" 
		ftType="Image"  
		ftDestination="/images/hsProductImage/imgDetail" 
		ftImageWidth="345" 
		ftImageHeight="341" 
		ftAutoGenerateType="center"
		ftSourceField="SourceImage" 
		ftCreateFromSourceDefault="true" 
		ftAllowUpload="true" 
		ftQuality=".95"
        ftAllowedExtensions="jpg,jpeg,gif,png,tiff,tif,bmp"
		ftlabel="Detail Image"
		ftHint="This image will be used on the detail page" />

	<cfproperty ftSeq="103" ftFieldset="Product Image" name="imgTeaser" type="string" required="false" default="" 
		ftType="Image"  
		ftDestination="/images/hsProductImage/imgTeaser" 
		ftImageWidth="270" 
		ftImageHeight="270" 
		ftAutoGenerateType="center"
		ftSourceField="SourceImage" 
		ftCreateFromSourceDefault="true" 
		ftAllowUpload="true" 
		ftQuality=".95"
        ftAllowedExtensions="jpg,jpeg,gif,png,tiff,tif,bmp"
		ftlabel="Teaser Image"
		ftHint="This image will be used as a teaser" />

	<cfproperty ftSeq="104" ftFieldset="Product Image" name="imgThumb" type="string" required="false" default="" 
		ftType="Image"  
		ftDestination="/images/hsProductImage/imgThumb" 
		ftImageWidth="80" 
		ftImageHeight="80" 
		ftAutoGenerateType="center"
		ftSourceField="SourceImage" 
		ftCreateFromSourceDefault="true" 
		ftAllowUpload="true" 
		ftQuality=".95"
        ftAllowedExtensions="jpg,jpeg,gif,png,tiff,tif,bmp"
		ftlabel="Thumbnail Image"
		ftHint="This image will be used as a thumbnail" />

</cfcomponent>