load data replace
into table OrderDetails
fields terminated by ","
optionally enclosed by '"' TRAILING NULLCOLS
(
	OrderID,
	ProductID,
	UnitPrice,
	Quantity,
	Discount
)
