package com.nongye.vo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nongye.utils.DBConnection;

public class PurchasePageNo {

	public int PageNo() throws SQLException{
		DBConnection dbc=new DBConnection();
		Connection conn=dbc.getConnection();
		String sql="select count(*) from purchase_goods ";
		
		PreparedStatement pstm=conn.prepareStatement(sql);
		ResultSet rs=pstm.executeQuery();
		
		if(rs.next()){
			int count=	rs.getInt(1);
			//System.out.println(count);
			return count;
			
		}
		return 0;
	}
	public int pagesTotal(int everyPageSize) throws SQLException{
		//获取总记录数
		int count = this.PageNo();
		//System.out.println("总记录数："+count);
	
		if(count%everyPageSize==0){
			return count/everyPageSize;
		}else{
			return count/everyPageSize+1;
		}	
	}         
	
//	-------------采购管理
	public int PageNo_1(int user_id) throws SQLException{
		DBConnection dbc=new DBConnection();
		Connection conn=dbc.getConnection();
		String sql="select count(*) from purchase_goods where user_id=?";
		
		PreparedStatement pstm=conn.prepareStatement(sql);
		pstm.setInt(1, user_id);
		
		ResultSet rs=pstm.executeQuery();
		
		if(rs.next()){
			int count=	rs.getInt(1);
		//	System.out.println(count+"count=====");
			return count;
			
		}
		return 0;
	}
	public int pagesTotal_1(int everyPageSize_1,int user_id) throws SQLException{
		//获取总记录数
		int count = this.PageNo_1(user_id);
		//System.out.println("总记录数："+count);
	
		if(count%everyPageSize_1==0){
			return count/everyPageSize_1;
		}else{
			return count/everyPageSize_1+1;
		}	
	}      
	
	/*-------采购管理的查找---------*/
	public int PageNo_2(int user_id ,String purchase_name_1) throws SQLException{
		DBConnection dbc=new DBConnection();
		Connection conn=dbc.getConnection();
		String sql="select count(*) from purchase_goods where user_id=? and purchase_name=?";
		
		PreparedStatement pstm=conn.prepareStatement(sql);
		pstm.setInt(1, user_id);
		pstm.setString(2,purchase_name_1);
		
		ResultSet rs=pstm.executeQuery();
		
		if(rs.next()){
			int count=	rs.getInt(1);
		//	System.out.println(count+"count=====");
			return count;
			
		}
		return 0;
	}
	public int pagesTotal_2(int everyPageSize_2,int user_id,String purchase_name_1) throws SQLException{
		//获取总记录数
		int count = this.PageNo_2(user_id,purchase_name_1);
		//System.out.println("总记录数："+count);
	
		if(count%everyPageSize_2==0){
			return count/everyPageSize_2;
		}else{
			return count/everyPageSize_2+1;
		}	
	}                            
	
	
	
	
	/*----------采购大厅的菜单导航的分页---------*/
	public int PageNo_3(String purchase_name_1) throws SQLException{
		DBConnection dbc=new DBConnection();
		Connection conn=dbc.getConnection();
		String sql="select count(*) from purchase_goods where  purchase_name=?";
		
		PreparedStatement pstm=conn.prepareStatement(sql);
	
		pstm.setString(1,purchase_name_1);
		
		ResultSet rs=pstm.executeQuery();
		
		if(rs.next()){
			int count=	rs.getInt(1);
			System.out.println(count+"采购大厅菜单导航count=====");
			return count;
			
		}
		return 0;
	}
	public int pagesTotal_3(int everyPageSize_3,String purchase_name_1) throws SQLException{
		//获取总记录数
		int count = this.PageNo_3(purchase_name_1);
		
		System.out.println("总记录数："+count);
	
		if(count%everyPageSize_3==0){
			return count/everyPageSize_3;
		}else{
			return count/everyPageSize_3+1;
		}	
	}                            
	
}
