<%@ page import="com.studentmngsys.dob.StudentaDao" %>
<%@ page import="com.studentmngsys.dob.StudentDaoImp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Student By Roll Number</title>
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
            background-color: #fff;
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #d9534f;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #c9302c;
        }

        p {
            text-align: center;
            color: #d9534f;
        }
    </style>
</head>
<body>
    <h2>Delete Student By Roll Number</h2>
    <form action="deleteStudent" method="post">
        <label for="rollno">Enter Roll Number:</label><br>
        <input type="text" id="rollno" name="rollno" required><br><br>
        <input type="submit" value="Delete">
    </form>

    <%-- Display success or error message --%>
    <% 
        String message = (String) request.getAttribute("message"); 
        if (message != null) { 
    %>
        <p><%= message %></p>
    <% } %>
</body>
</html>
