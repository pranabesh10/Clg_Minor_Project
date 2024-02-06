package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.misc.ConnectionProvider;
import org.model.bean.UserBean;

public class RegisterDao {
public int insert(UserBean bean)
	{
		String fname=bean.getFname();
		String lname=bean.getLname();
		String email=bean.getEmail();
		String phn=bean.getPhn();
		String gender=bean.getGender();
		String pass=bean.getPass();
		String conpass=bean.getConpass();
		String term=bean.getTerm();
		int i=0;
		
		try {
			Connection con;
			PreparedStatement pstm;
			con=ConnectionProvider.createC();
			pstm = con.prepareStatement("select * from user where email=?");
			pstm.setString(1, email);
			ResultSet j=pstm.executeQuery();
			if(j.next())
			{
				i=0;
			}
			else {
			
			pstm = con.prepareStatement("insert into user(fname,lname,email,phn,gender,pass,conpass,term) values (?,?,?,?,?,?,?,?)");
			pstm.setString(1,fname);
			pstm.setString(2,lname);
			pstm.setString(3,email);
			pstm.setString(4,phn);
			pstm.setString(5,gender);
			pstm.setString(6,pass);
			pstm.setString(7,conpass);
			pstm.setString(8,term);
			i=pstm.executeUpdate();
			}
		}
		catch(Exception e) {}
		return i;
}
}

