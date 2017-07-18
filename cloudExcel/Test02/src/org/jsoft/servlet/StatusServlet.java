package org.jsoft.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.jsoft.dao.impl.CustomerDAOImpl;
import org.jsoft.dao.impl.StatusDAOImpl;
import org.jsoft.vo.Customer;
import org.jsoft.vo.Status;

public class StatusServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设置编码集
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		System.out.println("这是在source的doPost方法");
		String method = request.getParameter("method");

		
		if("list".equals(method)){
		
			//设置编码集
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			
			String sign = request.getParameter("sign");
			
			//查询数据status所有记录
			List<Status> statusList = new ArrayList<Status>();
			StatusDAOImpl cd = new StatusDAOImpl();
			
			statusList = cd.list();
	
			
			String listStr = JSONArray.fromObject(statusList).toString();
			
			//System.out.println(customerList.size());
			
			/*for(int i = 0; i < customerList.size(); i ++){
				System.out.println(customerList.get(i));;
				
			}*/
			
			PrintWriter out = response.getWriter();
			
			out.write(listStr);
			System.out.println("这是list方法：返回json对象");
		}else if("status".equals(method)){
				//设置编码集
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=utf-8");
				
				String sign = request.getParameter("sign");
				
				//查询数据status所有记录
				List<Status> statusList = new ArrayList<Status>();
				StatusDAOImpl cd = new StatusDAOImpl();
				
				statusList = cd.list(sign);
		
				
				String listStr = JSONArray.fromObject(statusList).toString();
				
				//System.out.println(customerList.size());
				
				/*for(int i = 0; i < customerList.size(); i ++){
					System.out.println(customerList.get(i));;
					
				}*/
				
				PrintWriter out = response.getWriter();
				
				out.write(listStr);
				System.out.println("这是list方法：返回json对象");

		}
	}
	
}
