--Dealer  Table:
Insert into Dealer 
values(001,'Ajit','Brigade Road','Bangalore',560001);

Insert into dealer (dealer_ID,name,Street_Name,City,Pincode) 
values (002,'Rudra','Bhashyam Circle','Bangalore',560010);

Insert into Dealer (Dealer_ID,Name,Street_Name,City,Pincode) 
values (003,'Arjun','Bapuji Nagar','Bangalore',560026),
(004,'Mohamad','Chickpet','Bangalore',560053),
(005,'Nirmala','Domlur','Bangalore',560071),
(006,'Raghu','HSR Layout','Bangalore',560102),
(007,'Likith','Hosur Road','Bangalore',560030),
(008,'Kiran','Indira Nagar', 'Bangalore',560038),
(009,'Sherif','JP Nagar', 'Bangalore',560078),
(010,'Tanish','Kannur', 'Bangalore',562149);

--sales person Table:
Insert into SalesPerson(SalesPersonID,Fname,Lname,Dealer_ID) 
values (100,'Raghul','Kanna',001);
Insert into SalesPerson(SalesPersonID,Fname,Lname,Dealer_ID) 
values (101,'Akshay','Kumar',002), 
(102,'Anil','Kapoor',010), (103,'Barath','Kumar',003), 
(104,'Smiriti','Bhai',004),(105,'Rishi','Sunak',005), 
(106,'Srihari','Udupa',001),(107,'Pallavi','Sharma',010), 
(108,'Bala','Reddy',010),(109,'Sindhya','Kapoor',010), 
(110,'Suma','Sampat',010);

--Customer Table:
Insert into Customer(Cust_ID,FName,LName,Mobile,Address,Email) 
values
(201,'Sai','Shankar',8976678880,'Chennai','saishankar@gmail.com'),
(202,'Apoorva','Kishore',6743848821,'Bangalore','apoorvak@gmail.com'),
(203,'Bala','Kumar',9086554320,'Chennai','balakumar@gmail.com'),
(204,'Chethan','Kumar',9078655550,'Kerala','chethankumar@gmail.com'),
(205,'Gowtham','Raman',8765490876,'Bangalore','gowtham@gmail.com');

--Bike Table:
Insert into Bike(VIN,Make,Model,Color,Price) 
values (300,'Honda','CB500X','Blue',102000.00),
(301,'Kawasaki','KLX230','Red',150230.90),
(302,'Suzuki','GSX-R1000','Black',90990.99),
(303,'Yamaha','Smax','Silver',130980.87),
(304,'TVS','Ntorq 125','Royal Blue',110250.99),
(305,'Mahindra','Duro','Purple',89000.99);

--Invoice Table:

Insert into Invoice(Invoice_number,VIN,SalesPersonID,Cust_ID,
Date,Total_Bill) values 
(401,301,102,202,'2021-09-10',132432.98),
(403,304,105,204,'2019-03-23',78900.90),
(405,303,110,201,'2022-01-20',120090.89);

--(400,300,100,201,'2016-04-04',120998.98),
--(402,302,103,203,'2012-10-02',908907.87),
--(404,305,109,205,'2015-12-27',88998.99),

--Service Ticket Table:

Insert into Service_Ticket(Service_ID,VIN,Cust_ID,
Service_Comments,Date_Rec,Date_Del)
Values 
(500,300,201,'Excellent','2022-01-23','2022-01-24'),
(501,301,202,'Excellent','2022-01-23','2022-01-24'),
(502,302,203,'Satisfied','2021-02-23','2022-02-27'),
(503,303,204,'Good','2022-04-10','2022-04-13'),
(504,304,205,'Poor','2022-05-15','2022-05-24'),
(505,300,203,'Excellent','2021-12-26','2021-12-27');

--Mechanic Table:
Insert into Mechanic(Mech_ID,F_Name,L_Name,Hrs_Work,Rate,
Service_ID) values 
(600,'Guru','Prasad',2,1500.45,501),
(601,'Kalyan','Bhat',3,3000.45,505),
(602,'Jeevan','Kishore',5,5000.45,502),
(603,'Anjan','Jain',4,50000.99,503),
(604,'Madhan','Raj',6,6000.65,504),
(605,'Yashah','Kiran',7,8000.95,500);

--Parts Table:
Insert into Parts(P_ID,Description,Qty,Price,Service_ID) 
values 
(700,'Air Filter',1,217.99,500),
(701,'Chain Set',2,1987.99,501),
(702,'Clutch Plate',4,517.99,504),
(703,'Handle Bar',4,2519.99,505),
(704,'Horn',5,1675.78,502),
(705,'Leg Guard',101,6217.99,503);



