<cfcomponent hint = "Shoes database access">
<cfset ds = "bont">

<cffunction name = "items_list"
	returntype = "query"
	hint = "List all items">

<cfquery datasource = "#ds#">
	SELECT *
	FROM items
	
</cfcomponent>