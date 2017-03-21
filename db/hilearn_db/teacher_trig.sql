DROP TRIGGER IF EXISTS teacher_trig; 
CREATE TRIGGER teacher_trig
AFTER INSERT ON teacher	
FOR EACH ROW
	INSERT INTO users 
		VALUES (New.staff_num, New.email_address, New.password,
			'TEACHER');