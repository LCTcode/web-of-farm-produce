package com.nongye.utils;
import java.sql.*;
public class DBConnection {
	private static String driverName="com.mysql.jdbc.Driver";
	private static String userName="root";
	private static String userPwd="605935980";
	private static String dbName="agricultural";
	public static Connection getConnection(){
		String url1="jdbc:mysql://localhost:3306/"+dbName;
		String url2="?user="+userName+"&password="+userPwd;
		String url3="&useUnicode=true&characterEncoding=utf-8";
		String url=url1+url2+url3;
		
		try{
			Class.forName(driverName);
			Connection con=DriverManager.getConnection(url);
			return con;
		}catch(Exception e ){
			e.printStackTrace();
		}
		return null;
	}
	public static void closeDB(Connection con,PreparedStatement pstm,ResultSet rs){
		try{
			if(rs!=null)rs.close();
			if(pstm!=null)pstm.close();
			if(con!=null)con.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	}

