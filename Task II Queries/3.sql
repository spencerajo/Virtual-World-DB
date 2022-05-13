--3    Give the name and leader of the country that lends the most resources: 

select lender, leader from
(select max(i) as j from 
(select * from 
(select lender, count(lender) as i from lends_to group by lender), 
(select c_name, leader from country) where lender = c_name)), 
(select * from 
(select lender, count(lender) as i from lends_to group by lender), 
(select c_name, leader from country) where lender = c_name) where i = j; 