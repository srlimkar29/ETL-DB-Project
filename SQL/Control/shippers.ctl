load data replace
into table shippers
fields terminated by ","
optionally enclosed by '"' TRAILING NULLCOLS
(
	ShipperID,
	CompanyName,
	Phone
)
