package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model.bean.UserBean;
import org.model.dao.ForgetPassDao;

/**
 * Servlet implementation class ChangePass
 */
@WebServlet("/ChangePass")
public class ChangePass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("uemail");
		String pass=request.getParameter("upass");
		String conpass=request.getParameter("conpass");
		
		UserBean ubean=new UserBean();
		ubean.setEmail(email);
		ubean.setPass(pass);
		ubean.setConpass(conpass);
		
		ForgetPassDao f=new ForgetPassDao();
		int i=f.forget_pass(ubean);
		if(i!=0)
		{
			response.sendRedirect("login.jsp");
		}
		else {
			response.sendRedirect("Forget_password.jsp?message=invalid");
		}
		
		
	}

}
