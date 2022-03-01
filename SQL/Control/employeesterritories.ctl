load data replace
into table EmployeeTerritories
fields terminated by ","
optionally enclosed by '"' TRAILING NULLCOLS
(
	EmployeeID,
	TerritoryID
)
