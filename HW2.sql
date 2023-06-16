/* 1. Output all fields and all lines.*/
select * from students;

/*2. Output all students in the table*/
select * from students;

/*3. Output only user IDs*/
select id from students;

/* 4. Output only the user names  */
select name from students;

/* 5. Output only users' email */
select  email from students;

/*6. Output the name and email of users*/
select name, email from students;

/* 7. Output id, name, email and date of creation of users*/
select id, name, email, created_on from students;

/* 8. Output users where password = 12333*/
select * from students
where password = '12333';

/* 9. Output users who were created 2021-03-26 00:00:00*/
select * from students
where created_on = '2021-03-26 00:00:00';

/* 10. Output users where the word Anna is in the name*/
select * from students
where name like '%Anna%';

/* 11. Output users where there are 8*/
select * from students
where name like '%8';

/* 12. Output users where the name has the letter a*/
select * from students
where name like '%a%';

/*13. Output users who were created 2021-07-12 */
select * from students
where created_on = '2021-07-12 00:00:00';

/*14. Output users who were created on 2021-07-12 00:00:00 and have the password 1m313*/
select * from students
where created_on = '2021-07-12 00:00:00' and password = '1m313';

/* 15. Output users who were created on 2021-07-12 00:00:00 and who have the word Andrey*/
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';

 /*16. Output users who were created on 2021-07-12 00:00:00 and who have the number 8 in their name*/
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%8%';

 /*17. Output users whose id is 110*/
select * from students
where id = 110;

 /*18. Output users whose id is equal to 153*/
select * from students
where id = 153;

 /*19. Output users whose id is greater than 140*/
select * from students
where id > 140;

 /*20. Output users whose id is less than 130*/
select * from students
where id < 130;

 /*21. Output users whose id is less than 127 or more than 188*/
select * from students
where id < 127 or id > 188;

 /*22. Output users whose id is less than or equal to 137*/
select * from students
where id <= 137;

 /*23. Output users whose id is greater than or equal to 137*/
select * from students
where id >= 137;

 /*24. Output users whose id is greater than 180 but less than 190*/
select * from students
where id > 180 and id < 190;

 /*25. Output a user whose id is between 180 and 190*/
select * from students
where id between 180 and 190;

 /*26. Output users where password is 12333, 1m313, 123313*/
select * from students
where password in ('12333', '1m313', '123313');

 /*27. Output users where created_on is equal to 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00*/
select * from students
where created_on in ('2020-10-03 00:00:00','2021-05-19 00:00:00','2021-03-26 00:00:00');

 /*28. Output the minimum id*/
select min(id) as min_id from students;

 /*29. Output the maximum id*/
select max(id) as max_id from students;

 /*30. Output the number of users*/
select count(id) as amount_of_students from students;

 /*31. Output the user id, name, date of creation of the user. Sort by ascending order of the date the user was added.*/
select id, name, created_on from students
order by created_on;

 /*32. Output the user id, name, date of creation of the user. Sort by descending order of the date the user was added.*/
select id, name, created_on from students
order by created_on desc;
