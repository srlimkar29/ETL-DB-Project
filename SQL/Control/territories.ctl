load data replace
into table Territories
fields terminated by ","
optionally enclosed by '"' TRAILING NULLCOLS
(
	TerritoryID,
	TerritoryDescription,
	RegionID
)
