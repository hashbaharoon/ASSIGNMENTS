CREATE DEFINER=`root`@`localhost` TRIGGER `movies_delete_cascade` AFTER DELETE ON `movies` FOR EACH ROW
BEGIN
	delete from rentals where rentals.movieid=old.id;
END