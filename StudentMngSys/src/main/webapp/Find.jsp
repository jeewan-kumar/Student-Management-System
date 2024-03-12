<%@ page import="com.jsp.exception.StudentNotFoundException"%>
<%@ page import="com.studentmngsys.dob.StudentaDao" %>
<%@ page import="com.studentmngsys.dob.StudentDaoImp" %>
<%@ page import="com.student_view.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Find Student By Roll Number</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h2,h3 {
            text-align: center;
            color: #333;
        }
        
        table {
            width: 50%;
            margin: 0 auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        form {
            width: 50%;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type="text"], input[type="submit"] {
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
            cursor: pointer;
        }

        p, h1 {
            text-align: center;
            color: #333;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        button {
            padding: 10px 20px;
            margin-right: 10px;
            cursor: pointer;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <h2>Find Student By Roll Number</h2>
    <form action="" method="get">
        <label for="rollno">Enter Roll Number:</label><br>
        <input type="text" id="rollno" name="rollno" required><br><br>
        <input type="submit" value="Find">
    </form>

    <%-- Display student information if found --%>
    <% 
    try {
        String rollnoParam = request.getParameter("rollno");
        if (rollnoParam != null && !rollnoParam.isEmpty()) {
            int rollno = Integer.parseInt(rollnoParam);
            StudentaDao dao = new StudentDaoImp();
            Student student = dao.findStudentById(rollno); 
            if (student != null) { 
    %>
        <h3>Student Details:</h3>
        <table>
            <tr>
                <th>Field</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>Roll Number</td>
                <td><%= student.getRollno() %></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><%= student.getName() %></td>
            </tr>
            <tr>
                <td>Phone</td>
                <td><%= student.getPhone() %></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><%= student.getEmail() %></td>
            </tr>
            <tr>
                <td>Age</td>
                <td><%= student.getAge() %></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><%= student.getAddress() %></td>
            </tr>
        </table>
      <!--   <a href="Update.jsp?id=<%=student.getRollno()%>">Update</a>-->
        
        
         <div class="button-container">
        	
            <button onclick="window.location.href='Update.jsp?id=<%=student.getRollno()%>'"> Update</button>
            <button onclick="window.location.href='Delete.jsp?id=<%=student.getRollno()%>'">Delete</button>
        </div> 
    <% 
            } else {
                throw new StudentNotFoundException("Student with ID " + rollno + " not found");
            }
        } else {
            // Handle case where roll number parameter is not provided
            //throw new IllegalArgumentException("Roll number parameter is missing.");
        }
    } catch (NumberFormatException e) {
        // Handle case where provided roll number is not a valid number
        out.println("Invalid roll number format.");
    } catch (StudentNotFoundException e) {
        // Handle case where student is not found
%>
        <h1 style="color: red;"><%= e.getMessage() %></h1>
<%
    } catch (IllegalArgumentException e) {
        // Handle case where roll number parameter is missing
%>
        <h1 style="color: red;"><%= e.getMessage() %></h1>
<%
    }
%>
</body>
</html>
