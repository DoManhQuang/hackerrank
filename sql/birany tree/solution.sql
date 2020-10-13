select N, 
case
    when P is null Then ' Root'
    when N in (select P from BST) then ' Inner'
    else ' Leaf'
end
from bst
order by N;