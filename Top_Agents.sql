insert into Pickle(NumberInStock,Price,Size,Type)
output inserted. *
values(1,1,'large', 'fishy')

select * from Pickle

declare @newStock int = 50
declare @id int = 7

update Pickle
set NumberInstock = NumberInStock + @NewStock
output inserted.*
where Id = @Id