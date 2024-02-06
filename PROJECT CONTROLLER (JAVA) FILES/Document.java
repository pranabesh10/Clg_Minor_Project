package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.model.bean.DocBean;
import org.model.dao.DocDao;
import org.model.dao.LoginDao;

/**
 * Servlet implementation class Document
 */
@WebServlet("/Document")
public class Document extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String doc=request.getParameter("udoc");
		String image=request.getParameter("docimg");
		HttpSession session=request.getSession();
		String str1= (String)session.getAttribute("EMAIL");
		
		DocBean db=new DocBean();
		db.setDoc(doc);
		db.setDocimg(image);
		db.setEmail(str1);
		
		
		
		DocDao dd=new DocDao();
		int i=dd.document(db);
		
		if(i!=0) {
			//pw.println("<h2>Successfully Register</h2>");
			response.sendRedirect("Student_Document.jsp?msg=valid");
			
		}
		else
		{
			//pw.println("<h2>There is some issues</h2>");
			response.sendRedirect("Student_Document.jsp?msg=invalid");
		}
	}

}
