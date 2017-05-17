package com.monitorweb.operatedb;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

public class ConnectToMysql {
	public static Connection getConnectionmysql () throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException{
        // final DBProperties properties = DBProperties.getDBProperties();
		
		String driver = "com.mysql.jdbc.Driver"; 
		String url = "jdbc:mysql://10.99.201.89:3307/monitorweb";
		String user = "root"; 
		String password = "123456"; 
		
		Class.forName(driver).newInstance(); 
		
		
		MysqlDataSource mysqlDataSource = new MysqlDataSource();
		mysqlDataSource.setURL(url);
		mysqlDataSource.setUser(user);
		mysqlDataSource.setPassword(password);
		
		return mysqlDataSource.getConnection();
		
     
     }
}
