
CREATE TABLE university.Enrollments(
	enrollment_id serial PRIMARY KEY,
	student_id INT, 
	course_id INT,
	FOREIGN KEY (student_id) REFERENCES university.students(student_id),
	FOREIGN KEY (course_id) REFERENCES university.courses(course_id)
)


INSERT INTO university.Enrollments
VALUES(default,1,1),(default,2,1),(default,3,2),(default,4,3),(default,1,3);
SELECT * FROM university.enrollments;

CREATE TABLE university.Teacher_Course(
	TeacherCourse_id serial PRIMARY KEY,
	teacher_id INT,
	course_id INT,
	FOREIGN KEY (teacher_id) REFERENCES university.teachers(teacher_id),
	FOREIGN KEY (course_id) REFERENCES university.courses(course_id)
);


INSERT INTO university.teacher_course
VALUES(default,1,1),(default,2,2),(default,3,3);



CREATE TABLE university.Grades(
test_id SERIAL PRIMARY KEY,
	student_id INT NOT NULL,
    course_id INT,
	score INT DEFAULT 0 
	CHECK (score<=100),
	bonus INT DEFAULT 0,
	FOREIGN KEY (student_id) REFERENCES university.students(student_id),
    FOREIGN KEY (course_id) REFERENCES university.courses(course_id)
);

insert INTo university.Grades
VALUES (DEFAULT,2,2,88);


INSERT INTO university.Grades
VALUES (DEFAULT,1,3,72);

SELECT * FROM grades

SELECT c.course_name,avg(score)
from university.Grades as g
inner join courses as c on c.course_id = G.course_id
group by c.course_id