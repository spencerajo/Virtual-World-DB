--2    Implement SQL statements that will populate each table with at least 3 records. 

insert into country (c_name, govt, leader) values ('Uruguay', 'dem', 'Pou');
insert into country (c_name, govt, leader) values ('Africa', 'dem', 'Ramaphosa');
insert into country (c_name, govt, leader) values ('UK', 'mona', 'ElizabethII'); 

insert into resourc (c_name, reso) values ('Uruguay', 'Oil');
insert into resourc (c_name, reso) values ('Uruguay', 'Wheat');
insert into resourc (c_name, reso) values ('Africa', 'Gold'); 
insert into resourc (c_name, reso) values ('UK', 'Fish'); 
insert into resourc (c_name, reso) values ('Africa',  'Wood'); 

insert into territory (terr_id, desc_name, clim_desc, c_name) values ('1011', 'Cold Terr', 'Cold', 'UK'); 
insert into territory (terr_id, desc_name, clim_desc, c_name) values ('1012', 'Humid Terr', 'Humid', 'Uruguay');
insert into territory (terr_id, desc_name, clim_desc, c_name) values ('1013', 'Dry Terr', 'Dry', 'Africa');  

insert into settlement (sett_name, date_found, xpos, ypos, elevation, terr_id) values ('Orion', TO_DATE( '02 Jan 2023', 'DD MON YYYY'), '2.34', '-.37', '0.13', '1013'); 
insert into settlement (sett_name, date_found, xpos, ypos, elevation, terr_id) values ('Leon', TO_DATE( '03 Feb 2020' , 'DD MON YYYY'), '1.11', '2.22', '0.11', '1012');
insert into settlement (sett_name, date_found, xpos, ypos, elevation, terr_id) values ('Zeta', TO_DATE( '04 Mar 2018' , 'DD MON YYYY'), '-3.11', '4.02', '4.57', '1011'); 
insert into settlement (sett_name, date_found, xpos, ypos, elevation, terr_id) values ('Hughmon', TO_DATE( '14 Nov 1947', 'DD MON YYYY'), '5.55', '-6.67', '0.56', '1013'); 
insert into settlement (sett_name, date_found, xpos, ypos, elevation, terr_id) values ('Lili', TO_DATE( '15 Dec 2002', 'DD MON YYYY'), '0.02', '7.88', '5.50', '1012'); 
insert into settlement (sett_name, date_found, xpos, ypos, elevation, terr_id) values ('Squilliamville', TO_DATE( '20 Apr 2059', 'DD MON YYYY'), '-6.44', '7.88', '0.55', '1011'); 

insert into city (city_name, mayor, population) values ('Zeta', 'White', '4001'); 
insert into city (city_name, mayor, population) values ('Orion', 'Blue', '2000');
insert into city (city_name, mayor, population) values ('Leon', 'Yellow', '5000'); 

insert into village (riv_name, sett_name) values ('Brazos', 'Squilliamville'); 
insert into village (riv_name, sett_name) values ('Red', 'Lili'); 
insert into village (riv_name, sett_name) values ('Miss', 'Hughmon'); 

insert into Capital_of (city_name, c_name) values ('Zeta', 'UK');
insert into Capital_of (city_name, c_name) values ('Orion', 'Africa');
insert into Capital_of (city_name, c_name) values ('Leon', 'Uruguay');

insert into Lends_to (lender, borrower) values ('Uruguay', 'UK'); 
insert into Lends_to (lender, borrower) values ('Uruguay', 'Africa'); 
insert into Lends_to (lender, borrower) values ('UK', 'Uruguay');

insert into usr (email, username, logo, motto) values ('spencerj1@gmail.com', '1337h4xorz', 'Tiger', 'Agile'); 
insert into usr (email, username, logo, motto) values ('s2j@gmail.com', '25crazyboi', 'Bear', 'Defensive' );
insert into usr (email, username, logo, motto) values ('spjn3@gmail.com', 'trajo592', 'Monkey', 'Clever'); 

