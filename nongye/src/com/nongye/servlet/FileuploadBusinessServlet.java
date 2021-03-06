package com.nongye.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.nongye.dao.UserDao;
import com.nongye.vo.User;

public class FileuploadBusinessServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		UserDao UDa = null;
		String licence_photo = null;
		try {
			// 接受上传文件

			// 1、创建磁盘文件项工厂
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// 2、创建文件上传的核心类
			ServletFileUpload upload = new ServletFileUpload(factory);

			// 3、解析request---获得文件项集合
			List<FileItem> parseRequest = upload.parseRequest(request);

			int count = 0;
			// 4、遍历文件项集合
			for (FileItem item : parseRequest) {
				// 5、判断普通表单项/文件上传项
				boolean formField = item.isFormField();// 是否是一个普通表单项
				count += 1;
				System.out.println(count);
				if (formField) {
					// 普通表单项
					String corporate_name = item.getFieldName();
					String corporate_value = item.getString();

					System.out.println(corporate_value);

				} else {

					String corporate_name = request.getParameter("corporate_name");
					
					System.out.println(corporate_name+"servlet测试-------");

					String corporate_representative = request.getParameter("corporate_representative");

					// 文件上传项
					// 获得上传文件的名称
					String fileName = item.getName();

					// 获得上传文件的内容
					fileName = fileName
							.substring(fileName.lastIndexOf("\\") + 1);

					InputStream in = item.getInputStream();
					// 将in中的数据拷贝服务器上
					String path = this.getServletContext().getRealPath(
							"/businessUpload");
					OutputStream out = new FileOutputStream(path + "\\"
							+ fileName);

					int len = 0;
					byte[] buffer = new byte[1024 * 1024];
					while ((len = in.read(buffer)) > 0) {
						out.write(buffer, 0, len);

					}
					UDa = new UserDao();

					licence_photo = path + "\\" + fileName;

					try {
							
						int id=(Integer) request.getSession().getAttribute("id");
						System.out.println("获取id测试id="+request.getSession().getAttribute("id"));	
						
						
						System.out.println( corporate_name+ "sevlet测试------");

						boolean flag = UDa.updateBusiness(corporate_name,corporate_representative,licence_photo,id);
						if (flag) {
							System.out.println("企业认证图片入库成功");
							response.setContentType("text/html;charset=utf-8");
							 PrintWriter pw=response.getWriter();
							 pw.print("<script language='javascript'>alert('上传成功');window.location.href='businessAttestation.jsp';</script>");
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					in.close();
					out.close();
					break;
				}

			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}