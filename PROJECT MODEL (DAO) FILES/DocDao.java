package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.misc.ConnectionProvider;
import org.model.bean.DocBean;


public class DocDao {
public int document(DocBean db) {
	String doc=db.getDoc();
	String docimg=db.getDocimg();
	String email=db.getEmail();
	
	int i=0;
	Connection con;
	PreparedStatement pstm;
	try {
		con=ConnectionProvider.createC();
		pstm = con.prepareStatement("insert into documents values (?,?,?);");
		pstm.setString(1,doc);
		pstm.setString(2,docimg);
		pstm.setString(3, email);
		i=pstm.executeUpdate();
	}
	catch(Exception e) {}
	
	return i;
}
}
