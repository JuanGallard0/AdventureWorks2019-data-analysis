select sod.LineTotal, st.CountryRegionCode, p.Title
from Sales.SalesOrderDetail sod
inner join Sales.SalesOrderHeader soh on sod.SalesOrderID=soh.SalesOrderID
--Country
inner join Sales.SalesTerritory st on soh.TerritoryID=st.TerritoryID
--Gender
inner join Sales.Customer c on soh.CustomerID=c.CustomerID
inner join Person.BusinessEntityContact bec on c.PersonID=bec.PersonID
inner join Person.Person p on bec.BusinessEntityID=p.BusinessEntityID;