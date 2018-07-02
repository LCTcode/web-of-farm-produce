package com.nongye.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.nongye.utils.DBConnection;
import com.nongye.vo.Purchase;

public class GoodsDao {

	public boolean lssue(String purchase_name, String type,
			String purchase_number, String expected_price, Date ontime,
			Date offtime, String address, String text, int user_id)
			throws SQLException {

		System.out.println(user_id);
		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();

		String sql = "insert into purchase_goods( purchase_name,type,purchase_number ,expected_price,ontime,offtime,"
				+ "address,text,user_id,ischeck)values(?,?,?,?,?,?,?,?,?,0)";
		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, purchase_name);
		pstm.setString(2, type);
		pstm.setString(3, purchase_number);
		pstm.setString(4, expected_price);
		pstm.setDate(5, new java.sql.Date(ontime.getTime()));
		pstm.setDate(6, new java.sql.Date(offtime.getTime()));
		pstm.setString(7, address);
		pstm.setString(8, text);
		pstm.setInt(9, user_id);

		int n = pstm.executeUpdate();

		if (n > 0) {

			System.out.println("发布采购入库成功");
			if (pstm != null)
				pstm.close();
			if (conn != null)
				conn.close();
			return true;
		} else {
			System.out.println("发布采购失败");
		}

		if (pstm != null)
			pstm.close();
		if (conn != null)
			conn.close();

