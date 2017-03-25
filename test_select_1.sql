select distinct maker, type 
from product 
where maker in 
	(
	select maker
	from product
	group by maker
	having count(model)>1 
	and count(distinct type)=1
	)
