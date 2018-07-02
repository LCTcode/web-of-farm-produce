package com.nongye.servlet;

import java.io.IOException;
import java.sql.SQLException;
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

/**
 * 这是采购大厅菜单导航
 */
@WebServlet("/purHallRegServlet")
public class PurHallRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PurHallRegServlet() {
        super();
       
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		HttpSession session=request.getSession();
		
		String purchase_name=request.getParameter("purchase_name");
		System.out.println(purchase_name+"servelet获取jsp值测试");
		
		GoodsDao GDa=new GoodsDao();
		
		session.setAttribute("purchase_name_1",purchase_name);
		
		session.removeAttribute("totalSize");
		session.removeAttribute("totalPageSize");
		
		
		int everyPageSize_3=8;
		int curPageNo=0;
		String strPageNo=request.getParameter("curPageNo");
		
		PurchasePageNo PPN=new PurchasePageNo();
		int totalSize=0;
		
		if(strPageNo==null){//如果为空则没接收到页面参数
			 curPageNo=1;/*默认当前页面为1*/
			try {
				int totalPageSize = PPN.pagesTotal_3(everyPageSize_3,purchase_name);
				System.out.println("servlet获取总页面值为====="+totalPageSize);
				session.setAttribute("totalSize",totalSize);
				session.setAttribute("totalPageSize",totalPageSize);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				//保存总记录与总页数
				
		}else{
			curPageNo=Integer.parseInt(request.getParameter("curPageNo"));
			
				try {
					//获取总记录数
					totalSize = PPN.PageNo_3(purchase_name);
					
					//获取总页面数
					int totalPageSize=PPN.pagesTotal_3(everyPageSize_3,purchase_name);
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
		System.out.println("=curPageNo="+curPageNo);
		session.setAttribute("curPageNo",curPageNo);
		
		try {
			List<Purchase> list = GDa.selectPurHallReg(purchase_name, curPageNo, everyPageSize_3);
			System.out.println("断点3++++++");
			
			request.setAttribute("list", list);
			
			request.getRequestDispatcher("/procurementHall.jsp").forward(
					request, response);
			
			System.out.println(list.isEmpty()+"--servlet集合取值测试");	
			System.out.println("断点4++++++");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

}
