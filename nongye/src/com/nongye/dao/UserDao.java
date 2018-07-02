package com.nongye.dao;

import java.sql.*;

import org.apache.catalina.startup.UserConfig;

import com.nongye.utils.DBConnection;
import com.nongye.vo.User;

public class UserDao {
		User uu = new User();
		/*登录dao*/
		 public int checkUser(String UserName ,String UserPwd)throws SQLException,ClassNotFoundException{
			 
			
			DBConnection dbc=new DBConnection();
			Connection conn=dbc.getConnection();
			String sql="select * from user_info where user_name=? and user_pwd=? ";
		
			PreparedStatement pstm=conn.prepareStatement(sql);
			
			pstm.setString(1, UserName);
			pstm.setString(2, UserPwd);
			ResultSet rs=pstm.executeQuery();
			
			if(rs!=null&&rs.next())
			{
				
				uu.setUser_id(rs.getInt(1));//存储用户唯一ID
				
				uu.setUser_pwd(rs.getString("user_pwd"));
				uu.setUser_name(rs.getNString("user_name"));
			}
			
			if(pstm!=null)pstm.close();
			if(rs!=null)rs.close();
			if(conn!=null)conn.close();
			return uu.getUser_id();
		 }
		 
		 
		
		/*身份证号码 该方法已注释无效*/ 
		
		/* public boolean updateIdCar(String idcard,String user_name)throws SQLException,ClassNotFoundException {
			
			 	DBConnection dbc=new DBConnection();
				Connection conn=dbc.getConnection();
				
				String UserName="卢小涛";
				String UserPwd="111111";
				
				int id=	checkUser(UserName,UserPwd);
				
				count+=1;
				System.out.println(count);
				
				System.out.println("id===="+id);
				String sql="update user_info set idcard=? where user_id=?";
				  
				PreparedStatement pstm=conn.prepareStatement(sql);
				
				System.out.println("身份证号码："+idcard);
				
				pstm.setString(1, idcard);
				pstm.setInt(2, id);
				
				
				
				int n=pstm.executeUpdate();
			
				
				if(n>0){
					
					System.out.println("身份证号码入库成功");
					return true;
				}
				else{
					System.out.println("身份证号码插入失败");
				}
				
				
				if(pstm!=null)pstm.close();
				if(conn!=null)conn.close();
			   
				return false ;
				
				
		 }*/
		 
		 
		 
		 /*身份证图片路径*/
		 public boolean updateCard_photo(String idcard,String card_photo,String realname,int id)throws SQLException,ClassNotFoundException {
				
			 	DBConnection dbc=new DBConnection();
				Connection conn=dbc.getConnection();
				
				
				/*String UserName="卢小涛";
				String UserPwd="111111";
				int id=	checkUser(UserName,UserPwd);*/
				
				System.out.println("dao插入测试"+"---"+idcard);
				String sql="update user_info set idcard=?,card_photo=? ,realname=? where user_id=?";
				
				PreparedStatement pstm=conn.prepareStatement(sql);
				
				pstm.setString(1, idcard);
				pstm.setString(2, card_photo);
				pstm.setString(3, realname);
				pstm.setInt(4, id);
				
				
				
				int n=pstm.executeUpdate();
			
				
				if(n>0){
					
					System.out.println("身份证图片信息入库成功");
					return true;
				}
				else{
					System.out.println("身份证图片失败");
				}
				
				
				if(pstm!=null)pstm.close();
				if(conn!=null)conn.close();
			   
				return false ;
				
				
		 }
		 
		 
		 public boolean updateBusiness(String corporate_name,String corporate_representative,String licence_photo,int id)throws SQLException,ClassNotFoundException {
				
			 	DBConnection dbc=new DBConnection();
				Connection conn=dbc.getConnection();
				
				
				/*String UserName="卢小涛";
				String UserPwd="111111";
				int id=	checkUser(UserName,UserPwd);*/
				
				//System.out.println("dao插入测试"+"---"+licence_photo);
				String sql="update user_info set corporate_name=?,corporate_representative=?,licence_photo=? where user_id=?";
				
				PreparedStatement pstm=conn.prepareStatement(sql);
				
				pstm.setString(1, corporate_name);
				pstm.setString(2, corporate_representative);
				pstm.setString(3, licence_photo);
				pstm.setInt(4, id);
				
				
				
				int n=pstm.executeUpdate();
			
				
				if(n>0){
					
					System.out.println("企业图片信息入库成功");
					return true;
				}
				else{
					System.out.println("企业图片失败");
				}
				
				
				if(pstm!=null)pstm.close();
				if(conn!=null)conn.close();
			   
				return false ;
				
				
		 }
		 
		 
		 
		 
		 
		 
		/* 注册方法*/
		 public boolean userReg(String user_name,String user_pwd,String mob_number,String idcard,String licence)throws SQLException,ClassNotFoundException {
				
			 	DBConnection dbc=new DBConnection();
				Connection conn=dbc.getConnection();
				
				int ischeck=0;//初始化审核字段
				String sql="insert into user_info(user_name,user_pwd,mob_number,idcard,licence,ischeck)values(?,?,?,?,?,0)";
				  
				PreparedStatement pstm=conn.prepareStatement(sql);
				
				
				
				pstm.setString(1, user_name);
				pstm.setString(2, user_pwd);
				pstm.setString(3, mob_number);
				pstm.setString(4, idcard);
				pstm.setString(5, licence);
				
				int n=pstm.executeUpdate();
			
				
				if(n>=1){
					System.out.println("用户注册信息入库成功");
					if(pstm!=null)pstm.close();
					if(conn!=null)conn.close();
					return true;
					
				}
				else{
					System.out.println("失败");
					if(pstm!=null)pstm.close();
					if(conn!=null)conn.close();
				   
					return false ;
				}			
		 }
		 
		 /*修改完善个人资料*/
		 public boolean updatePersonalInfo(String type,String email,String tel_number,String post_code,String 
				 province,String city,String area,String address, int id)throws SQLException,ClassNotFoundException {
			 
			
			 
			 
			 DBConnection dbc=new DBConnection();
			 Connection conn=dbc.getConnection();
			 
			 String sql="update user_info set type=?,email=?,tel_number=?,post_code=?,province=?,city=?,area=?,address=? where user_id=?";
			 
			 
			 PreparedStatement pstm=conn.prepareStatement(sql);
				
			 System.out.println("dao插入测试"+"---"+email);
				
				pstm.setString(1, type);
				pstm.setString(2, email);
				pstm.setString(3, tel_number);
				pstm.setString(4, post_code);
				pstm.setString(5, province);
				pstm.setString(6, city);
				pstm.setString(7, area);
				pstm.setString(8, address);
				pstm.setInt(9, id);
				
				int n=pstm.executeUpdate();
			
				
				if(n>=1){
					System.out.println("个人完善信息入库成功");
					return true;
				}
				else{
					System.out.println("个人完善信息失败");
				}
				
				
				if(pstm!=null)pstm.close();
				if(conn!=null)conn.close();
			   
				return false ;
				
				
			 
		 }
		 
			 		 
}


