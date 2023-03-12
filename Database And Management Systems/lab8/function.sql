-- Functions

-- query for function:
DELIMITER $$

CREATE FUNCTION tickets_check_limit(counts INT)
RETURNS VARCHAR(50)

 BEGIN
 
    DECLARE sf_value VARCHAR(50);
	
    IF counts > 3 THEN 
	  	SET sf_value= 'cannot purchase ticket';
	ELSE 
	   SET sf_value= 'can purchase ticket';
	   
    END IF;
    
	RETURN sf_value;
	
END; $$

DELIMITER ;

-- calling the function using select statement
(select tickets_check_limit(count(*)),ticket_passenger.PNR from ticket_passenger JOIN train_ticket where ticket_passenger.PNR=train_ticket.PNR
and year(train_ticket.Travel_date)=year(CURRENT_DATE) and month(train_ticket.Travel_date)=10  group by ticket_passenger.PNR);

