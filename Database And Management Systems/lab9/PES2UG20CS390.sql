/*question 1*/
DELIMITER $$
CREATE TRIGGER before_compartment_update
BEFORE UPDATE
ON compartment FOR EACH ROW
BEGIN
	DECLARE err_msg varchar(100);
    SET err_msg = "The number of compartments cannot be greater than 4";
    IF new.Availability+old.Availability>4 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT=err_msg;
    END IF;
END $$
DELIMITER ;

update compartment
set compartment.Availability=8
where compartment.Train_no=62621 and compartment.Compartment_number='F01'

update compartment
set compartment.Availability=2
where compartment.Train_no=62621 and compartment.Compartment_number='F01'

/*question 2*/
DELIMITER $$
CREATE TRIGGER before_passenger_delete
AFTER DELETE
ON ticket_passenger FOR EACH ROW
BEGIN
	INSERT INTO backup_payment SELECT * FROM payment_info WHERE payment_info.PNR = old.PNR;
END $$
DELIMITER ;

Delete from train_ticket where PNR='PNR001'

