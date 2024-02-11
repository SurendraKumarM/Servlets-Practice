package com.login.logout.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
	String sql = "select * from login where uname=? and pass=?";
	String url = "jdbc:mysql://localhost:3306/jdbc";
	String usr = "root";
	String pas = "3142";
 	public boolean check(String uname, String pass) 	{
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection(url, usr, pas);
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setString(2, pass);
			
			ResultSet resultSet = ps.executeQuery();
			if(resultSet.next())
				return true;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}
}
