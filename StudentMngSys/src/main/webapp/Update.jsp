<%@ page import="com.jsp.exception.StudentNotFoundException" %>
<%@ page import="com.studentmngsys.dob.StudentaDao" %>
<%@ page import="com.studentmngsys.dob.StudentDaoImp" %>
<%@ page import="com.student_view.Student" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student By Roll Number</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        h2 {
            color: #333;
            text-align: center;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin: 0 auto;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<%
    
    int rollno = Integer.parseInt(request.getParameter("id"));
     
        StudentaDao dao = new StudentDaoImp();
        Student student = dao.findStudentById(rollno);
   
%>

<h2>Update Student By Roll Number</h2>
<form action="updatestudent" method="post">
    <label for="rollno">Enter Roll Number:</label><br>
    <input type="text" id="rollno" name="rollno" required value="<%= student.getRollno() %>"><br><br>
    <label for="name">Name:</label><br>
    <input type="text" id="name" name="name" required value="<%= student.getName() %>"><br><br>
    <label for="phone">Phone:</label><br>
    <input type="text" id="phone" name="phone" required value="<%= student.getPhone() %>"><br><br>
    <label for="email">Email:</label><br>
    <input type="email" id="email" name="email" required value="<%= student.getEmail() %>"><br><br>
    <label for="age">Age:</label><br>
    <input type="text" id="age" name="age" required value="<%= student.getAge() %>"><br><br>
    <label for="address">Address:</label><br>
    <input type="text" id="address" name="address" required value="<%= student.getAddress() %>"><br><br>
    <label for="password">Password:</label><br>
    <input type="password" id="password" name="password" required><br><br>
    <input type="submit" value="Update">
</form>


</body>
</html>
