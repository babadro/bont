<!--- form to obtain sql --->
<body>

<form action="results.cfm" method="post" target="bottom">
<strong>SQL Query:</strong><br>
<textarea name="sql" rows="8" cols="60"></textarea><br>
<!--- prompt for datasource only if so specified --->
 <cfoutput>
	<input type="text" name="datasource" value="bont">
</cfoutput>
<input type="submit" value="Execute">
</form>
</body>
