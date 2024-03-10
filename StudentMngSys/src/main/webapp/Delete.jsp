<%@ page import="com.studentmngsys.dob.StudentaDao" %>
<%@ page import="com.studentmngsys.dob.StudentDaoImp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Student By Roll Number</title>
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
