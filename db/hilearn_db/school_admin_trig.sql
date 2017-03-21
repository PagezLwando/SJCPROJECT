DROP TRIGGER IF EXISTS school_admin_trig; 
CREATE TRIGGER school_admin_trig
AFTER INSERT ON school_admin	
FOR EACH ROW
	INSERT INTO users 
		VALUES (New.admin_num, New.email, New.password,
			'SCHOOL_ADMIN');