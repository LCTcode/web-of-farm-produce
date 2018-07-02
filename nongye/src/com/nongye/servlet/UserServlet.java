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

/*@WebServlet("/userServlet")*/
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserServlet() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String UserName=request.getParameter("user_name");
		String UserPwd=request.getParameter("user_pwd");
		
		
		System.out.println( UserName+"....."+UserPwd);
		
		
		UserDao UDa=new UserDao();
		try {
			int uu=UDa.checkUser(UserName,UserPwd);
			//System.out.println(uu);
			/*int id = uu.getUser_id();
			System.out.println(id);*/
			System.out.println(uu+"ididididididi");
			if(uu!=0){
				//
				/*request.getSession().setAttribute("id",id);
*/				request.getSession().setAttribute("id",uu);
				response.sendRedirect("userHoutai.jsp");
			}
			else{
				response.sendRedirect("login.jsp");
			}
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}
}
