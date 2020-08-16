
/*********************************** VERY SIMPLE QUERIES ******************************************
1.  List the name of different cities from where applicants belong to.
2.  List the different semesters in which students have enrolled.
3.  List the distinct InstructorId and courseid from CourseAllocation table.
4.  List the name of course which are not electives.
5.  List the name of instructor who has joined before 01-jan-2002
6.  List Id of courses whose ending date is before the current system date.
7.  List the name of applicant from Mysore and Bangalore.
8.  List the name of applicants who do not belong to Mysore.
9.  List the name of semester 1 and semester 2 courses which belongs to branch B1.
10. List the name of courses which are elective and project marks is equal to 20.
11. List the name of the course in which project marks is greater than the semester marks.
12. List the details of all the applicant who belong to Bangalore, Mysore or Hydrabad
13. List the details of courses which are taught in semester 1, 2 or 3.
14. List the studentId who have secured marks between 80 to 100.
15. List the student details in ascending order of their applicantid.
16. List the details of instructor on ascending order of their date of joining.
17. List the details of instructor on descending order of department no and ascending order of Joining date.
18. List the name of instructors starting with ‘R’ and ending with ‘n’
19. List the details of instructors whose date of joining is in the month of March.
20. List the details of applicant whose email id contains a character ‘_’
21. List the applicant who do not have email id in their applicant detail information .
22. List the course Id which has project Marks in its course detail information.
*******************************************************************************************************/

/****************************     ADVANCED QUERIES WITH AGGREGATION      ******************************
1. List the Branch Id and the number of courses offered by each Branch
2. List the number of courses which do not have Project Marks
3. List the Branch Id and the number of electives offered in each branch
4. List the Course Id, average total marks obtained in each Course
Hint: Total marks= project marks + assignment marks + internal marks +semester marks
5. List the number of courses for which exam was conducted between 1-Jan-2008 and 30-May-2008
6. List the Instructor Id, number of different Courses offered by an Instructor
7. List the Course Id which is offered by more than one instructor
8. List the Instructor Ids who have finished handling at least two courses during the year 2008
9. List the total strength of students staying in each Hostel
10.List the total marks in each Semester of a Branch
Hint: total marks= project marks + assignment marks + internal marks + semester marks
11. List the Student Id, Student Name if the student has an Email Id
12.List the names of students currently studying in 5th semester
13.List the names of students along with the course names for which they have registered
14.List the name of the course and the number of ‘A’ grades obtained in that course
15.List the name of department along with the instructor name who is heading
that department if he has minimum two years of experience in the College.
Infosys Technologies Limited Lab Guide for RDBMS
ER/CORP/CRS/DB92 Version No. 1.0 30 of 44
16.List the name of course, name of instructor, start date, end date if that course is allotted to the instructor
17.List the student id and hostel id if they are staying in the hostel. Also display the student ids who are not staying in the hostel
18.List the names of applicants and their User Id and Password. Display NULL for User Id and Password if they don’t get admission
19.List the instructor name, branch name, number of courses taught by the instructor in that branch
20.List the student name and course name in which they have scored ‘D’ grade
21.List the course names which have duration less than or equal to 4 days
22.List the name of the instructor and the course names they are teaching on ’27- Aug-2008’
23.List the names of students who are not staying in Hostel
24.List the student name, course name and the number of days present for each course conducted
25.List the names of courses handled by the instructors who are also head of departments
26.List the names of applicants who got admission into Computer Science branch
27.List the names of instructors who are handling elective courses
*******************************************************************************************************/

--ANS 1
SELECT BranchId, COUNT(*) FROM Course GROUP BY BranchId;

--ANS2
select * from course where ProjectMarks IS NULL

--ANS3
Select branchid, count(*) from course where elective = 'Y' group by branchid

--Ans4
Select CourseId, avg(projectmarks + assignmentmarks + internalmarks + semestermarks) 
as total from registration group by courseid order by total desc

--Ans5
Select * from registration where dateofexam > '2008-01-01' and dateofexam < '2008-06-01';

--Ans6
Select ca.instructorid, i.instructorname, count(*) as count from courseallocation ca, instructor i 
where ca.instructorid = i.instructorid group by i.instructorname, ca.instructorid order by count desc, ca.instructorid asc;

--Ans7
SELECT courseid, COUNT(*) FROM
(SELECT courseid, instructorid, COUNT(*) FROM courseallocation GROUP BY courseid, instructorid ORDER BY courseid) AS temptable
GROUP BY courseid HAVING COUNT(*) > 1

--Ans8
SELECT instructorid, COUNT(*) FROM
(SELECT instructorid, courseid, COUNT(*) FROM courseallocation WHERE startdate > '2008-01-01' and enddate < '2008-12-31' 
 GROUP BY instructorid,courseid ORDER BY instructorid) AS temptable
GROUP BY instructorid HAVING COUNT(*) > 1

--Ans9
Select hostelid, count(*) from hostel group by hostelid

--Ans10
Select branchid, semester, sum(total) FROM
(Select r.courseid, c.semester, c.branchid, (r.projectmarks + r.assignmentmarks + r.internalmarks + r.semestermarks) as total
from registration r, course c where r.courseid = c.courseid) as temptable
group by branchid, semester order by branchid, semester

--Ans11 Simple Join

--Ans12 Simple

--Ans13
Select a.applicantname, c.coursename from registration r, course c, applicant a, student s
where a.applicantid = s.applicantid and r.courseid = c.courseid and r.studentid = s.studentid

--Ans14 Simple

--Ans15
Select d.departmentname, i.instructorname from department d, instructor i
where d.headofdepartment = i.instructorid and i.dateofjoining < '2008-01-01'

--Ans24
Select coursename from course where courseid in
(Select distinct(courseid) from courseallocation where instructorid in (Select headofdepartment from department) order by courseid)