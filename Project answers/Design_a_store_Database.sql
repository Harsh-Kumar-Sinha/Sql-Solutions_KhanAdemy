create table store(id integer primary key,item text,quantity integer,price integer,ratings integer);

insert into store values(1,"Monitor",15,150000,4);
insert into store values(2,"CPU",5,150000,5);
insert into store values(3,"MacBook",1,150000,5);
insert into store values(4,"RAM",10,40000,4);
insert into store values(5,"Hard disk",10,50000,4);
insert into store values(6,"SSD",12,70000,4);
insert into store values(7,"Motherboard",8,160000,4);
insert into store values(8,"Laptop Stand",11,11000,4);
insert into store values(9,"UPS",4,40000,4);
insert into store values(10,"Keyboards",10,20000,4);
insert into store values(11,"Mouse",18,18000,4);
insert into store values(12,"ipads",1,67000,5);
insert into store values(13,"RGB Lights",20,4000,4);
insert into store values(14,"Graphics Card",10,150000,4);
insert into store values(15,"Cooling Fans",10,120000,4);
insert into store values(16,"Power Supply",15,100000,4);

select * from store order by price;

select sum(quantity) from store;

select avg(price) from store;

select item,price,quantity from store where ratings = (select max(ratings) from store);