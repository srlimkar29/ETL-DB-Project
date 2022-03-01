load data replace
into table products
fields terminated by ","
optionally enclosed by '"' TRAILING NULLCOLS
(
	ProductID,
	ProductName,
	SupplierID,
	CategoryID,
	QuantityPerUnit,
	UnitPrice,
	UnitsInStock,
	UnitsOnOrder,
	RecorderLevel,
	Discontinued
)
