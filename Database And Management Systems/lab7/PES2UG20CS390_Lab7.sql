/*SRN - PES2UG20CS390 , NAME -VISHWAS M*/
/*Question 1*/
select t1.User_ID,t1.User_type,t1.F_name,t1.L_name from users as t1, train_ticket where t1.User_ID= train_ticket.User_ID and 
train_ticket.Departure="Bengaluru" and train_ticket.arrival="chennai" and MONTH(train_ticket.Travel_date)=10  and 
year(train_ticket.Travel_date)=2021 UNION (select t2.User_ID,t2.User_type,t2.F_name,t2.L_name from users as t2, 
train_ticket where t2.User_ID= train_ticket.User_ID and train_ticket.Departure="Bengaluru" and train_ticket.arrival="chennai"  and
 MONTH(train_ticket.Travel_date)=8 and year(train_ticket.Travel_date)=2022);
/*Question 2*/
select t1.User_ID,t1.User_type,t1.F_name,t1.L_name from users as t1, train_ticket where t1.User_ID= train_ticket.User_ID and 
train_ticket.Departure="Bengaluru" and train_ticket.arrival="chennai" and MONTH(train_ticket.Travel_date)=10  
and year(train_ticket.Travel_date)=2021 and exists (select t2.User_ID,t2.User_type,t2.F_name,t2.L_name from users as t2,
 train_ticket where t2.User_ID= train_ticket.User_ID and train_ticket.Departure="Bengaluru" and train_ticket.arrival="chennai"  
 and MONTH(train_ticket.Travel_date)=8 and year(train_ticket.Travel_date)=2022 and t1.User_ID = t2.User_ID);
/*Question 3*/
select t1.User_ID,t1.User_type,t1.F_name,t1.L_name from users as t1, train_ticket as ti1 where t1.User_ID= ti1.User_ID and 
ti1.Departure="Bengaluru" and ti1.arrival="chennai" and MONTH(ti1.Travel_date)=8  and year(ti1.Travel_date)=2022 and 
not exists (select t2.User_ID,t2.User_type,t2.F_name,t2.L_name from users as t2, train_ticket as ti2 where t2.User_ID= ti2.User_ID
 and ti2.Departure="Bengaluru" and ti2.arrival="chennai"  and MONTH(ti2.Travel_date)=10 and year(ti2.Travel_date)=2021 and ti1.User_ID = ti2.User_ID);
/*Question 4*/
select t1.User_ID,t1.User_type,t1.F_name,t1.L_name from users as t1, train_ticket as ti1 where t1.User_ID= ti1.User_ID 
and ti1.Departure="Bengaluru" and ti1.arrival="chennai" and exists (select t2.User_ID,t2.User_type,t2.F_name,t2.L_name 
from users as t2, train_ticket as ti2 where t2.User_ID= ti2.User_ID and ti2.Departure="chennai" and ti2.arrival="bengaluru"  
and (DAY(ti2.Travel_date)-DAY(ti1.Travel_date) = 7) and ti1.User_ID = ti2.User_ID);
/*Question 5*/
select t1.User_ID,t1.User_type,t1.F_name,t1.L_name from users as t1, train_ticket as ti1 where t1.User_ID= ti1.User_ID and 
ti1.Departure="Bengaluru" and ti1.arrival="chennai" and not exists (select t2.User_ID, t2.User_type, t2.F_name, t2.L_name 
from users as t2, train_ticket as ti2 where t2.User_ID= ti2.User_ID and ti2.Departure="chennai" and ti2.arrival="bengaluru"  
and (DAY(ti2.Travel_date)-DAY(ti1.Travel_date) = 7) and ti1.User_ID = ti2.User_ID);
