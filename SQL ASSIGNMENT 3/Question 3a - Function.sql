CREATE DEFINER=`root`@`localhost` FUNCTION `purchase_status`(cust_no int) RETURNS varchar(55) CHARSET utf8
BEGIN
	declare purch_stat varchar(55);
	declare purch_amount int;
    
	select sum(amount) 
    into purch_amount
	from payments
    where customerNumber= cust_no;
    
    if purch_amount  < 25000 then
		set purch_stat ='silver';
	elseif purch_amount  between 25000 and 50000 then
        set purch_stat='gold';	
	elseif purch_amount > 50000 then
		set purch_stat ='platinum';
	end if;
    
	RETURN purch_stat;
END