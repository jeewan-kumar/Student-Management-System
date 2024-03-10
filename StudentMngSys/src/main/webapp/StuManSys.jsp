<%@ page import="com.studentmngsys.dob.StudentaDao" %>
<%@ page import="com.studentmngsys.dob.StudentDaoImp" %>
<%@ page import="com.student_view.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Management System</title>
</head>
<body>
    <h2>Student Management System</h2>
    
    <h3>Update Student</h3>
    <form action="UpdateServlet" method="post">
        Roll Number: <input type="text" name="rollno" required><br><br>
        <!-- Add other fields for updating -->
        <input type="submit" value="Update">
    </form>
    
    <h3>Delete Student</h3>
    <form action="DeleteServlet" method="post">
        Roll Number: <input type="text" name="rollno" required><br><br>
        <input type="submit" value="Delete">
    </form>
    
    <h3>Register Student</h3>
    <form action="RegisterServlet" method="post">
        <!-- Add fields for registering -->
        Roll Number: <input type="text" name="rollno" required><br><br>
        Name: <input type="text" name="name" required><br><br>
        <!-- Add other fields for registering -->
        <input type="submit" value="Register">
    </form>
    
    <h3>Find Student By Roll Number</h3>
    <form action="FindServlet" method="get">
        Roll Number: <input type="text" name="rollno" required><br><br>
        <input type="submit" value="Find">
    </form>
    
    <h3>List of All Students</h3>
    <form action="ListServlet" method="get">
        <input type="submit" value="List All Students">
    </form>
</body>
</html>
