create table cancellations (id  INT PRIMARY KEY  auto_increment ,
 customerNumber INT references  orders(customerNumber),
  orderNumber INT   references orders(orderNumber),
   comments varchar(255));
  

