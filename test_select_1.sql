Select maker, max(type)
from Product
group by maker
having count(distinct type)=1 
and count(model)>1