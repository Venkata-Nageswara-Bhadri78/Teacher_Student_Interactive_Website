# College_Webiste_Design

**INSTRUCTIONS TO RUN THE PROJECT**

1. Download TomCat version 9 .zip file and extract it and go to **...apache-tomcat-9.0.93-windows-x64\apache-tomcat-9.0.93\webapps** folder

2. Inside the webapps folder copy the extracted zip file of this repository i.e. COLLEGE_WEBSITE folder

3. Now to start the server go to **...\apache-tomcat-9.0.93-windows-x64\apache-tomcat-9.0.93\bin** folder and open the file **startup.bat** so that the server gets started.

4. Open the browser of your choice and search **http://localhost:8080/COLLEGE_WEBSITE/Main.jsp** so that the webpage opens.

**FEATURES OF THE PROJECT**
1. The Main Agenda of this project is to design a website for students and teachers where anyone can join and access to the books/courses that are available in the website.
2. Student can enroll/register for a course and teacher can add new courses along with accessing them.
3. If the student/teacher is new to the page they can register by entering the registration form with their details including email and password.
4. Once a student/teacher can register they can login to their account whenever they want by using their credentials.

Now the database working in the backend consists of the following data

**DATA RELATED TO DATABASE ALONG WITH QUERIES**

create database CollegeWebsite_LogInDetails;
use CollegeWebsite_LogInDetails;

To store Students Login details use the query

create table studentLogIn(
	serial_No int AUTO_INCREMENT primary key,
	name varchar(100),
    email varchar(200),
    password varchar(200),
    mobileNumber varchar(200)
	);

+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| serial_No  | int          | NO   | PRI | NULL    | auto_increment |
| name       | varchar(100) | YES  |     | NULL    |                |
| email      | varchar(200) | YES  |     | NULL    |                |
| password   | varchar(200) | YES  |     | NULL    |                |
| mobileNumber | varchar(200) | YES |    | NULL    |                |
+------------+--------------+------+-----+---------+----------------+

For storing teachers login details
create table teacherLogIn(
	serial_No int AUTO_INCREMENT primary key,
	fullname varchar(100),
    email varchar(200),
    password varchar(200),
    mobileNumber varchar(200)
	);

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

 
