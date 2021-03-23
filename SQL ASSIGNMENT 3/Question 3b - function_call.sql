select distinct c.customerNumber , c.customerName , purchase_status(c.customerNumber)
from payments p join
customers c where p.customerNumber= c.customerNumber;