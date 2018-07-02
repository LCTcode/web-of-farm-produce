package com.nongye.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.nongye.utils.DBConnection;
import com.nongye.vo.ReciveAjaxSupply;

public class AjaxDao {

public List<ReciveAjaxSupply>selectSupply(String keywords) throws SQLException{
		
		System.out.println("dao查询测试");
		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();
		
		String sql_1="select third_id from third_class where name=?";//先根据第三级的名字查询出id
		
		PreparedStatement pstmt=conn.prepareStatement(sql_1);
		pstmt.setString(1, keywords);
		ResultSet rs1=pstmt.executeQuery();
		
		while(rs1.next()){
		int third_id=rs1.getInt("third_id");//将查询出来的id赋值出去继续查询
		
		List<ReciveAjaxSupply> list = new ArrayList<ReciveAjaxSupply>();
		
		ReciveAjaxSupply RAS=null;
		
		
		String sql = "select DISTINCT sa.attribute_id,sa.* from category_attributes ca "
			+ "LEFT JOIN attribute_relational ar on ca.attribute_id = ar.attribute_id  "
			+ "LEFT JOIN supply_attribute sa on sa.attribute_id = ar.attribute_id  "
			+ "where ca.third_id = ?";
		
		PreparedStatement pstm=conn.prepareStatement(sql);
		pstm.setInt(1, third_id);
		ResultSet rs=pstm.executeQuery();
		System.out.println("dao断点1");
		
		while(rs.next()){
			int attribute_id=rs.getInt(1);
			String name=rs.getString(3);
			
			 RAS=new ReciveAjaxSupply(attribute_id,name);
			list.add(RAS);
			
		}
	/*	for (ReciveAjaxSupply i: list) {
		    
			System.out.println(i.getAttribute_id()+"--------"+i.getName());
	}*/
		return list;
		
		}
		return null;		
	}
	


	/*注册页面的ajax检测*/
	public boolean selectReg(String idcard_1){
		
		
		
		System.out.println("dao查询测试");DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();
		
		String sql="select * from user_info where idcard=?";
		
		try {
			PreparedStatement pstm=conn.prepareStatement(sql);
		
			pstm.setString(1, idcard_1);
		
			ResultSet rs=pstm.executeQuery();
			while(rs.next()){
				String idcard=rs.getString("idcard");
				
				System.out.println("ajax取值DAO测试");
				
				return true;
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
		
	}
}
