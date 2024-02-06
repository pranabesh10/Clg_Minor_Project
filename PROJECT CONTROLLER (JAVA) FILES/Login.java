package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.model.bean.UserBean;
import org.model.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type=request.getParameter("utype");
		String email=request.getParameter("uemail");
		String pass=request.getParameter("upass");
		String check=request.getParameter("chkbox");
		
		UserBean ubean=new UserBean();
		ubean.setEmail(email);
		ubean.setPass(pass);
		ubean.setType(type);
		ubean.setCheck(check);
		
		HttpSession session=request.getSession();
		
		LoginDao ld=new LoginDao();
		boolean status=ld.login(ubean);
		String name=ld.getName();
		String email1=ld.getEmail1();
		String phone=ld.getPhone();
		if(email.equals("anurima21@gmail.com") && pass.equals("amazon12345")) {
			response.sendRedirect("Admin.jsp");
		}
		else if(status)
		{
			session.setAttribute("NAME", name);
			session.setAttribute("EMAIL", email1);
			session.setAttribute("PHONE", phone);
			response.sendRedirect("body.jsp");
		}
		else {
			response.sendRedirect("login.jsp?msg=invalid");
		}
	}

}
