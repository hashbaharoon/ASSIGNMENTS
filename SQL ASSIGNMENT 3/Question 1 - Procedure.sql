CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_order_status`(order_month char(3), order_year int)
BEGIN
select orderNumber , orderDate , status
 from orders where 
 DATE_FORMAT(orderDate, "%b") = order_month and YEAR(orderDate) = order_year;
END