		return false;
	}

	/* 查询数据库采购表 */
	public List<Purchase> selectPurHall(int CurPageNo, int everyPageSize)
			throws SQLException {

		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();
		List<Purchase> list = new ArrayList<Purchase>();

		String sql = "select * from purchase_goods order by ontime desc limit ?,?";
		
		System.out.println("采购大厅的分页测试===++++"+CurPageNo+"======="+everyPageSize);
		int startIndex = (CurPageNo - 1) * everyPageSize;// 分页

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, startIndex);
		pstm.setInt(2, everyPageSize);

		ResultSet rs = pstm.executeQuery();
		Purchase purchase = new Purchase();
		while (rs.next()) {
			int purchase_id = rs.getInt("purchase_id");
			String purchase_name = rs.getString("purchase_name");
			String text = rs.getString("text");
			String type = rs.getString("type");
			String purchase_number = rs.getString("purchase_number");
			Date ontime = rs.getDate("ontime");
			Date offtime = rs.getDate("offtime");
			String address = rs.getString("address");
			String expected_price = rs.getString("expected_price");
			long view_number = rs.getLong("view_number");
			long quote_count = rs.getLong("quote_count");
			long manager_id = rs.getLong("manager_id");
			int ischeck = rs.getInt("ischeck");
			int user_id = rs.getInt("user_id");

			String sql_1 = "select user_name,tel_number from user_info where user_id=? ";/* 通过查询到的id去用户表里取出用户名 */
			PreparedStatement pstmt = conn.prepareStatement(sql_1);
			pstmt.setInt(1, user_id);
			/* System.out.println("DAO单个数据取值"+user_id); */

			ResultSet rts = pstmt.executeQuery();
			while (rts.next()) {
				String user_name = rts.getString("user_name");
				String tel_number = rts.getString("tel_number");
				/*
				 * System.out.println("Dao测试是否从数据库取值（管理员id)："+manager_id);
				 * System.out.println("Dao测试是否从数据库取值(用户名：)"+user_name);
				 */
				purchase = new Purchase(purchase_id, purchase_name, text, type,
						purchase_number, ontime, offtime, manager_id, ischeck,
						address, expected_price, view_number, quote_count,
						user_id, user_name, tel_number);

				list.add(purchase);// 将结果集放入集合中
				/* System.out.println("数据放入集合中成功+---"); */
			}

		}
		/*
		 * for (Purchase purchases : list) {
		 * System.out.println("=="+purchases.getUser_name()); }
		 */
		return list;

	}

	/*-------这是采购大厅菜单导航-------*/
	public List<Purchase> selectPurHallReg(String purchase_name,int curPageNo,int everyPageSize_3)
			throws SQLException {

		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();
		List<Purchase> list = new ArrayList<Purchase>();

		String sql = "select * from purchase_goods where purchase_name=? order by ontime desc limit ?,?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		
		int startIndex = (curPageNo - 1) * everyPageSize_3;/* 分页的规则是分页起始下标=当前页减1乘上每页显示大小*/
		
		pstm.setString(1, purchase_name);
		pstm.setInt(2, startIndex);
		pstm.setInt(3, everyPageSize_3);
		
		//System.out.println("采购菜单页面分页"+curPageNo+"======"+everyPageSize_3);
		
		ResultSet rs = pstm.executeQuery();
		Purchase purchase = new Purchase();
		
		while (rs.next()) {
			int purchase_id = rs.getInt("purchase_id");
			String purchase_name_1 = rs.getString("purchase_name");
			String text = rs.getString("text");
			String type = rs.getString("type");
			String purchase_number = rs.getString("purchase_number");
			Date ontime = rs.getDate("ontime");
			Date offtime = rs.getDate("offtime");
			String address = rs.getString("address");
			String expected_price = rs.getString("expected_price");
			long view_number = rs.getLong("view_number");
			long quote_count = rs.getLong("quote_count");
			long manager_id = rs.getLong("manager_id");
			int ischeck = rs.getInt("ischeck");
			int user_id = rs.getInt("user_id");
			
			System.out.println("DAO单个数据取值" + user_id);
			String sql_1 = "select user_name,tel_number from user_info where user_id=? ";/* 通过查询到的id去用户表里取出用户名 */
			PreparedStatement pstmt = conn.prepareStatement(sql_1);
			pstmt.setInt(1, user_id);
			

			ResultSet rts = pstmt.executeQuery();
			while (rts.next()) {
				String user_name = rts.getString("user_name");
				String tel_number = rts.getString("tel_number");

				
				//System.out.println("Dao测试是否从数据库取值(用户名：)" + user_name);

				purchase = new Purchase(purchase_id, purchase_name_1, text,
						type, purchase_number, ontime, offtime, manager_id,
						ischeck, address, expected_price, view_number,
						quote_count, user_id, user_name, tel_number);

				list.add(purchase);// 将结果集放入集合中
				//System.out.println("数据放入集合中成功+---");
			}

		}

		for (Purchase purchases : list) {
			System.out.println("==" + purchases.getPurchase_name());
		}

		return list;

	}

	/* 采购管理的采购包含分页 */
	public List<Purchase> selectPurManager(int CurPageNo, int everyPageSize_1,
			int user_id) {

		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();

		List<Purchase> list = new ArrayList<Purchase>();

		System.out.println("采购管理dao测试++++");

		String sql = "select * from purchase_goods where user_id=? order by ontime desc limit ?,? ";

		int startIndex = (CurPageNo - 1) * everyPageSize_1;// 分页

		PreparedStatement pstm;

		try {
			pstm = conn.prepareStatement(sql);

			pstm.setInt(1, user_id);
			pstm.setInt(2, startIndex);
			pstm.setInt(3, everyPageSize_1);

			ResultSet rs = pstm.executeQuery();

			Purchase purchase = new Purchase();

			while (rs.next()) {

				String purchase_name = rs.getString("purchase_name");
				String purchase_number = rs.getString("purchase_number");
				Date ontime = rs.getDate("ontime");
				Date offtime = rs.getDate("offtime");
				String expected_price = rs.getString("expected_price");
				int ischeck = rs.getInt("ischeck");
				String type = rs.getString("type");
				;

				purchase = new Purchase(purchase_name, purchase_number, ontime,
						offtime, ischeck, expected_price, type);

				list.add(purchase);// 将结果集放入集合中
				System.out.println("数据放入集合中成功+---");

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		for (Purchase purchases : list) {
			System.out.println("==" + purchases.getPurchase_number());
		}

		return list;

	}

	public List<Purchase> purReg(int CurPageNo, int everyPageSize_2,
			String purchase_name_1, int user_id) {

		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();

		List<Purchase> list = new ArrayList<Purchase>();

		System.out.println("采购管理查找dao测试++++");

		String sql = "select * from purchase_goods where user_id=? and purchase_name=? order by ontime desc limit ?,? ";

		int startIndex = (CurPageNo - 1) * everyPageSize_2;// 分页

		PreparedStatement pstm;
		System.out.println("AAAAAAAAAAAA断点");
		try {
			pstm = conn.prepareStatement(sql);

			pstm.setInt(1, user_id);
			pstm.setString(2, purchase_name_1);
			pstm.setInt(3, startIndex);
			pstm.setInt(4, everyPageSize_2);

			ResultSet rs = pstm.executeQuery();

			Purchase purchase = new Purchase();

			System.out.println("BBBBBBBBBBB断点");
			while (rs.next()) {

				String purchase_name = rs.getString("purchase_name");
				String purchase_number = rs.getString("purchase_number");
				Date ontime = rs.getDate("ontime");
				Date offtime = rs.getDate("offtime");
				String expected_price = rs.getString("expected_price");
				int ischeck = rs.getInt("ischeck");
				String type = rs.getString("type");

				purchase = new Purchase(purchase_name, purchase_number, ontime,
						offtime, ischeck, expected_price, type);

				list.add(purchase);// 将结果集放入集合中
				System.out.println("数据放入集合中成功+---");

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		for (Purchase purchases : list) {
			System.out.println("==" + purchases.getPurchase_name());
		}

		return list;

	}

}
