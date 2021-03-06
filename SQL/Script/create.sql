create table Categories (CategoryID number,CategoryName varchar(500),Description varchar2(500),Picture blob);
create table Customers (CustomerID varchar2(500),CompanyName varchar2(500),ContactName varchar2(500),ContactTitle varchar2(500),Address varchar2(500),City varchar2(500),Region varchar2(500),PostalCode varchar2(500),Country varchar2(500),Phone varchar2(500),Fax varchar2(500));
create table Employees_1 (EmployeeID number,LastName varchar2(500),FirstName varchar2(500),Title varchar2(500),TitleOfCourtesy varchar2(500),BirthDate date,HireDate date,Address varchar2(500),City varchar2(500),Region varchar2(500),PostalCode varchar2(500),Country varchar2(500),HomePhone varchar2(500),Extension varchar2(500),Photo blob,Notes varchar2(1000),ReportsTo number,PhotoPath varchar2(500));
create table EmployeeTerritories (EmployeeID number,TerritoryID number);
create table OrderDetails (OrderID number,ProductID number,UnitPrice number,Quantity number,Discount number);
create table Orders (OrderID number,CustomerID varchar2(500),EmployeeID number,OrderDate date,RequiredDate date,ShippedDate date,ShipVia varchar2(500),Freight varchar2(500),ShipName varchar2(500),ShipAddress varchar2(500),ShipCity varchar2(500),ShipRegion varchar2(500),ShipPostalCode varchar2(500),ShipCountry varchar2(500));
create table Products (ProductID number,ProductName varchar2(500),SupplierID number,CategoryID number,QuantityPerUnit varchar2(500),UnitPrice number,UnitsInStock number,UnitsOnOrder number,RecorderLevel number,Discontinued number);
create table Region (RegionID number,RegionDescription varchar2(500));
create table Shippers (ShipperID number,CompanyName varchar2(500),Phone varchar2(500));
create table Suppliers (SupplierID number,CompanyName varchar2(500),ContactName varchar2(500),ContactTitle varchar2(500),Address varchar2(500),City varchar2(500),Region varchar2(500),PostalCode varchar2(500),Country varchar2(500),Phone varchar2(500),Fax varchar2(500),HomePage varchar2(500));
create table Territories (TerritoryID number,TerritoryDescription varchar2(500),RegionID number);
