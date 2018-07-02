package com.nongye.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nongye.dao.GoodsDao;
import com.nongye.vo.Purchase;
import com.nongye.vo.PurchasePageNo;

@WebServlet("/purHallServlet")
public class PurHallServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PurHallServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			
		request.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		
		
		session.removeAttribute("purchase_name_1"); /*这里的清除是为了清除菜单导航那里存储的session 防止出现分页bug*/
		
		session.removeAttribute("totalSize");
		session.removeAttribute("totalPageSize");
		
		int everyPageSize=8;
		int curPageNo=0;
		String strPageNo=request.getParameter("curPageNo");
		
		PurchasePageNo PPN=new PurchasePageNo();
		int totalSize=0;
		
		if(strPageNo==null){//如果为空则没接收到页面参数
			 curPageNo=1;/*默认当前页面为1*/
			 int totalPageSize;
			try {
				totalPageSize = PPN.pagesTotal(everyPageSize);
				session.setAttribute("totalSize",totalSize);
				session.setAttribute("totalPageSize",totalPageSize);/* 首页时依旧获取页面数*/
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				//保存总记录与总页数
				
		}else{
			curPageNo=Integer.parseInt(request.getParameter("curPageNo"));
			
				try {
					//获取总记录数
					totalSize = PPN.PageNo();
					//获取总页面数
					int totalPageSize=PPN.pagesTotal(everyPageSize);
					//保存总记录与总页数
					session.setAttribute("totalSize",totalSize);
					session.setAttribute("totalPageSize",totalPageSize);
					
					if(curPageNo>=totalPageSize){
						 curPageNo=totalPageSize;
						 
					 }else if(curPageNo<=1){
						 curPageNo=1;
					 }
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			/*处理页面边界问题*/
		}
		
		session.setAttribute("curPageNo",curPageNo);
		GoodsDao GDa = new GoodsDao();
		try {
			List<Purchase> list = GDa.selectPurHall(curPageNo,everyPageSize);
		/*	System.out.println("断点3++++++");*/
			request.setAttribute("list", list);
			
			request.getRequestDispatcher("/procurementHall.jsp").forward(
					request, response);
			
	System.out.println(list.isEmpty()+"--servlet集合取值测试");	
			System.out.println("断点4++++++");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
