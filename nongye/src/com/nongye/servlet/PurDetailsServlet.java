package com.nongye.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/purDetailsServlet")
public class PurDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PurDetailsServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
			/*
			String purchase_name=request.getParameter("purchase_name");
			//String purchase_name=(String) request.getSession().getAttribute("purchase_name");
			String purchase_number=(String) request.getSession().getAttribute("purchase_number");
			String text=(String) request.getSession().getAttribute("text");
			String type=(String) request.getSession().getAttribute("text");
			String expected_price=(String) request.getSession().getAttribute("expected_price");
			String address=(String) request.getSession().getAttribute("address");
			String user_name=(String) request.getSession().getAttribute("user_name");
			String tel_number=(String) request.getSession().getAttribute("tel_number");
			
			String ontime=(String) request.getSession().getAttribute("ontime");
			String offtime=(String) request.getSession().getAttribute("offtime");
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");可能需要转日期格式 
			
			int user_id=(Integer) request.getSession().getAttribute("user_id");
			
			
			System.out.println(purchase_name+"收到数据测试");
			System.out.println(text+"收到数据测试");*/
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
