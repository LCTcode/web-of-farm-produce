package com.nongye.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;


import com.nongye.dao.AjaxDao;
import com.nongye.vo.ReciveAjaxSupply;

/**
 * 这个servlet是与ajax配合使用，在发布供应那里实现动态属性显示
 */
@WebServlet("/ajaxSupplyServlet")
public class AjaxSupplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AjaxSupplyServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        doPost(request, response);
	}
		
		
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
          
          AjaxDao Ad=new AjaxDao();
         
          response.setHeader("pragma", "no-cache");
          response.setHeader("cache-control", "no-cache");
          
          response.setContentType("text/html;charset=utf-8");
          
          String keywords=request.getParameter("keywords");
		
          	System.out.println(keywords+"测试时候实施");
		try {
			List<ReciveAjaxSupply> list = Ad.selectSupply(keywords);
			
			
			
			HttpSession session=request.getSession();
			session.setAttribute("list_s", list);
			
			for (ReciveAjaxSupply i: list) {
			    
				System.out.println(i.getAttribute_id()+"======"+i.getName());
				
		
				}
				
			JSONArray jsonArray=JSONArray.fromObject(list);
			
		
			
			PrintWriter out=response.getWriter();
			
			out.println(jsonArray);
			
			out.flush();
			out.close();
			
			

			System.out.println("成功啊啊啊啊啊");
			System.out.println(list.isEmpty() + "--servlet集合取值测试");
			
			/*request.getRequestDispatcher("/test.jsp")
					.forward(request, response);*/
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

}
