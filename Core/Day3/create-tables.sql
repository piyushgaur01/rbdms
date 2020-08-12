CREATE TABLE Applicant 
(
  ApplicantId     varchar(4)   CONSTRAINT applicant_pk                     PRIMARY KEY,
  ApplicantName   varchar(30)  CONSTRAINT applicant_applicantname_notnull  NOT NULL,
  Emailid         varchar(30)  CONSTRAINT applicant_emailid_uq             UNIQUE,
  Address         varchar(50),
  City            varchar(15)
);

CREATE TABLE Branch
(
  BranchId        varchar(2)   CONSTRAINT branch_pk             PRIMARY KEY
    CONSTRAINT branch_bid_check                 CHECK (BranchId like 'B%'),
  BranchName      varchar(30)  CONSTRAINT branch_name_notnull   NOT NULL
);

CREATE TABLE Course
(
CourseId          varchar(4)   CONSTRAINT course_pk             PRIMARY KEY,
CourseName        varchar(30)  CONSTRAINT course_cname_notnull  NOT NULL,
Semester          numeric(1),
BranchId          varchar(2)   CONSTRAINT course_fk_branchid    REFERENCES Branch(BranchId),
Elective          char(1)      CONSTRAINT course_elective_check CHECK (Elective in ('Y', 'N')),
ProjectMarks      numeric(3),
AssignmentMarks   numeric(3),
InternalMarks     numeric(3),
SemesterExamMarks numeric(3)
);

CREATE TABLE Student
(
StudentId          varchar(4)  CONSTRAINT student_pk             PRIMARY KEY,
ApplicantId        varchar(4)  CONSTRAINT student_fk_applid      REFERENCES Applicant(ApplicantId),
CurrentSemester    numeric(1),
UserId             varchar(15) CONSTRAINT student_userid_uq      UNIQUE,
Password          char(1)      CONSTRAINT student_pass_notnull   NOT NULL
);

CREATE TABLE Registration
(
StudentId         varchar(4)  CONSTRAINT registration_fk_studentid  REFERENCES Student(StudentId),
CourseId          varchar(4)  CONSTRAINT registration_fk_courseid   REFERENCES Course(CourseId),
DateOfExam        Date,
ProjectMarks      numeric(3),
AssignmentMarks   numeric(3),
InternalMarks     numeric(3),
SemesterMarks     numeric(3),
Grade             char(1)
);

CREATE TABLE Department
(
  DepartmentId      numeric(2)   CONSTRAINT  department_pk            PRIMARY KEY,
  DepartmentName    varchar(30)  CONSTRAINT  department_dname_notnull NOT NULL,
  HeadOfDepartment  varchar(4)
);

