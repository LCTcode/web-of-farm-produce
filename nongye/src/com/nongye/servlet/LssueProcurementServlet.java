package com.nongye.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nongye.dao.GoodsDao;
import com.nongye.dao.UserDao;

/*@WebServlet("/lssueProcurementServlet")*/
public class LssueProcurementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LssueProcurementServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String danwei="元/斤";
		String purchase_name = request.getParameter("purchase_name");
		String type = request.getParameter("type");
		
		String purchase_number = request.getParameter("purchase_number");
		String expected_price = request.getParameter("expected_price")+danwei;
		String address = request.getParameter("address");
		String text = request.getParameter("text");

		int user_id = (Integer) request.getSession().getAttribute("id");

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String ontime1 = request.getParameter("ontime");
		String offtime1 = request.getParameter("offtime");

		String user_name = request.getParameter("user_name");
		String tel_number = request.getParameter("tel_number");
		System.out.println(tel_number);
		java.util.Date ontime;
		java.util.Date offtime;
		try {
			ontime = sdf.parse(ontime1);
			offtime = sdf.parse(offtime1);
			System.out.println("servlet接收时间数据测试" + ontime);

			GoodsDao GDa = new GoodsDao();
			try {
				boolean flag = GDa
						.lssue(purchase_name, type, purchase_number,
								expected_price, ontime, offtime, address, text,
								user_id);
				System.out.println("servlet数据插入成功");
				System.out.println(purchase_name + "商品名字");

				/*
				 * 将值存储到session中其中日期的格式取输入的格式数值而不是已经转了的，session的值将会在采购详情页面得到接收展示
				 */
				
				
				
				request.getSession().setAttribute("text",text);
				request.getSession().setAttribute("purchase_name_L",purchase_name);
				request.getSession().setAttribute("type",type);
				request.getSession().setAttribute("purchase_number",purchase_number);
				request.getSession().setAttribute("expected_price",expected_price);
				request.getSession().setAttribute("address",address);
				request.getSession().setAttribute("ontime",ontime1);
				request.getSession().setAttribute("offtime",offtime1);
				request.getSession().setAttribute("user_name",user_name);
				request.getSession().setAttribute("tel_number",tel_number);
			
				request.getRequestDispatcher( "procurementDetails.jsp").forward(request,response); 
			} catch (SQLException e) {

				e.printStackTrace();
			}

		} catch (ParseException e) {

			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
