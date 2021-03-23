CREATE DEFINER=`root`@`localhost` TRIGGER `movies_update_cascade` AFTER UPDATE ON `movies` FOR EACH ROW
BEGIN
	if new.id<>old.id then
		update rentals 
		set rentals.movieid=new.id
		where rentals.movieid=old.id;
	end if;
END