create database if not exists social_media_site;

use social_media_site;

drop table if exists user;
drop table if exists post;
drop table if exists comment;

create table user (
	user_id int NOT NULL auto_increment primary key,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

create table post (
post_id int NOT NULL  auto_increment primary key,
user_id INT NOT NULL,
post_data VARCHAR(300) NOT NULL,
creation_date TIMESTAMP NOT NULL,
foreign key (user_id) references user (user_id)
);

create table comment (
 comment_id int NOT NULL auto_increment primary key,
 user_id INT NOT NULL,
 post_id INT NOT NULL,
 comment_data VARCHAR(300) NOT NULL,
 creation_date TIMESTAMP NOT NULL,
 foreign key (user_id) references user (user_id),
 foreign key (post_id) references post (post_id)
);