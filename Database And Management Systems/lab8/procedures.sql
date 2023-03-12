  -- procedures

-- query for 1st procedure where the updation takes place
DELIMITER $$
CREATE procedure fines(
IN reg_datee date)
BEGIN
   IF (CURRENT_DATE>return_datee) THEN
     update issue_return set fine=(((CURRENT_DATE)-(return_datee))*3) where issue_return.return_date=return_datee;
   end if;  
END;$$
DELIMITER ;


-- query for 2nd procedure used to iterate via each row using cursors
DELIMITER ;;
CREATE PROCEDURE age2()
BEGIN
  DECLARE dob DATE;
  DECLARE done INT DEFAULT FALSE;
  DECLARE age_update CURSOR FOR SELECT users.DOB FROM users;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
  OPEN age_update;
  loop_through_rows:LOOP
    FETCH age_update INTO dob;
    IF done THEN
      LEAVE loop_through_rows;
    END IF;
    call age_updation_one(dob);
  END LOOP;
  CLOSE age_update;
END;

call return_date_deletion(18273);
-- calling the procedure
call age2();



DELIMITER $
CREATE PROCEDURE del_null3()
BEGIN
	DECLARE vid int;
	DECLARE finished INTEGER DEFAULT 0;
	DECLARE del_null CURSOR FOR
		SELECT vendor.vendor_id FROM vendor WHERE vendor.product_id is null;

	DECLARE CONTINUE HANDLER
	FOR NOT FOUND SET finished = 1; 
    
	OPEN del_null;
		FETCH del_null INTO vid;
		getRows: LOOP
			IF finished = 1 THEN
				LEAVE getRows;
			END IF;
            	DELETE FROM vendor WHERE EXISTS (SELECT DISTINCT invoice.vendor_id FROM invoice) AND vendor.product_id = NULL ;
		END LOOP getRows;
	CLOSE del_null;
END $
DELIMITER ;