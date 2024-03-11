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
</head>
<body>
   <%
        int rollno;
        String rollnoParam = request.getParameter("rollno");
        if (rollnoParam != null && !rollnoParam.isEmpty()) {
            rollno = Integer.parseInt(rollnoParam);
        }
        
        Student student = null;
        try {
            StudentaDao dao = new StudentDaoImp();
            student = dao.findStudentById(rollno);
        } catch (StudentNotFoundException e) {
            out.println("Student not found with roll number: " + rollno);
            return; // Exit the JSP page to prevent further processing
        }
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

    <%-- Display success or error message --%>
    <% 
        String message = (String) request.getAttribute("message"); 
        if (message != null) { 
    %>
        <p><%= message %></p>
    <% } %>
</body>
</html>
