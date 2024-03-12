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
@WebServlet("/delete")
public class Delete extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 int rollno = Integer.parseInt(req.getParameter("id"));
		 StudentaDao dao = new StudentDaoImp();
		 try {
			 Student student = dao.findStudentById(rollno);
			 if(student!=null) {
				 boolean message = dao.deleteStudent(student);
				 if(message)
				 req.setAttribute("message", "data deleted");
				 req.getRequestDispatcher("Welcome.jsp").forward(req, resp);
			 } catch (SQLException e) {
				 e.printStackTrace();
			 }
		 }
	}
	

}
