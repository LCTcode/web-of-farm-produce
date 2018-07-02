package com.nongye.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.nongye.utils.DBConnection;



import com.nongye.vo.ReciveAjaxSupply;


public class SupplyGoodsDao {
		
	
	
	/*上传供应的dao方法*/
	public int insertSupply(int user_id,String keywords,String goods_name,String text,String context,String price,String standard,String address,Date ontime){
		
		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();

		
		String sql_3="select third_id from third_class where name=?";//先根据第三级的名字查询出id
		
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql_3);
			
			pstmt.setString(1, keywords);
			ResultSet rs3=pstmt.executeQuery();
			
			
			while(rs3.next()){
				int third_id=rs3.getInt("third_id");
				
				int ischeck=0;
				
				String sql_2="insert into goods_supply (user_id,third_id,keywords,goods_name,text,context,price,standard,address,ontime,ischeck)values(?,?,?,?,?,?,?,?,?,?,0)";
				
				PreparedStatement pstm=conn.prepareStatement(sql_2);
				
				/*System.out.println("发布供应的dao测试333333");
				System.out.println("dao接收servlet传值keywords------"+keywords);
				System.out.println("Dao提前检索第三级id======="+third_id);*/
				
				
				
				
				pstm.setInt(1, user_id);
				pstm.setInt(2, third_id);
				pstm.setString(3, keywords);
				pstm.setString(4, goods_name);
				pstm.setString(5, text);
				pstm.setString(6,context);
				pstm.setString(7, price);
				pstm.setString(8, standard);
				pstm.setString(9, address);	
				pstm.setDate(10,new java.sql.Date(ontime.getTime()));

				int n = pstm.executeUpdate();
				
				
				if (n > 0) {

					System.out.println("发布供应入库成功");
					
					if (pstm != null)
						pstm.close();
					if (conn != null)
						conn.close();
						

					return n;
					
				} else {
					System.out.println("发布供应失败");
				}

				if (pstm != null)
					pstm.close();
				
				if (conn != null)
					conn.close();

				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
		return 0;
	    
	}
	
/*	上传供应图片的dao方法*/
	public int uploadSupply(int supply_id,String path,String picture_name,String remark){
	
		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();
		
		
		String sql_1="select supply_id from goods_supply "; /*查询id是否在数据库中，多余操作可有可无*/
		PreparedStatement pstmt=null;
		try {

			pstmt=conn.prepareStatement(sql_1);
	
			ResultSet rs=pstmt.executeQuery();
			 
			 while(rs.next()){
				
				 System.out.println(supply_id+"    id测试+++++++++++");
				 
				 String sql_2="insert into goods_picture(supply_id,path,picture_name,remark)values(?,?,?,?)";
				 
				 PreparedStatement pstm=conn.prepareStatement(sql_2);

				pstm.setInt(1,supply_id);
				 pstm.setString(2, path);
				 pstm.setString(3, picture_name);
				 pstm.setString(4, remark);
				 
				 int n = pstm.executeUpdate();
				 
					if(n>0){
						
						System.out.println("发布供应入库成功"+n);
						
						if (pstm != null)
							pstm.close();
						if (conn != null)
							conn.close();
					
						return n;
					} else {
						System.out.println("发布供应失败");
					}
			 

					if (pstm != null)
						pstm.close();
					if (conn != null)
						conn.close();
						
					} 
		} catch (SQLException e1) {
			
			e1.printStackTrace();
		}
			
		return 0;
	}
	
	public int insertValue(String value){
		 
		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();
		
		String sql="insert into attribute_value(value) value(?)";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, value);
			int n=pstmt.executeUpdate();
			
			/*while(rs.next()){
				int value_id=rs.getInt("value_id");
				System.out.println("存value成功");
				return value_id;
			}*/
			if(n>0){
				return n;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return 0;
		
		
		
	}
	
	public int insertVaAtt(int attribute_id,int value_id,String keywords,String standard,String price,String text,String context,String address,int user_id){
		
		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();
		
		String sql_1="select supply_id from goods_supply where keywords=? and standard=? and price=? and text=? and context=? and address=? and user_id=?";
		
		PreparedStatement pstmt=null;
	

			try {
				pstmt=conn.prepareStatement(sql_1);
				
				pstmt.setString(1,keywords);
				pstmt.setString(2,standard);
				pstmt.setString(3,price);
				pstmt.setString(4,text);
				pstmt.setString(5,context);
				pstmt.setString(6,address);
				pstmt.setInt(7,user_id);
				
				ResultSet rs=pstmt.executeQuery();
				
				while(rs.next()){
					int supply_id=rs.getInt("supply_id");
		
					String sql="insert into attribute_relational(attribute_id,value_id,supply_id)value(?,?,?)";
					PreparedStatement pstm;
					try {
						pstmt = conn.prepareStatement(sql);
						pstmt.setInt(1, attribute_id);
						pstmt.setInt(2, value_id);
						pstmt.setInt(3, supply_id);
						int n =pstmt.executeUpdate ();
					 
						System.out.println("最后的数据进入库，value_id与su与att_id");
						return supply_id;
					} catch (SQLException e) {
						
						e.printStackTrace();
					}
				}
				
				
				
			} catch (SQLException e1) {
			
				e1.printStackTrace();
			}
				
		return 0;
	}
	
	public int findValue_id( String value){
	
		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();
		
		
		String sql="select value_id from attribute_value where value=?";
		
		PreparedStatement pstmt=null;
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1,value);
			ResultSet rs=pstmt.executeQuery();
			
			while(rs.next()){
				int value_id=rs.getInt("value_id");
				
				System.out.println("成功根据value查找到value_id");
				
				return value_id;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return 0;
		
		
		
	}
}

