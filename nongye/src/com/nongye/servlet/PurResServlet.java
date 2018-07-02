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
 * 这是采购管理的查找的servlet
 */
@WebServlet("/purResServlet")
public class PurResServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PurResServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		
		
		
		
		//int user_id=6;
		
		String purchase_name_1=request.getParameter("purchase_name");
		
		session.setAttribute("purchase_name",purchase_name_1);
		
		
		System.out.println("进入采购管理servlet");
		
	
		int user_id=(Integer) request.getSession().getAttribute("id");/*获取用户的id user_id*/
			
		System.out.println("用户id获取测试  ====  "+user_id);
		
		
		int everyPageSize_2=100;
		int curPageNo=0;
		
		String strPageNo=request.getParameter("curPageNo");
		
		PurchasePageNo PPN=new PurchasePageNo();
		
		int totalSize;
		
		if(strPageNo==null){//如果为空则没接收到页面参数
			 curPageNo=1;/*默认当前页面为1*/
		}else{
			curPageNo=Integer.parseInt(request.getParameter("curPageNo"));
			
				try {
					//获取总记录数
					totalSize = PPN.PageNo_2(user_id,purchase_name_1);
					//获取总页面数
					int totalPageSize=PPN.pagesTotal_2(everyPageSize_2,user_id,purchase_name_1);
					//保存总记录与总页数
				
					
					session.setAttribute("totalSize",totalSize);
					session.setAttribute("totalPageSize",totalPageSize);
					//System.out.println("dsfdsjfsdkfsfhsdfhdsjfsbdj");
					if(curPageNo>=totalPageSize){
						 curPageNo=totalPageSize;
						 
					 }else if(curPageNo<=1){
						 curPageNo=1;
					 }
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
				
				

			/*处理页面边界问题*/		 
			
		}
		
		session.setAttribute("curPageNo",curPageNo);
		
		GoodsDao GDa = new GoodsDao();
		List<Purchase> list = GDa.purReg(curPageNo, everyPageSize_2, purchase_name_1, user_id);
		System.out.println("断点3++++++");
		request.setAttribute("list_1", list);
		
		request.getRequestDispatcher("/purchasingManagement.jsp").forward(
				request, response);
		
		System.out.println(list.isEmpty()+"--servlet集合取值测试");	
		System.out.println("断点4++++++");	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
