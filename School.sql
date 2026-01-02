USE School;

CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    BirthDay DATE NOT NULL,
    Address VARCHAR(100),
    GPA DECIMAL(5,2)
);

CREATE TABLE Family_info (
    ID INT PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    Phone CHAR(10) NOT NULL,
    Family_Student INT,
    FOREIGN KEY (Family_Student) REFERENCES Students(ID)
);

CREATE TABLE Courses (
    ID INT PRIMARY KEY,
    Name VARCHAR(80),
    Description VARCHAR(120),
    Resource VARCHAR(120)
);

CREATE TABLE Courses_Student (
    StudentID INT,
    CourseID INT,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(ID),
    FOREIGN KEY (CourseID) REFERENCES Courses(ID)
);

CREATE TABLE Classes (
    ID INT PRIMARY KEY,
    Class_Code VARCHAR(40),
    Room_Number INT,
    Schedule VARCHAR(40),
    Student_Classes INT,
    FOREIGN KEY (Student_Classes) REFERENCES Students(ID)
);

CREATE TABLE Assignments (
    ID INT PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    Description VARCHAR(120),
    Due_Date DATE NOT NULL,
    Status BIT NOT NULL,
    Student_Assignments INT,
    FOREIGN KEY (Student_Assignments) REFERENCES Students(ID)
);
