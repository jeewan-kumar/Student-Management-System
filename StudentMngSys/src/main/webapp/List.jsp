<%@ page import="java.util.List" %>
<%@ page import="com.studentmngsys.dob.StudentaDao" %>
<%@ page import="com.studentmngsys.dob.StudentDaoImp" %>
<%@ page import="com.student_view.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List of All Students</title>
</head>
<body>
    <h2>List of All Students</h2>
    <table border="1">
        <tr>
            <th>Roll Number</th>
            <th>Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Age</th>
            <th>Address</th>
            <th>Password</th>
        </tr>
        <% 
            StudentaDao dao = new StudentDaoImp();
            List<Student> students = dao.findAllStudents(); 
            for(Student student : students) {
        %>
        <tr>
            <td><%= student.getRollno() %></td>
            <td><%= student.getName() %></td>
            <td><%= student.getPhone() %></td>
            <td><%= student.getEmail() %></td>
            <td><%= student.getAge() %></td>
            <td><%= student.getAddress() %></td>
            <td><%= student.getPassword() %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
