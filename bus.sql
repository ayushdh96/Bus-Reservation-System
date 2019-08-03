select * from BUS_DETAILS;

create table BUS_DETAILS(
bus_id number primary key,
source varchar2(30) not null,
destination varchar2(30) not null,
departure_date varchar2(20) not null,
departure_time varchar2(20) not null,
arrival_time varchar2(20) not null,
seats_available number(3) not null,
fare number(4) not null,
journey_duration varchar2(20));
 create sequence Bus_seq
start with 1
increment by 1;
 insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','07/21/2019','9:00 AM','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Lonavala','17/07/2019','9:00 AM','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Lonavala','17/07/2019','9:00 AM','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Mumbai','17/07/2019','9:00 AM','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Navi Mumbai','17/07/2019','9:00 AM','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Mumbai','17/07/2019','9:00 AM','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Pune','17/07/2019','9:00 AM','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Navi Mumbai','17/07/2019','9:00 AM','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','17/07/2019','11:00 AM','12:30 PM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','18/07/2019','11:00 AM','12:30 PM',30,140,'1.5 Hrs');

drop table bus_details;
drop sequence bus_seq;

drop table PASSENGER_DETAILS;
drop sequence Passenger_seq;

drop table ticket;
drop sequence Ticket_seq;


create table BUS_DETAILS(
bus_id number primary key,
source varchar2(30) not null,
destination varchar2(30) not null,
departure_date varchar2(20) not null,
departure_time varchar2(20) not null,
arrival_date varchar2(20) not null,
arrival_time varchar2(20) not null,
seats_available number(3) not null,
fare number(4) not null,
journey_duration varchar2(20));


create sequence Bus_seq
start with 1
increment by 1;

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','07/21/2019','9:00 AM','07/21/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Lonavala','07/21/2019','9:00 AM','07/21/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Lonavala','07/21/2019','9:00 AM','07/21/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Mumbai','07/21/2019','9:00 AM','07/21/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Navi Mumbai','07/21/2019','9:00 AM','07/21/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Mumbai','07/21/2019','9:00 AM','07/21/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Pune','07/21/2019','9:00 AM','07/21/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Navi Mumbai','07/21/2019','9:00 AM','07/21/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','07/21/2019','11:00 AM','07/21/2019','12:30 PM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','07/21/2019','11:00 AM','07/21/2019','12:30 PM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/21/2019','6:00 AM','07/21/2019','7:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/21/2019','7:00 AM','07/21/2019','8:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/21/2019','8:00 AM','07/21/2019','9:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/21/2019','9:00 AM','07/21/2019','10:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/21/2019','9:00 AM','07/21/2019','10:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/21/2019','8:00 AM','07/21/2019','9:30 PM',30,1200,'13.5 Hrs');


insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/21/2019','7:00 AM','07/21/2019','8:30 PM',30,1200,'13.5 Hrs');


insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/21/2019','6:00 AM','07/21/2019','7:30 PM',30,1200,'13.5 Hrs');


truncate table bus_details;

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','07/25/2019','09:00 AM','07/25/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Lonavala','07/25/2019','09:00 AM','07/25/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Lonavala','07/25/2019','09:00 AM','07/25/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Mumbai','07/25/2019','09:00 AM','07/25/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Navi Mumbai','07/25/2019','09:00 AM','07/25/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Mumbai','07/25/2019','09:00 AM','07/25/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Pune','07/25/2019','09:00 AM','07/25/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Navi Mumbai','07/25/2019','09:00 AM','07/25/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','07/25/2019','11:00 AM','07/25/2019','12:30 PM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','07/25/2019','11:00 AM','07/25/2019','12:30 PM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/25/2019','06:00 AM','07/25/2019','07:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/25/2019','07:00 AM','07/25/2019','08:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/25/2019','08:00 AM','07/25/2019','09:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/25/2019','09:00 AM','07/25/2019','10:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/25/2019','09:00 AM','07/25/2019','10:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/25/2019','08:00 AM','07/25/2019','09:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/25/2019','07:00 AM','07/25/2019','08:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/25/2019','06:00 AM','07/25/2019','07:30 PM',30,1200,'13.5 Hrs');




insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Bangalore','07/25/2019','09:00 AM','07/25/2019','10:00 PM',30,1140,'11 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Bangalore','Pune','07/25/2019','09:00 AM','07/25/2019','10:30 PM',30,1140,'11 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Bangalore','07/25/2019','10:00 AM','07/25/2019','11:30 PM',30,1540,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Jaipur','07/25/2019','07:00 AM','07/25/2019','07:30 PM',30,1440,'12.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Goa','07/25/2019','09:00 AM','07/25/2019','11:30 AM',30,1540,'14.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Bangalore','07/25/2019','07:00 AM','07/25/2019','10:00 PM',30,1740,'15 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Pune','07/25/2019','10:00 AM','07/25/2019','10:00 PM',30,1200,'12 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Goa','07/25/2019','10:00 AM','07/25/2019','10:00 PM',30,1200,'12 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Pune','07/25/2019','11:00 AM','07/25/2019','01:30 PM',30,400,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Surat','07/25/2019','11:00 AM','07/25/2019','11:30 PM',30,1700,'12.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Jaipur','07/25/2019','06:00 AM','07/25/2019','10:30 PM',30,2500,'16.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Ahmedabad','07/25/2019','07:00 AM','07/25/2019','08:30 PM',30,1700,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Ahmedabad','Mumbai','07/25/2019','07:00 AM','07/25/2019','08:30 PM',30,1700,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Jaipur','Mumbai','07/25/2019','06:00 AM','07/25/2019','10:30 PM',30,2500,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Surat','Mumbai','07/25/2019','11:00 AM','07/25/2019','11:30 PM',30,1700,'12.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Mumbai','07/25/2019','11:00 AM','07/25/2019','01:30 PM',30,400,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/25/2019','07:00 AM','07/25/2019','08:30 PM',30,1500,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Goa','07/25/2019','06:00 AM','07/25/2019','06:00 PM',30,1500,'12 Hrs');




insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','07/26/2019','09:00 AM','07/26/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Lonavala','07/26/2019','09:00 AM','07/26/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Lonavala','07/26/2019','09:00 AM','07/26/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Mumbai','07/26/2019','09:00 AM','07/26/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Navi Mumbai','07/26/2019','09:00 AM','07/26/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Mumbai','07/26/2019','09:00 AM','07/26/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Pune','07/26/2019','09:00 AM','07/26/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Navi Mumbai','07/26/2019','09:00 AM','07/26/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','07/26/2019','11:00 AM','07/26/2019','12:30 PM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','07/26/2019','11:00 AM','07/26/2019','12:30 PM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/26/2019','06:00 AM','07/26/2019','07:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/26/2019','07:00 AM','07/26/2019','08:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/26/2019','08:00 AM','07/26/2019','09:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/26/2019','09:00 AM','07/26/2019','10:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/26/2019','09:00 AM','07/26/2019','10:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/26/2019','08:00 AM','07/26/2019','09:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/26/2019','07:00 AM','07/26/2019','08:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/26/2019','06:00 AM','07/26/2019','07:30 PM',30,1200,'13.5 Hrs');




insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Bangalore','07/26/2019','09:00 AM','07/26/2019','10:00 PM',30,1140,'11 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Bangalore','Pune','07/26/2019','09:00 AM','07/26/2019','10:30 PM',30,1140,'11 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Bangalore','07/26/2019','10:00 AM','07/26/2019','11:30 PM',30,1540,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Jaipur','07/26/2019','07:00 AM','07/26/2019','07:30 PM',30,1440,'12.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Goa','07/26/2019','09:00 AM','07/26/2019','11:30 AM',30,1540,'14.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Bangalore','07/26/2019','07:00 AM','07/26/2019','10:00 PM',30,1740,'15 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Pune','07/26/2019','10:00 AM','07/26/2019','10:00 PM',30,1200,'12 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Goa','07/26/2019','10:00 AM','07/26/2019','10:00 PM',30,1200,'12 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Pune','07/26/2019','11:00 AM','07/26/2019','01:30 PM',30,400,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Surat','07/26/2019','11:00 AM','07/26/2019','11:30 PM',30,1700,'12.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Jaipur','07/26/2019','06:00 AM','07/26/2019','10:30 PM',30,2500,'16.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Ahmedabad','07/26/2019','07:00 AM','07/26/2019','08:30 PM',30,1700,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Ahmedabad','Mumbai','07/26/2019','07:00 AM','07/26/2019','08:30 PM',30,1700,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Jaipur','Mumbai','07/26/2019','06:00 AM','07/26/2019','10:30 PM',30,2500,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Surat','Mumbai','07/26/2019','11:00 AM','07/26/2019','11:30 PM',30,1700,'12.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Mumbai','07/26/2019','11:00 AM','07/26/2019','01:30 PM',30,400,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/26/2019','07:00 AM','07/26/2019','08:30 PM',30,1500,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Goa','07/26/2019','06:00 AM','07/26/2019','06:00 PM',30,1500,'12 Hrs');



insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','07/27/2019','09:00 AM','07/27/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Lonavala','07/27/2019','09:00 AM','07/27/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Lonavala','07/27/2019','09:00 AM','07/27/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Mumbai','07/27/2019','09:00 AM','07/27/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Navi Mumbai','07/27/2019','09:00 AM','07/27/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Mumbai','07/27/2019','09:00 AM','07/27/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Pune','07/27/2019','09:00 AM','07/27/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Navi Mumbai','07/27/2019','09:00 AM','07/27/2019','10:30 AM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','07/27/2019','11:00 AM','07/27/2019','12:30 PM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Lonavala','Pune','07/27/2019','11:00 AM','07/27/2019','12:30 PM',30,140,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/27/2019','06:00 AM','07/27/2019','07:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/27/2019','07:00 AM','07/27/2019','08:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/27/2019','08:00 AM','07/27/2019','09:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/27/2019','09:00 AM','07/27/2019','10:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/27/2019','09:00 AM','07/27/2019','10:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/27/2019','08:00 AM','07/27/2019','09:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/27/2019','07:00 AM','07/27/2019','08:30 PM',30,1200,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Goa','07/27/2019','06:00 AM','07/27/2019','07:30 PM',30,1200,'13.5 Hrs');




insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Bangalore','07/27/2019','09:00 AM','07/27/2019','10:00 PM',30,1140,'11 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Bangalore','Pune','07/27/2019','09:00 AM','07/27/2019','10:30 PM',30,1140,'11 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Bangalore','07/27/2019','10:00 AM','07/27/2019','11:30 PM',30,1540,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Jaipur','07/27/2019','07:00 AM','07/27/2019','07:30 PM',30,1440,'12.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Goa','07/27/2019','09:00 AM','07/27/2019','11:30 AM',30,1540,'14.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Navi Mumbai','Bangalore','07/27/2019','07:00 AM','07/27/2019','10:00 PM',30,1740,'15 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Pune','07/27/2019','10:00 AM','07/27/2019','10:00 PM',30,1200,'12 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Goa','07/27/2019','10:00 AM','07/27/2019','10:00 PM',30,1200,'12 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Pune','07/27/2019','11:00 AM','07/27/2019','01:30 PM',30,400,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Surat','07/27/2019','11:00 AM','07/27/2019','11:30 PM',30,1700,'12.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Jaipur','07/27/2019','06:00 AM','07/27/2019','10:30 PM',30,2500,'16.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Mumbai','Ahmedabad','07/27/2019','07:00 AM','07/27/2019','08:30 PM',30,1700,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Ahmedabad','Mumbai','07/27/2019','07:00 AM','07/27/2019','08:30 PM',30,1700,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Jaipur','Mumbai','07/27/2019','06:00 AM','07/27/2019','10:30 PM',30,2500,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Surat','Mumbai','07/27/2019','11:00 AM','07/27/2019','11:30 PM',30,1700,'12.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Mumbai','07/27/2019','11:00 AM','07/27/2019','01:30 PM',30,400,'1.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Goa','Mumbai','07/27/2019','07:00 AM','07/27/2019','08:30 PM',30,1500,'13.5 Hrs');

insert into BUS_DETAILS values(Bus_seq.nextval,'Pune','Goa','07/27/2019','06:00 AM','07/27/2019','06:00 PM',30,1500,'12 Hrs');
