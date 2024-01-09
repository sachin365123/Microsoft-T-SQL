use [AdventureWorks2019]
go

select * from Person.address;

select AddressID,city,modifieddate from person.address;

select city,addressid,modifieddate from person.address;

select top 10 * from Person.Address;

---------------------

select * from Person.address where postalcode = '98011'

select * from Person.address where postalcode != '98011'

select * from Person.address where postalcode <> '98011'

select count(*) from Person.address where postalcode <> '98011'

select * from Person.address where ModifiedDate >= '2013-11-08 00:00:00'

select * from Person.address where ModifiedDate <= '2013-11-08 00:00:00'

select * from Person.Person where FirstName like 'mat%'

select * from Person.Person where FirstName like '%ew'

select * from Person.Person where FirstName like '%EW'

select * from [HumanResources].[EmployeePayHistory]

select max(rate) from [HumanResources].[EmployeePayHistory]

select max(rate) AS MaxPayrate from [HumanResources].[EmployeePayHistory]

select min(rate) AS [Min Pay rate] from [HumanResources].[EmployeePayHistory]


select * from [Production].[ProductCostHistory] where startdate = '2013-05-30 00:00:00'


select * from [Production].[ProductCostHistory] where startdate = '2013-05-30 00:00:00' and StandardCost >= 200

select * from [Production].[ProductCostHistory] where( startdate = '2013-05-30 00:00:00' and StandardCost >= 200) or ProductID >800

select * from [Production].[ProductCostHistory] where( startdate = '2013-05-30 00:00:00' and StandardCost >= 200) and ProductID >800

select * from [Production].[ProductCostHistory] where ProductID in (802,803,820,900)

select * from [Production].[ProductCostHistory] where EndDate is null

select * from [Production].[ProductCostHistory] where EndDate is not null

---------------------------------

select * from [HumanResources].[EmployeePayHistory] order by rate 

select * from [HumanResources].[EmployeePayHistory] order by rate asc

select * from [HumanResources].[EmployeePayHistory] order by rate desc


select * from [HumanResources].[EmployeePayHistory] where  ModifiedDate >= '2010-06-30 00:00:00' order by ModifiedDate desc

select * from [HumanResources].[EmployeePayHistory] where  year(ModifiedDate) >= '2014' order by ModifiedDate desc

select * from [HumanResources].[EmployeePayHistory] where  month(ModifiedDate) = '06' order by ModifiedDate desc

---------------------------------------------

select * from Person.address where postalcode = '98011'


select count(*) from Person.address where postalcode = '98011'


select count(*),postalcode from Person.address group by PostalCode

select count(*) as NoOfAddresses,postalcode from Person.address group by PostalCode

select count(*) as NoOfAddresses,postalcode from Person.address group by PostalCode order by PostalCode

select count(*),City from Person.address group by City

select count(*),City,PostalCode from Person.address group by City,PostalCode
----------------------------------------------

select * from Production.product

select count(*) countofproduct,Color from Production.product where color = 'yellow' group by Color

select count(*) countofproduct,Color from Production.product group by Color having Color = 'yellow'


select count(*) countofproduct,Color,Size from Production.product group by Color,size having Size >= '44'


















