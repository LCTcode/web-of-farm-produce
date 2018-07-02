package com.nongye.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nongye.dao.AjaxDao;

/**
 * Ajax检验用户是否重复注册
 */
@WebServlet("/ajaxRegServlet")
public class AjaxRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AjaxRegServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		response.setHeader("pragma", "no-cache");
        response.setHeader("cache-control", "no-cache");
         
        response.setContentType("text/html;charset=utf-8");
		
		
		
		
		String idcard=request.getParameter("idcard");
		System.out.println(idcard+"Ajax-servlet取值测试");
		AjaxDao AD=new AjaxDao();
		
		boolean flag=AD.selectReg(idcard);
		
		PrintWriter out=response.getWriter();
		
		out.println(flag);
		System.out.println(flag+"=======是否找到身份证");
		out.flush();
		out.close();
		
	}

}
