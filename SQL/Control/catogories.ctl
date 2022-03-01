load data replace
into table Categories
fields terminated by ","
optionally enclosed by '"' TRAILING NULLCOLS
(
	CategoryID,
	CategoryName,
	Description,
	Picture
)
