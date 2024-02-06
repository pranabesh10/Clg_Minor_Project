package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.misc.ConnectionProvider;
import org.model.bean.CollegeBean;

public class CollegeDao {
	public int add_college(CollegeBean cbean) {
		String id=cbean.getId();
		String name=cbean.getName();
		String loc=cbean.getLoc();
		String hcourse=cbean.getHcourse();
		String image=cbean.getImage();
		String rank=cbean.getRank();
		String web=cbean.getWeb();
		String ai=cbean.getAi();
		String ugc=cbean.getUgc();
		int i=0;
		
		Connection con;
		PreparedStatement pstm;
		
		try {
			con=ConnectionProvider.createC();
			pstm = con.prepareStatement("insert into college values (?,?,?,?,?,?,?,?,?)");
			pstm.setString(1,id);
			pstm.setString(2,name);
			pstm.setString(3,loc);
			pstm.setString(4,hcourse);
			pstm.setString(5,image);
			pstm.setString(6, rank);
			pstm.setString(7, web);
			pstm.setString(8, ai);
			pstm.setString(9, ugc);
			i=pstm.executeUpdate();
			}
		catch(Exception e) {}
		
		return i;
	}

}
