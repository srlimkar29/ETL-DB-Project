load data replace
into table Customers
fields terminated by ","
optionally enclosed by '"' TRAILING NULLCOLS
(
	CustomerID,
	CompanyName,
	ContactName,
	ContactTitle,
	Address,
	City,
	Region,
	PostalCode,
	Country,
	Phone,
	Fax
)
