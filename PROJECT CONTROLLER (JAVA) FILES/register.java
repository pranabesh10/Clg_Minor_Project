package org.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model.bean.UserBean;
import org.model.dao.RegisterDao;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public register() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		String fname=request.getParameter("ufname");
		String lname=request.getParameter("ulname");
		String email=request.getParameter("uemail");
		String phn=request.getParameter("uphn");
		String gender=request.getParameter("Gender");
		String pass=request.getParameter("upass");
		String conpass=request.getParameter("uconpass");
		String term=request.getParameter("uterm");
		UserBean ubean=new UserBean();
		ubean.setFname(fname);
		ubean.setLname(lname);
		ubean.setEmail(email);
		ubean.setPhn(phn);
		ubean.setGender(gender);
		ubean.setPass(pass);
		ubean.setConpass(conpass);
		ubean.setTerm(term);
		
		RegisterDao rd=new RegisterDao();
		int status=rd.insert(ubean);
		if(status!=0) {
			//pw.println("<h2>Successfully Register</h2>");
			response.sendRedirect("SignIn.jsp?msg=valid");
			
		}
		else
		{
			//pw.println("<h2>There is some issues</h2>");
			response.sendRedirect("SignIn.jsp?msg=invalid");
		}
	}

}
