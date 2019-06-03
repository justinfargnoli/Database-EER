USE mydb;

SELECT firstName, lastName
FROM Student
WHERE idStudent IN 
	(SELECT Student_idStudent
	FROM mydb.Order
	WHERE idOrder IN
		(SELECT Order_idOrder 
			FROM Order_has_Book 
			WHERE Book_idBook = 3));
		