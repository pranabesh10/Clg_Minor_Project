package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model.bean.CourseBean;
import org.model.dao.CollegeDao;
import org.model.dao.CourseDao;

/**
 * Servlet implementation class Course
 */
@WebServlet("/Course")
public class Course extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("courseid");
		String name=request.getParameter("coursename");
		String sempay=request.getParameter("sempay");
		String totpay=request.getParameter("totpay");
		String nosem=request.getParameter("nosem");
		
		CourseBean cb=new CourseBean();
		cb.setId(id);
		cb.setName(name);
		cb.setSempay(sempay);
		cb.setNosem(nosem);
		cb.setTotpay(totpay);
		
		CourseDao cd=new CourseDao();
		int i=cd.add_course(cb);
	}

}
