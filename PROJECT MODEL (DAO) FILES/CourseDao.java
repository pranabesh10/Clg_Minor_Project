package org.model.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;

import org.misc.ConnectionProvider;
import org.model.bean.CourseBean;

public class CourseDao {
	public int add_course(CourseBean cbean) {
		String id=cbean.getId();
		String name=cbean.getName();
		String sempay=cbean.getSempay();
		String nosem=cbean.getNosem();
		String totpay=cbean.getTotpay();
		int i=0;
		
		Connection con;
		PreparedStatement pstm;
		try {
			con=ConnectionProvider.createC();
			pstm = con.prepareStatement("insert into course values (?,?,?,?,?)");
			pstm.setString(1,id);
			pstm.setString(2,name);
			pstm.setString(3,sempay);
			pstm.setString(4,nosem);
			pstm.setString(5,totpay);
			i=pstm.executeUpdate();
		}
		catch(Exception e) {}
		
		return i;
	}
}
