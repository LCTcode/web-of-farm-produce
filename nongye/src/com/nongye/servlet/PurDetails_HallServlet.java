package com.nongye.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 此servlet 是采购大厅的查看详情的servlet，接收传过来的id进行查询显示到采购详情界面
 */
@WebServlet("/purDetails_HallServlet")
public class PurDetails_HallServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public PurDetails_HallServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String purchase_name=request.getParameter("purchase_name");
		String purchase_number=request.getParameter("purchase_number");
		String user_name=request.getParameter("user_name");
		String tel_number=request.getParameter("tel_number");
		String expected_price=request.getParameter("expected_price");
		String offtime=request.getParameter("offtime");
		String ontime=request.getParameter("ontime");
		String type=request.getParameter("type");
		String address=request.getParameter("address");
		String text=request.getParameter("text");
		
		/*System.out.println(purchase_name);
		System.out.println(purchase_number);
		System.out.println(user_name);
		System.out.println(tel_number);
		System.out.println(expected_price);
		System.out.println(offtime);
		System.out.println(ontime);
		System.out.println(type);
		System.out.println(address);
		System.out.println(text);取值测试断点
		*/
		
		request.setAttribute( "ontime",ontime);
		request.setAttribute( "purchase_name",purchase_name);
		request.setAttribute( "purchase_number",purchase_number);
		request.setAttribute( "user_name",user_name);
		request.setAttribute( "tel_number",tel_number);
		request.setAttribute( "expected_price",expected_price);
		request.setAttribute( "offtime",offtime);
		request.setAttribute( "type",type);
		request.setAttribute( "address",address);
		request.setAttribute( "text",text);
		request.getRequestDispatcher( "procurementDetails_Hall.jsp").forward(request,response); 
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
