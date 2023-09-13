CREATE SCHEMA university

CREATE TABLE university.Students(
	student_id serial Primary Key,
first_name text Not Null,
last_name text Not Null,
date_of_birth date,
email text Unique
)

CREATE TABLE university.Teachers(
teacher_id serial Primary Key,
first_name text Not Null,
last_name text Not Null,
date_of_birth date,
email text Unique,
department text,
hire_date date
)

CREATE TABLE university.Courses(
course_id serial Primary Key,
course_name text Not Null,
department text,
credits numeric
)

CREATE TABLE university.Scores(
test_id serial PRIMARY key,
	score int DEFAULT 0
)

INSERT INTO university.students
VALUES 
(DEFAULT,'John','Doe','1990-01-15','john.doe@example.com'),
(DEFAULT,'Jane','Smith','1992-05-20','jane.smith@example.com'),
(DEFAULT,'Michael','Johnson','1991-09-10','michael.johnson@example.com'),
(DEFAULT,'Emily','Davis','1993-03-25','emily.davis@example.com')

select * from university.students;

INSERT INTO university.teachers
VALUES 
(default,'Professor','Anderson','1975-04-08','prof.anderson@example.com','Computer Science','2010-08-15'),
(default,'Dr. Sarah','Wilson','1980-12-20','sarah.wilson@example.com','Mathematics','2015-05-02'),
(default,'Mr. James','Brown','1978-06-14','james.brown@example.com','History','2009-11-11');

select * from university.teachers;

INSERT INTO university.courses
VALUES 
(default,'Introduction to Programming','Computer Science',3),
(default,'Calculus I','Mathematics',4),
(default,'World History','History',3);

select * from university.courses;
