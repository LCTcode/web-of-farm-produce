package com.nongye.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nongye.dao.UserDao;
import com.nongye.vo.User;

/**
 * Servlet implementation class UserRegServlet
 */
/*@WebServlet("/userRegServlet")*/
public class UserRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public UserRegServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String user_name=request.getParameter("user_name");
		String user_pwd=request.getParameter("user_pwd");
		String mob_number=request.getParameter("mob_number");
		String idcard=request.getParameter("idcard");
		String licence=request.getParameter("licence");
		
		
		System.out.println("user_name:"+user_name);
		
		UserDao UDa=new UserDao();
		try {
			boolean flag=UDa.userReg(user_name,user_pwd,mob_number,idcard,licence);
		
			if(flag){
				//
				/*request.getSession().setAttribute("User",uu);*/
				System.out.println("注册成功跳转到登录");
				response.sendRedirect("login.jsp");
			}
			else{
				System.out.println("注册失败");
				response.sendRedirect("reg.jsp");
			}
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}

}