insert into char_name (name_of_char, email) values ('Mightus', 'spencerj1@gmail.com');
insert into char_name (name_of_char, email) values ('Borealis', 's2j@gmail.com'); 
insert into char_name (name_of_char, email) values ('Triton', 'spjn3@gmail.com'); 
insert into char_name (name_of_char, email) values ('Sheeva', 'spencerj1@gmail.com'); 
insert into char_name (name_of_char, email) values ('GaryBusey35', 's2j@gmail.com'); 

insert into character (name_of_char, email, species, tot_point) values ('Mightus', 'spencerj1@gmail.com', 'Orc', '133'); 
insert into character (name_of_char, email, species, tot_point) values ('Sheeva', 'spencerj1@gmail.com', 'Barbarian', '10'); 
insert into character (name_of_char, email, species, tot_point) values ('Borealis', 's2j@gmail.com', 'Warrior', '123'); 
insert into character (name_of_char, email, species, tot_point) values ('Triton', 'spjn3@gmail.com', 'Wizard', '400'); 
insert into character (name_of_char, email, species, tot_point) values ('GaryBusey35', 's2j@gmail.com', 'Human', '1000'); 


insert into skill_set (name_of_char, skill, email) values ('Mightus', 'Science', 'spencerj1@gmail.com');
insert into skill_set (name_of_char, skill, email) values ('Mightus', 'Charisma', 'spencerj1@gmail.com'); 
insert into skill_set (name_of_char, skill, email) values ('Sheeva', 'Pottery', 'spencerj1@gmail.com');
insert into skill_set (name_of_char, skill, email) values ('Sheeva', 'Archery', 'spencerj1@gmail.com');
insert into skill_set (name_of_char, skill, email) values ('Borealis', 'Swordsman', 's2j@gmail.com'); 
insert into skill_set (name_of_char, skill, email) values ('Borealis', 'Archery', 's2j@gmail.com'); 
insert into skill_set (name_of_char, skill, email) values ('GaryBusey35', 'Speech', 's2j@gmail.com'); 
insert into skill_set (name_of_char, skill, email) values ('GaryBusey35', 'Intellect', 's2j@gmail.com'); 
insert into skill_set (name_of_char, skill, email) values ('Triton', 'Magic', 'spjn3@gmail.com');
insert into skill_set (name_of_char, skill, email) values ('Triton', 'Alchemy', 'spjn3@gmail.com');


insert into lives_at (sett_name, email, name_of_char, street, street_no, date_of_res) values ('Hughmon', 's2j@gmail.com', 'Borealis', 'Raven St.', '456', TO_DATE( '06 Sep 2000', 'DD MON YYYY')); 
insert into lives_at (sett_name, email, name_of_char, street, street_no, date_of_res) values ('Lili', 'spjn3@gmail.com', 'Triton', 'Washington St.', '752', TO_DATE( '07 Oct 2004', 'DD MON YYYY'));
insert into lives_at (sett_name, email, name_of_char, street, street_no, date_of_res) values ('Lili', 's2j@gmail.com', 'GaryBusey35', 'Amazon St.', '963', TO_DATE( '08 Dec 2024', 'DD MON YYYY')); 
insert into lives_at (sett_name, email, name_of_char, street, street_no, date_of_res) values ('Orion', 'spencerj1@gmail.com', 'Mightus', 'Blackbird St.', '565', TO_DATE ( '09 Jan 2020', 'DD MON YYYY')); 
insert into lives_at (sett_name, email, name_of_char, street, street_no, date_of_res) values ('Zeta', 'spencerj1@gmail.com', 'Sheeva', 'Mockingbird St', '123', TO_DATE( '04 Mar 2019', 'DD MON YYYY'));
insert into lives_at (sett_name, email, name_of_char, street, street_no, date_of_res) values ('Hughmon', 's2j@gmail.com', 'GaryBusey35', 'Willow St.', '555', TO_DATE( '07 Sep 2000', 'DD MON YYYY')); 

