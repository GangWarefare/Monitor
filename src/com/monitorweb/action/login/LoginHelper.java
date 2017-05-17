package com.monitorweb.action.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.monitorweb.operatedb.ConnectToMysql;

public class LoginHelper {	
	public static boolean checkUser(String username, String password) throws Exception{
		boolean isExists = false;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		conn = ConnectToMysql.getConnectionmysql();
		String sql = "select count(*) from m_user where username = ? and password = ?";
		stmt = conn.prepareStatement(sql);
		stmt.setString(1, username);
		stmt.setString(2, password);
		rs = stmt.executeQuery();
		while(rs.next()){
			int i = rs.getInt(1);
			if(i > 0){
				isExists = true;
			}
		}
		rs.close();
		stmt.close();
		conn.close();
		return isExists;
	}
}
