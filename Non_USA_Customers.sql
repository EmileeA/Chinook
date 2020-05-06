-- non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
select * from Customer

select CustomerId, Country, FirstName, LastName
from Customer
where Country != 'USA'