<cfcomponent displayname="category" extends="farcry.core.packages.types.dmCategory" bFriendly="1" bobjectbroker="true">
	
	<cfproperty
     name="typecategory" ftSeq="13" ftfieldset="Type Category"
     type="string" fthint="Choise type for category" required="false" default="product"
     ftLabel="Type Category" ftType="list" ftList="product:Product,blog:Blog"/>

</cfcomponent>