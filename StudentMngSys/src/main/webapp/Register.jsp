<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    h2 {
        color: #333;
        text-align: center;
        
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

    input[type="text"],
    input[type="email"],
    input[type="password"],
    textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    textarea {
        height: 100px;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<%
	String message = (String) request.getAttribute("message");
	if(message!=null){%>
	<jsp:include page = "error.jsp"></jsp:include>
	<p style="color: red"><%=message %> </p>
	<%}
%>
	<h2>Student Registration Form</h2>
    <form action="register" method="post">
    
    	<label for="rollno">Roll Number:</label><br>
        <input type="text" id="rollno" name="rollno" required><br><br>
        
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" required><br><br>

        <label for="phone">Phone:</label><br>
        <input type="text" id="phone" name="phone" required><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>

		<label for="age">Age:</label><br>
        <input id="age" name="age" required></input><br><br>       

        <label for="address">Address:</label><br>
        <textarea id="address" name="address" required></textarea><br><br>

        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br><br>

        <input type="submit" value="Register">
    </form>
</body>
</html>