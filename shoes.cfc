<cfcomponent hint = "Goods database access">
<cfset ds = "bont">

<!--- Получение списка непроданных товаров --->
<cffunction name = "outstandings_list"
	returntype = "query"
	hint = "List all goods on stores">

	<cfquery datasource = "#ds#" name = "outstanding_goods">
		SELECT 
		items_peoples_legal_entity.id, name, rub_retail_price, euro_size, width, len_shoes, color,
	shoe_type, chassis, cleat_type, upper_material, closing_options,
	individual_retailer_name, individual_retailer_surname, individual_retailer_nikname,
	legal_entity_retailer_name
		FROM
		SELECT 
			items.id, items.model_id, euro_size, width, len_shoes, color,
			peoples.name AS individual_retailer_name, peoples.surname AS individual_retailer_surname,
			peoples.nikname AS individual_retailer_nikname,
			legal_entity.name AS legal_entity_retailer_name
		FROM items INNER JOIN (peoples, legal_entity)
			ON (items.individual_retailer = peoples.id AND items.legal_entity_retailer = legal_entity.id)
		) AS items_peoples_legal_entity
		INNER JOIN models ON
		(items_peoples_legal_entity.model_id = models.id);
		</cfquery>
		<cfreturn outstanding_goods>
	</cffunction>
	
</cfcomponent>