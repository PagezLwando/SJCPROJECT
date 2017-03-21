DROP TRIGGER IF EXISTS student_trig; 
CREATE TRIGGER student_trig
AFTER INSERT ON student	
FOR EACH ROW
	INSERT INTO users 
		VALUES (New.exam_number, New.email_address, New.password,
			'STUDENT');