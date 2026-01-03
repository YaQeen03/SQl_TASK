USE School;

/* ========= Students ========= */
CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    BirthDay DATE NOT NULL,
    Address VARCHAR(100),
    GPA DECIMAL(5,2)
);

/* ========= Family Info ========= */
CREATE TABLE Family_Info (
    ID INT PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    Phone CHAR(10) NOT NULL,
    Family_Student INT,
    FOREIGN KEY (Family_Student) REFERENCES Students(ID)
);

/* ========= Courses ========= */
CREATE TABLE Courses (
    ID INT PRIMARY KEY,
    Name VARCHAR(80),
    Description VARCHAR(120),
    Resource VARCHAR(120)
);

/* ========= Courses_Student ========= */
CREATE TABLE Courses_Student (
    StudentID INT,
    CourseID INT,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(ID),
    FOREIGN KEY (CourseID) REFERENCES Courses(ID)
);

/* ========= Classes ========= */
CREATE TABLE Classes (
    ID INT PRIMARY KEY,
    Class_Code VARCHAR(40),
    Room_Number INT,
    Schedule VARCHAR(40),
    Student_Classes INT,
    FOREIGN KEY (Student_Classes) REFERENCES Students(ID)
);

/* ========= Assignments ========= */
CREATE TABLE Assignments (
    ID INT PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    Description VARCHAR(120),
    Due_Date DATE NOT NULL,
    Status BIT NOT NULL,
    Student_Assignments INT,
    FOREIGN KEY (Student_Assignments) REFERENCES Students(ID)
);

/* ========= INSERT VALUES ========= */

INSERT INTO Students (ID, Name, BirthDay, Address, GPA)
VALUES (1, 'Yaqeen Faisal', '2003-10-02', 'Irbid', 77.66);
INSERT INTO Students (ID, Name, BirthDay, Address, GPA)
VALUES (2, 'Jana Ahmad', '2006-07-20', 'Irbid', 99.6);

INSERT INTO Family_Info (ID, Name, Phone, Family_Student)
VALUES (1, 'Faisal AlTaani', '0791234567', 1);
INSERT INTO Family_Info (ID, Name, Phone, Family_Student)
VALUES (2, 'Ahmad Ali', '0789876543', 2);


INSERT INTO Courses (ID, Name, Description, Resource)
VALUES (1, 'Math', 'Algebra & Geometry', 'math_resource.pdf');
INSERT INTO Courses (ID, Name, Description, Resource)
VALUES (2, 'Python', 'Python Basics', 'python_resource.pdf');


INSERT INTO Courses_Student (StudentID, CourseID)
VALUES (1, 1);
INSERT INTO Courses_Student (StudentID, CourseID)
VALUES (2, 1);

INSERT INTO Classes (ID, Class_Code, Room_Number, Schedule, Student_Classes)
VALUES (1, 'AD4', 101, 'Mon-Wed 8:30-10:30', 1);
INSERT INTO Classes (ID, Class_Code, Room_Number, Schedule, Student_Classes)
VALUES (2, 'BA3', 417, 'Tue-Thu 11:00-1:30', 2);

INSERT INTO Assignments
(ID, Name, Description, Due_Date, Status, Student_Assignments)
VALUES (1, 'JS HW', 'problem solving', '2026-01-10', 0, 1);
INSERT INTO Assignments
(ID, Name, Description, Due_Date, Status, Student_Assignments)
VALUES (2, 'DB Lab', 'Task sql', '2026-01-12', 1, 1);
