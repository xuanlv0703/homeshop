<cfcomponent displayName="Contacts" extends="farcry.core.packages.types.types" 
	fualias="contact" bFriendly="true" bObjectBroker="true">

	<cfproperty name="name" type="string" required="true"
		ftSeq="1" ftFieldset="Details" ftLabel="Name">

	<cfproperty name="email" type="string" required="true" default="" 
		ftSeq="2" ftFieldset="Details" ftLabel="Email" 
		ftType="email">

	<cfproperty name="subject" type="string" required="false"
		ftSeq="3" ftFieldset="Details" ftLabel="Subject">

	<cfproperty name="message" type="longchar" required="false"
		ftSeq="4" ftFieldset="Details" ftLabel="Message"
		ftType="longchar" ftLimit="500">
</cfcomponent>