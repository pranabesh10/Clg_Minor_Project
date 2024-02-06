package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model.bean.CollegeBean;
import org.model.dao.CollegeDao;

/**
 * Servlet implementation class College
 */
@WebServlet("/College")
public class College extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("cid");
		String name=request.getParameter("cname");
		String loc=request.getParameter("cloc");
		String hcourse=request.getParameter("ccourse");
		String image=request.getParameter("cimg");
		String rank=request.getParameter("crank");
		String web=request.getParameter("cweb");
		String ai=request.getParameter("cai");
		String ugc=request.getParameter("cugc");
		
		CollegeBean cb=new CollegeBean();
		cb.setId(id);
		cb.setName(name);
		cb.setLoc(loc);
		cb.setHcourse(hcourse);
		cb.setImage(image);
		cb.setRank(rank);
		cb.setWeb(web);
		cb.setAi(ai);
		cb.setUgc(ugc);
		
		CollegeDao cd=new CollegeDao();
		int i=cd.add_college(cb);
		
		
	}

}
