show databases;
create database pitutioncenter;
use pitutioncenter;
show tables;

create table admin(
	id varchar(30),
    name varchar(30),
    place varchar(30),
    email varchar(30),
    pswd varchar(30),
    mobile varchar(30)
);

select * from admin;

create table bookcourse(
	sid varchar(30),
    sname varchar(30),
    email varchar(30),
    teacherid varchar(30),
    teachername varchar(30),
    date varchar(30),
    slot varchar(30),
    course varchar(30),
    payment varchar(30)
);

select * from bookcourse;

create table feedback (
	sid varchar(30),
    rating varchar(30)
);

select * from feedback;

create table student(
	id varchar(30),
    name varchar(30),
    place varchar(30),
    email varchar(30),
    pswd varchar(30),
    mobile varchar(30)
);

select * from student;

create table subject(
	id varchar(30),
    name varchar(30),
    fee varchar(30)
);

select * from subject;

create table teacher(
	id varchar(30),
    name varchar(30),
    place varchar(30),
    email varchar(30),
    pswd varchar(30),
    mobile varchar(30)
);

select * from teacher;

create table timetable(
	date varchar(30),
    id varchar(30),
    name varchar(30),
    subject varchar(30),
    slot1 varchar(30),
    slot2 varchar(30),
    slot3 varchar(30),
    slot4 varchar(30)
);

select * from timetable;