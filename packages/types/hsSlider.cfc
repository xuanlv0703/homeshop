<cfcomponent displayName="Slider" extends="farcry.core.packages.types.types" bFriendly="true" bObjectBroker="true">

	<cfproperty name="title1" type="string" required="false"
		ftSeq="1" ftFieldset="Details" ftLabel="Title 1">

	<cfproperty name="title2" type="string" required="false"
		ftSeq="2" ftFieldset="Details" ftLabel="Title 2">

	<cfproperty name="title3" type="string" required="false"
		ftSeq="3" ftFieldset="Details" ftLabel="Title 3">

	<cfproperty name="imageSilder" type="uuid" required="false"
		ftSeq="4" ftFieldset="Details" ftLabel="Silder Image"
		ftType="uuid" ftJoin="dmImage,hsProductImage"
		ftAllowEdit="true">

	<cfproperty name="linkProduct" type="uuid" required="false"
		ftSeq="5" ftFieldset="Details" ftLabel="Link Product"
		ftType="uuid" ftJoin="hsProduct"
		ftAllowEdit="true">

	<cfproperty name="linkURL" type="string" required="false"
		ftSeq="6" ftFieldset="Details" ftLabel="LinkURL" ftHint="Use for external link">

	<cfproperty name="bShow" type="boolean" required="false" ftDefault="false"
		ftSeq="7" ftFieldset="Details" ftLabel="Show" ftHint="Tick it if you want show it.">

	<cfproperty name="buttontext" type="string" required="false" ftDefault="Buy Now"
		ftSeq="1" ftFieldset="Details" ftLabel="Button Text">


</cfcomponent>