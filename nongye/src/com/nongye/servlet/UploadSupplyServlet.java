package com.nongye.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.nongye.dao.SupplyGoodsDao;


/**
 *上传供应商品图片的servlet
 */
@WebServlet("/uploadSupplyServlet")
public class UploadSupplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UploadSupplyServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		SupplyGoodsDao SGD=new SupplyGoodsDao();
		System.out.println("进入servlet++++++++");
		
		
		int supply_id=(Integer) request.getSession().getAttribute("supply_id");/* 接收存储在session 中的id*/
		System.out.println(supply_id+"======接收supply_id测试");
		
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
				System.out.println(count+"======count次数");
				if (formField) {
					// 普通表单项
					String lujing = item.getFieldName();
					String path = item.getString();

					System.out.println(path+"路径1111111");

				} else {


					String keywords = (String) request.getSession().getAttribute("keywords");
					String picture_name=keywords;
					String remark=keywords;
					System.out.println(keywords);	

					// 文件上传项
					// 获得上传文件的名称
					String fileName = item.getName();

					// 获得上传文件的内容
					fileName = fileName
							.substring(fileName.lastIndexOf("\\") + 1);

					InputStream in = item.getInputStream();
					// 将in中的数据拷贝服务器上
					String path = this.getServletContext().getRealPath(
							"/uploadSupply");
					OutputStream out = new FileOutputStream(path + "\\"
							+ fileName);

					int len = 0;
					byte[] buffer = new byte[1024 * 1024];
					while ((len = in.read(buffer)) > 0) {
						out.write(buffer, 0, len);

					}
					

					path = path + "\\" + fileName;
					System.out.println(path+"路径22222");
					try {
							
					/*	int id=(Integer) request.getSession().getAttribute("id");
						System.out.println("获取id测试id="+request.getSession().getAttribute("id"))*/;	
						
						
						
						System.out.println(keywords+"--"+ picture_name+"--"+remark+"keywords关键字测试+++++");
						
					
						
						int n = SGD.uploadSupply(supply_id,path, picture_name, remark);
						
						if (n>0) {
							System.out.println("供应图片入库成功");
							response.setContentType("text/html;charset=utf-8");
							 PrintWriter pw=response.getWriter();
							 pw.print("<script language='javascript'>alert('发布供应图片成功');window.location.href='lssueSupply.jsp';</script>");
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
