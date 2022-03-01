load data replace
into table Suppliers
fields terminated by ","
optionally enclosed by '"' TRAILING NULLCOLS
(
	SupplierID,
	CompanyName,
	ContactName,
	ContactTitle,
	Address,
	City,
	Region,
	PostalCode,
	Country,
	Phone,
	Fax,
	HomePage
)
