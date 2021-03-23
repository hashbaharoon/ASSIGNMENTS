CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_cancelled_orders`()
BEGIN
	declare lcl_custnum int;
	declare lcl_ordernum int;
    declare nf_raised int;

	declare curs_cancelled_orders cursor for select customerNumber , orderNumber from orders where status = 'Cancelled';
    
    declare continue handler for NOT FOUND
    BEGIN
		SET nf_raised=1;
    END;
    
    open curs_cancelled_orders;
    
    orderloop:LOOP
		fetch curs_cancelled_orders into lcl_custnum , lcl_ordernum ;
        
        if nf_raised=1 then
			leave orderloop;
        end if;
        
        insert into cancellations (customerNumber,orderNumber,comments) values (lcl_custnum ,lcl_ordernum ,'Cancelled Order');
        
    END LOOP orderloop ; 
    
    close curs_cancelled_orders;
    
    select "Process Completed..." as message;
    
    
    
END