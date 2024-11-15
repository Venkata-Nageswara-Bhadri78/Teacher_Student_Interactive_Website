# INTERACTIVE STUDENT-TEACHER WEBSITE

**INSTRUCTIONS TO RUN THE PROJECT**

1. Download TomCat version 9 .zip file and extract it and go to **...apache-tomcat-9.0.93-windows-x64\apache-tomcat-9.0.93\webapps** folder

2. Inside the webapps folder copy the extracted zip file of this repository i.e. COLLEGE_WEBSITE folder

3. Now to start the server go to **...\apache-tomcat-9.0.93-windows-x64\apache-tomcat-9.0.93\bin** folder and open the file **startup.bat** so that the server gets started.

4. Open the browser of your choice and search **http://localhost:8080/COLLEGE_WEBSITE/Main.jsp** so that the webpage opens.


**FEATURES OF THE PROJECT**
1. The Main Agenda of this project is to design a website for students and teachers where anyone can join and access to the books/courses that are available in the website.
2. If the student/teacher is new to the page they can register by entering the registration form with their details including email and password.
4. Once a student/teacher can register they can login to their account whenever they want by using their credentials.

Now the database working in the backend consists of the following data

**DATA RELATED TO DATABASE ALONG WITH QUERIES**
// YOU MUST RUN THE BELOW QUERIES FOR RUNNING OF THIS PROJECT

----------------------------------- START ----------------------------------------
#Default Runs
create database CollegeWebsite_LogInDetails;
use CollegeWebsite_LogInDetails;

create table studentLogIn(
	serial_No int AUTO_INCREMENT primary key,
	name varchar(100),
    email varchar(200),
    password varchar(200),
    mobileNumber varchar(200)
	);

insert into studentLogIn values(null, 'student1', 'student1@gmail.com', 'Student@123', '987654321');
insert into studentLogIn values(null, 'student2', 'student2@gmail.com', 'Student@123', '123456789');
insert into studentLogIn values(null, 'student3', 'student3@gmail.com', 'Student@123', '987654372');

create table teacherLogIn(
	serial_No int AUTO_INCREMENT primary key,
	fullname varchar(100),
    email varchar(200),
    password varchar(200),
    mobileNumber varchar(200)
	);
insert into  teacherLogIn values(null, 'Teacher1', 'teacher1@gmail.com', 'teach@123', '9876543210');
insert into  teacherLogIn values(null, 'Teacher2', 'teacher2@gmail.com', 'teach@123', '8976583432');
insert into  teacherLogIn values(null, 'Teacher3', 'teacher3@gmail.com', 'teach@123', '6784934592');

create table coursesData(
	courseID varchar(100) unique not null,
	courseName varchar(100),
    price varchar(100),
    author varchar(100)
    );
insert into coursesData values('JAVA123', 'JAVA', '1200', 'teacherName1');
insert into coursesData values('PYTYHON123', 'PYTHON', 'Free', 'teacherName2');
insert into coursesData values('JAVASCRIPT123', 'JAVASCRIPT', '345', 'teacherName3');

show tables;
select * from studentlogin;
select * from teacherlogin;
select * from coursesdata;

------------------------ END ----------------------------------------
//Copy above complete queries and run it in your MySQL server, so that your database is set for running.

//Here is the explanation for above database data.

To store Students Login details use the query : (DESCRIBE STUDENTLOGIN;)

+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| serial_No  | int          | NO   | PRI | NULL    | auto_increment |
| name       | varchar(100) | YES  |     | NULL    |                |
| email      | varchar(200) | YES  |     | NULL    |                |
| password   | varchar(200) | YES  |     | NULL    |                |
| mobileNumber | varchar(200) | YES |    | NULL    |                |
+------------+--------------+------+-----+---------+----------------+

For storing teachers login details : (DESCRIBE TEACHERLOGIN;)

+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| serial_No   | int          | NO   | PRI | NULL    | auto_increment |
| fullname    | varchar(100) | YES  |     | NULL    |                |
| email       | varchar(200) | YES  |     | NULL    |                |
| password    | varchar(200) | YES  |     | NULL    |                |
| mobileNumber| varchar(200) | YES  |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+

Once a student/teacher tries to register/login to their account this data is used for actions.

For storing details related to courses : (DESCRIBE COURSESDATA;)

+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| courseID   | varchar(100) | NO   | PRI | NULL    |       |
| courseName | varchar(100) | YES  |     | NULL    |       |
| price      | varchar(100) | YES  |     | NULL    |       |
| author     | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
 
After Sucessfully constructed the database and data of tables inside it.

//Now you are all set to run the project
