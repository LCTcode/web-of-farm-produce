package com.nongye.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nongye.dao.UserDao;

/**
 * Servlet implementation class PersonalInfoServlet
 */
/*@WebServlet("/personalInfoServlet")*/
public class PersonalInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PersonalInfoServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String[] types=request.getParameterValues("type");
		
		/*for(int i=0;i<types.length;i++){
			System.out.println("个人身份遍历测试："+types[i]);
			
		}*/
		
		
		
		/*String type1=types[0];
		String type2=types[1];
		String type3=types[2];*/
		
		
		
		String type=(String)types[0]+"-"+types[1]+"-"+types[2];
		String email=request.getParameter("email");
		String tel_number=request.getParameter("tel_number");
		String post_code=request.getParameter("post_code");
		String province=request.getParameter("province");
		String city=request.getParameter("city");
		String area=request.getParameter("area");
		String address=request.getParameter("address");
		int id=(Integer) request.getSession().getAttribute("id");
		
		
		
		System.out.println(type);
		System.out.println(email);
		System.out.println(tel_number);
		System.out.println(post_code);
		System.out.println(province);
		System.out.println(city);
		System.out.println(area);
		System.out.println(address);
		System.out.println(id);
		try {
			System.out.println("个人资料servlet1");

			UserDao UDa = new UserDao();
			boolean flag =UDa.updatePersonalInfo(type,email,tel_number,post_code,province,city,area,address,id);
			
			if (flag) {
				System.out.println("个人资料信息入库成功");
				 response.setContentType("text/html;charset=utf-8");
				 PrintWriter pw=response.getWriter();
				 pw.print("<script language='javascript'>alert('个人信息保存成功');window.location.href='personalInfo.jsp';</script>");
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		} 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
