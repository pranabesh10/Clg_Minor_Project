package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.misc.ConnectionProvider;
import org.model.bean.UserBean;

public class ForgetPassDao {
	public int forget_pass (UserBean bean) {
		String email=bean.getEmail();
		String pass=bean.getPass();
		String conpass=bean.getConpass();
		int i=0;
		
		Connection con;
		PreparedStatement pstm;
		try {
			con=ConnectionProvider.createC();
			pstm=con.prepareStatement("update user set pass=? , conpass=? where email=?");
			pstm.setString(1, pass);
			pstm.setString(2, conpass);
			pstm.setString(3, email);
			i=pstm.executeUpdate();
			
	}
		catch(Exception e) {}
		return i;
	}
}
