-- Active: 1694601121833@@127.0.0.1@5432@university@university

CREATE TABLE Groups(
    Group_id serial PRIMARY KEY,
    Group_name TEXT
)

CREATE TABLE StudyGroup(
    Study_Group_id serial PRIMARY KEY,
    student_id INT,
    Group_id INT,
    Foreign Key (student_id) REFERENCES students(student_id),
    FOREIGN KEY (Group_id) REFERENCES Groups(Group_id)
)

INSERT INTO "groups"
VALUES(DEFAULT,'group1'),(DEFAULT,'group2'),(DEFAULT,'group3')

INSERT INTO study_group
VALUES(DEFAULT,2,3),(DEFAULT,1,1),(DEFAULT,1,3),(DEFAULT,2,1),(DEFAULT,3,2),(DEFAULT,4,2)


SELECT * FROM study_group

SELECT * FROM courses

SELECT * FROM enrollments

SELECT * FROM grades

SELECT * from teachers

SELECT * FROM enrollments

SELECT * FROM grades

SELECT * FROM students

SELECT * FROM teacher_course

SELECT * FROM courses

ALTER TABLE enrollments ADD constraint addUnique UNIQUE(student_id,course_id)

ALTER TABLE grades
ADD FOREIGN KEY (enrollment_id) REFERENCES enrollments(enrollment_id);

ALTER TABLE grades ADD constraint UniqueAdded UNIQUE(enrollment_id)