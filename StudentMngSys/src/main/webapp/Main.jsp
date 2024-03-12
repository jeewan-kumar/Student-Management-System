<%@ page import="com.jsp.exception.StudentNotFoundException" %>
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
            display: block;
            width: 100%;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Student Management System</h2>
    
    <%
    Student student;
    try {
        int rollno = Integer.parseInt(request.getParameter("id"));
        StudentaDao dao = new StudentDaoImp();
        student = dao.findStudentById(rollno);
    } catch (NumberFormatException e) {
        // Handle the case when the id parameter is not provided or invalid
        // You can display an error message or redirect to an error page
        out.println("Invalid or missing student id.");
        return;
    } catch (StudentNotFoundException e) {
        // Handle the case when the student with the provided id is not found
        // You can display an error message or redirect to an error page
        out.println("Student not found.");
        return;
    }
    %>
    
    <form>
        <button onclick="redirectTo('Register.jsp')">Register Student</button>
        <button onclick="redirectTo('Find.jsp')">Find Student</button>
        <button onclick="redirectTo('Update.jsp')">Update Student</button>
        <button onclick="redirectTo('Delete.jsp')">Delete Student</button>
        <button onclick="redirectTo('List.jsp')">List All Students</button>
    </form>
    
    <script>
        function redirectTo(page) {
            var url = "http://localhost:8080/StudentMngSys/" + page;
            console.log("Redirecting to " + url);
            try {
                window.location.href = url;
            } catch (e) {
                console.error("Error occurred while redirecting: " + e.message);
            }
        }
    </script>
</body>
</html>
