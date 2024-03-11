package com.studentmngsys.dob;

import java.io.IOException;
import java.sql.SQLException;

import com.student_view.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/updatestudent")
public class Update extends HttpServlet {
    StudentaDao dao = new StudentDaoImp();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Creating a Student object with the updated information
        Student student = new Student();
        student.setRollno(Integer.parseInt(req.getParameter("rollno")));      
        student.setName(req.getParameter("name"));
        student.setPhone(Long.parseLong(req.getParameter("phone")));
        student.setEmail(req.getParameter("email"));       
        student.setAge(Integer.parseInt(req.getParameter("age")));
        student.setAddress(req.getParameter("address"));
        student.setPassword(req.getParameter("password"));
        String message = null;
        boolean saveStudent =false;
        
        try {
        	saveStudent = dao.updateStudent(student);
        } catch (SQLException e) {
			message=e.getMessage();
			e.printStackTrace();
		}
        // Attempting to update the student
        //boolean updateSuccessful = dao.updateStudent(student);
        
        // Redirecting to appropriate page based on the update result
        if (saveStudent) {
            // If update successful, redirect to welcome page
            req.getRequestDispatcher("Welcome.jsp").forward(req, resp);
        } else {
            // If update failed, forward back to registration page with error message
            req.setAttribute("message", "Failed to update student.");
            req.getRequestDispatcher("Register.jsp").forward(req, resp);
        }
    }
}
