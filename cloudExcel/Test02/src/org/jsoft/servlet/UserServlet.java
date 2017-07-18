package org.jsoft.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoft.dao.impl.UserDAOImpl;
import org.jsoft.vo.User;

public class UserServlet extends HttpServlet{

	/**
	 * 
	 */
	public UserServlet() {
		// TODO Auto-generated constructor stub
	}
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}
	

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String method = request.getParameter("method");
		
		if("login".equals(method)){
			String phoneNum = request.getParameter("phoneNum");
			String password = request.getParameter("password");
			
			User u = new User();
			u.setPhoneNum(phoneNum);
			u.setPassword(password);
			
			UserDAOImpl ud =new UserDAOImpl();
			boolean flag = ud.login(u);
			
			if(flag){
				request.getRequestDispatcher("tb1.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("login_error.jsp").forward(request, response);
			}
		}else if("register".equals(method)){
			String phoneNum = request.getParameter("phoneNum");
			String username = request.getParameter("loginName");
			String password = request.getParameter("password");
			
			//注册页面，将注册信息放到数据库
			User u = new User();
			u.setUsername(username);
			u.setPassword(password);
			u.setPhoneNum(phoneNum);
			UserDAOImpl ud =new UserDAOImpl();
			
			boolean flag = ud.register(u);
			
			//从数据库里查询是否有相同电话号码，如果有，返回注册页面
			if(flag){
				request.getRequestDispatcher("regis_error_h.jsp").forward(request, response);
			}else if(phoneNum.length() < 11){				
				request.getRequestDispatcher("regis_error.jsp").forward(request, response);
			}else{
			//如果没有相同电话号码，入库
				ud.add(u);
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			
			
			
			
		}
		
		
		
	}
	
}
