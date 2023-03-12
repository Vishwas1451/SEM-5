Create table Dealer 
(Dealer_ID int NOT NULL, 
Name varchar(255),
Street_Name varchar(100),
city varchar(100), 
pincode int,
PRIMARY KEY(Dealer_ID));

Create table SalesPerson (SalesPersonID int NOT NULL,FName 
varchar(255),LName varchar(255),dealer_id int,
PRIMARY KEY (SalesPersonID),FOREIGN KEY(dealer_id) 
REFERENCES Dealer(Dealer_ID) );

Create table Customer (Cust_ID int NOT NULL, FName varchar(255),
LName varchar(255),Mobile varchar(100),Address varchar(100),
Email varchar(255),PRIMARY KEY (Cust_ID));

Create table Bike (VIN int NOT NULL, Make varchar(30), 
Model varchar(30),Color varchar(10), price DECIMAL(10,2),
PRIMARY KEY (VIN));

Create table Invoice (Invoice_number int NOT NULL,VIN int, 
SalesPersonID int, Cust_ID int,Date DATE CHECK 
(Date >= '2019-01-01'), Total_Bill double,
PRIMARY KEY(Invoice_number), 
FOREIGN KEY(VIN) REFERENCES Bike(VIN), 
FOREIGN KEY(SalesPersonID) REFERENCES SalesPerson(SalesPersonID),
FOREIGN KEY (Cust_ID) REFERENCES Customer(Cust_ID));

Create table Service_Ticket (Service_ID int NOT NULL,VIN int,
Cust_ID int,Service_comments varchar(255),Date_Rec DATE,
Date_Del DATE, 
Primary KEY(Service_ID), 
FOREIGN KEY (VIN) REFERENCES Bike(VIN), 
FOREIGN KEY (Cust_ID) REFERENCES Customer(Cust_ID));

Create table Mechanic (Mech_ID int NOT NULL,F_Name varchar(255),
L_Name varchar(255),hrs_work int,Rate DECIMAL(10,2),
Service_ID int,
PRIMARY KEY (Mech_ID),
FOREIGN KEY (Service_ID) REFERENCES Service_Ticket(Service_ID));

Create table Parts (P_ID int NOT NULL, Description varchar(255),
Qty int,Price DECIMAL(10,2), Service_ID int,
PRIMARY KEY (P_ID),
FOREIGN KEY (Service_ID) REFERENCES Service_Ticket(Service_ID));

Create table works_on (S_ID int NOT NULL, Mech_ID int Not Null,
P_ID int NOT NULL,Description Varchar(255),
PRIMARY KEY (S_ID,Mech_ID,P_ID),
FOREIGN KEY (S_ID) REFERENCES Service_Ticket(Service_ID),
FOREIGN KEY (Mech_ID) REFERENCES mechanic(Mech_ID),
FOREIGN KEY (P_ID) REFERENCES parts(P_ID));

select 
from Mechanic M,Parts P,Service_Ticket S
where


