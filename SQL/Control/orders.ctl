load data replace
into table Orders
fields terminated by ","
optionally enclosed by '"' TRAILING NULLCOLS
(
	OrderID,
	CustomerID,
	EmployeeID,
	OrderDate "decode(:OrderDate,'Null',NULL,to_date(:OrderDate,'mm/dd/yy hh24:mi'))",
	RequiredDate "decode(:RequiredDate,'Null',NULL,to_date(:RequiredDate,'mm/dd/yy hh24:mi'))",
	ShippedDate "decode(:ShippedDate,'NULL',NULL,to_date(:ShippedDate,'mm/dd/yy hh24:mi'))",
	ShipVia,
	Freight,
	ShipName,
	ShipAddress,
	ShipCity,
	ShipRegion,
	ShipPostalCode,
	ShipCountry
)
