package com.nongye.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nongye.dao.SupplyGoodsDao;
import com.nongye.vo.Purchase;
import com.nongye.vo.ReciveAjaxSupply;

/**
 * 接收上传的供应数据存储到数据库
 */
@WebServlet("/reciveSupplyServlet")
public class ReciveSupplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReciveSupplyServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		System.out.println("执行servlet");
		
		/*String goods=request.getParameter("goods");
		String goods_type=request.getParameter("goods_type");保留1级2级字段 
		String user_name=request.getParameter("user_name");保留用户
		String tel_number=request.getParameter("tel_number");保留电话
		 *
		 */
		SupplyGoodsDao SGD = new SupplyGoodsDao();
		
	
		
		
		String goods_name=request.getParameter("goods_name");
		
		System.out.println(goods_name+"--servlet获取产品名");
		
		String keywords=request.getParameter("keywords");
		String standard=request.getParameter("standard");
		String price=request.getParameter("price");
		
		String ontime1=request.getParameter("ontime");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	     
		String text=request.getParameter("text");
		String context=request.getParameter("context");
		String address=request.getParameter("address");
		
		int user_id=(Integer) request.getSession().getAttribute("id");//获取session中所存储的用户id		
		
		request.getSession().setAttribute("keywords",keywords); //存储keywords到session中待其他操作需求
		
		System.out.println(user_id+"------这是用户登录时存储的用户id");
		System.out.println("servlet接收jsp值:  " + keywords);
		
		
		java.util.Date ontime;
		try {
		ontime = sdf.parse(ontime1);
	    System.out.println("servlet断点++++++++");
		int supply_id=SGD.insertSupply(user_id, keywords, goods_name, text, context, price, standard, address, ontime);
			
		if(supply_id !=0){
		System.out.println("发布供应成功啊啊啊啊啊啊啊啊啊");
		
		
		String value[]=request.getParameterValues("value");
		List<ReciveAjaxSupply> list_s=(List<ReciveAjaxSupply>) request.getSession().getAttribute("list_s");
		for(int i=0;i<value.length;i++){
			
			String value_1=value[i];
			int n=SGD.insertValue(value_1);
			
			
				int value_id=SGD.findValue_id(value_1);
		
				int attribute_id=list_s.get(i).getAttribute_id();
				
				int supply_id_1=SGD.insertVaAtt(attribute_id, value_id,keywords,standard,price,text,context,address,user_id);
				/*方法返回供应id 这个id 将存储到session 中，然后作为图片上传的条件*/
				
				HttpSession session=request.getSession();
				
				session.setAttribute("supply_id", supply_id_1);
				System.out.println("供应id 存入session 成功====="+supply_id_1);
			
		}

		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw=response.getWriter();
		pw.print("<script language='javascript'>alert('发布供应成功您可以继续给所发布的货物添加图片，也可以不用');window.location.href='uploadSupply.jsp';</script>");
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
