package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.misc.ConnectionProvider;
import org.model.bean.UserBean;

public class LoginDao {
	
	String name,email1,phone;

	public boolean login (UserBean bean) {
		String type=bean.getType();
		String email=bean.getEmail();
		String pass=bean.getPass();
		String check=bean.getCheck();
		
		
		ResultSet rs;
		Connection con;
		PreparedStatement pstm;
		boolean status=false;
		
		try {
			con=ConnectionProvider.createC();
			pstm=con.prepareStatement("select * from user where email=? and pass=?");
			pstm.setString(1, email);
			pstm.setString(2, pass);
			rs=pstm.executeQuery();
			status=rs.next();
			name=rs.getString("fname");
			email1=rs.getString(4);
			phone=rs.getString(5);
		}
		catch(Exception e) {}
		
		return status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
