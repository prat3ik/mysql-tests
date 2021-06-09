create table Restaurent(id integer, branch varchar(100), city varchar(100));
insert into Restaurent(id, branch, city) values(1, "Adajan", "Surat");
insert into Restaurent(id, branch, city) values(2, "Pal", "Surat");
insert into Restaurent(id, branch, city) values(3, "Nilam baug", "Bhavnagar");

create table Review(id integer, star integer(5), review varchar(100), rest_id_fk integer, user_id_fk integer);
insert into Review(id, star, review, rest_id_fk, user_id_fk) values(1, 4, "Good", 1, 2);
insert into Review(id, star, review, rest_id_fk, user_id_fk) values(2, 2, "Bad", 2, 1);
insert into Review(id, star, review, rest_id_fk, user_id_fk) values(3, 5, "Best", 1, 3);
insert into Review(id, star, review, rest_id_fk, user_id_fk) values(4, 3, "Average", 3, 4);

create table User(id integer, name varchar(20), image_url varchar(100));
insert into User(id, name, image_url) values(1, "Jay", "ffff");
insert into User(id, name, image_url) values(2, "Rani", "aaaa");
insert into User(id, name, image_url) values(3, "Atul", "ffff");
insert into User(id, name, image_url) values(4, "Tan", "11111");

-- select * from Restaurent;
-- select * from Review;
-- select * from User;


-- select Restaurent.id, Restaurent.branch, Review.star, Review.review, User.name from Restaurent, Review, User 
-- where Restaurent.id = Review.rest_id_fk 
-- and Restaurent.id = Review.rest_id_fk 
-- and Review.user_id_fk = User.id 
-- order by Restaurent.id

select * from Restaurent 
left join Review on Restaurent.id = Review.rest_id_fk
left join User on Review.user_id_fk = User.id 
order by Restaurent.id
