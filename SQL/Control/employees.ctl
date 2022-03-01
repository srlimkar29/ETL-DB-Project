load data replace
into table Employees_1
fields terminated by ","
optionally enclosed by '"' TRAILING NULLCOLS
(
	EmployeeID,
	LastName,
	FirstName,
	Title,
	TitleOfCourtesy,
	BirthDate "to_date(:BirthDate,'mm/dd/yy hh:mi:AM')",
	HireDate "decode(:HireDate,'NULL',to_date(:HireDate,'mm/dd/yy hh:mi:AM'))",
	Address,
	City,
	Region,
	PostalCode,
	Country,
	HomePhone,
	Extension,
	Photo,
	Notes char(1200),
	ReportsTo "to_number(decode(:ReportsTo,'NULL',NULL,:ReportsTo))",
	PhotoPath
)
