<%@page import="com.jsp.exception.StudentNotFoundException"%>
<%@ page import="com.studentmngsys.dob.StudentaDao" %>
<%@ page import="com.studentmngsys.dob.StudentDaoImp" %>
<%@ page import="com.student_view.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            width: 50%;
            margin: 20px auto;
            text-align: center;
        }

        button {
            padding: 10px 20px;
            margin: 10px;
            cursor: pointer;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Student Management System</h2>
    <form method="get">
        <button onclick="window.location.href='Register.jsp'">Register Student</button>
        <button onclick="window.location.href='Find.jsp'">Find Student</button>
        <button onclick="window.location.href='Update.jsp'">Update Student</button>
        <button onclick="window.location.href='Delete.jsp'">Delete Student</button>
        <button onclick="window.location.href='List.jsp'">List All Students</button>
    </form>
</body>
</html>
