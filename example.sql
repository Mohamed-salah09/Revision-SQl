CREATE TABLE Student(
    student_id INT PRIMARY KEY,
    full_name TEXT NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone TEXT,
    major TEXT,
    year DATE
);

CREATE TABLE Course(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL
);

CREATE TABLE Enrollment(
    enrollment_id INT PRIMARY KEY,
    student_id INT REFERENCES Student(student_id),
    course_id INT REFERENCES Course(course_id),
    enrollment_date DATE NOT NULL
);


-- =========================
-- Insert 5 Students
-- =========================

INSERT INTO Student(student_id, full_name, email, phone, major, year)
VALUES
(1, 'Mohamed Salah', 'mohamedsalah09@gmail.com', '01000000000', 'CS', '2024-01-01'),
(2, 'Ahmed Mohamed', 'ahmedmohamed@example.com', '01000000001', 'IT', '2024-01-01'),
(3, 'Omar Hassan', 'omarhassan@example.com', '01000000002', 'CS', '2023-01-01'),
(4, 'Youssef Ali', 'youssefali@example.com', '01000000003', 'IS', '2024-01-01'),
(5, 'Mahmoud Samir', 'mahmoudsamir@example.com', '01000000004', 'AI', '2022-01-01');



-- =========================
-- Insert 5 Courses
-- =========================

INSERT INTO Course(course_id, course_name, credits)
VALUES
(101, 'Database Systems', 3),
(102, 'Data Structures', 3),
(103, 'Object Oriented Programming', 4),
(104, 'Computer Networks', 3),
(105, 'Software Engineering', 3);

 

-- =========================
-- Insert 5 Enrollments
-- =========================

INSERT INTO Enrollment(
    enrollment_id,
    student_id,
    course_id,
    enrollment_date
)
VALUES
(1, 1, 101, '2026-09-20'),
(2, 1, 102, '2026-09-21'),
(3, 2, 103, '2026-09-20'),
(4, 3, 104, '2026-09-22'),
(5, 4, 105, '2026-09-23');

-- lets now  do the queries 

-- select statement 
select * from Course;

-- + addition  in SQL 

select phone+major from Student;


-- HARD QUERY 

SELECT full_name FROM Student join Enrollment  on  Student.student_id =Enrollment.Student_id
 join Course on Course.course_id=Enrollment.course_id where   course_name="Database Systems"


SELECT full_name FROM Student join Enrollment
 on 
 Student.student_id =Enrollment.student_id 
join 
Course  
on  Course.course_id=Enrollment.course_id where Course.credits=4;

-- sub query 

SELECT full_name FROM Student where student_id in (SELECT student_id FROM Enrollment where course_id=101);







