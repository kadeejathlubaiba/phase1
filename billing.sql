create database bill;

use bill;

create table category(cid int primary key,category varchar(40));

insert into category values(1,'mobilephone');
insert into category values(2,'laptop');
insert into category values(3,'tablet');
insert into category values(4,'powerbank');
select * from category;



create table products(productCode int primary key,descProduct varchar(100),qty smallint,ratePerUnit float,cid int references category(cid) );

insert into products values(101,'samsung',2,10000,1);
insert into products values(102,'mac',1,1000,2);
insert into products values(103,'lenovo',4,15000,3);
insert into products values(104,'mi',1,3000,4);
select * from products




create table gst(cid int references category(cid),gstvalue float);
insert into gst values(1,1.57);
insert into gst values(2,1.25);
insert into gst values(3,2.0);
insert into gst values(4,5.0);

select * from gst;




>>1.

select products.productCode,products.qty,products.ratePerUnit,gst.gstValue,
(products.ratePerUnit * gst.gstValue) as 'net_rate'
from products
join gst on products.cid=gst.cid
join category on products.cid=category.cid;




>>2.

select products.productCode,products.descProduct,products.qty,
products.ratePerUnit,products.cid ,gst.gstValue from products join 
gst on products.cid=gst.cid 
join category on products.cid=category.cid
where  category.category = 'mobilephone'
order by gst.gstValue;





>>3. select * from products where descProduct ='samsung' order by ratePerUnit desc;

