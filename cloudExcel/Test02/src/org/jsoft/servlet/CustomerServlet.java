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

import org.jsoft.dao.impl.CustomerDAOImpl;
import org.jsoft.vo.Customer;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class CustomerServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//设置编码集
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String method = request.getParameter("method");
		
		if("list".equals(method)){
			
			//设置编码集
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			
			//查询数据customer所有记录
			List<Customer> customerList = new ArrayList<Customer>();
			CustomerDAOImpl cd = new CustomerDAOImpl();
			
			customerList = cd.list();

			
			String listStr = JSONArray.fromObject(customerList).toString();
			
			//System.out.println(customerList.size());
			
			/*for(int i = 0; i < customerList.size(); i ++){
				System.out.println(customerList.get(i));;
				
			}*/
			
			PrintWriter out = response.getWriter();
			
			out.write(listStr);
			System.out.println("这是list方法：返回json对象");
		}else if("search".equals(method)){
			//设置编码集
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");

			//中文乱码
			String field1 = request.getParameter("field");
			String field = URLDecoder.decode(field1,"utf-8");
			
			String sign1 = request.getParameter("sign");
			String sign = URLDecoder.decode(sign1,"utf-8");
			
			
			//查询数据customer所有记录
			List<Customer> customerList = new ArrayList<Customer>();
			CustomerDAOImpl cd = new CustomerDAOImpl();

			customerList = cd.list(field, sign);

			
			System.out.println(customerList.size());
			String listStr = JSONArray.fromObject(customerList).toString();
			
			for(int i = 0; i < customerList.size(); i ++){
				System.out.println(customerList.get(i));;	
			}
			
			PrintWriter out = response.getWriter();
			out.write(listStr);
		}else if("add".equals(method)){
			//设置编码集
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			String cordType = "utf-8";
			
//			String name = URLDecoder.decode(request.getParameter("name"),cordType);;
//			String source = URLDecoder.decode(request.getParameter("source"),cordType);
//			String status = URLDecoder.decode(request.getParameter("status"),cordType);
//			String userID = URLDecoder.decode(request.getParameter("userID"),cordType);
//			
//			String contactTime = URLDecoder.decode(request.getParameter("contactTime"),cordType);
//			String timeOfContact = URLDecoder.decode(request.getParameter("timeOfContact"),cordType);
//			String money = URLDecoder.decode(request.getParameter("money"),cordType);
//			String address = URLDecoder.decode(request.getParameter("address"),cordType);
//			String phone = URLDecoder.decode(request.getParameter("phone"),cordType);
//			String remarks = URLDecoder.decode(request.getParameter("remarks"),cordType);
//			String file = URLDecoder.decode(request.getParameter("file"),cordType);
//			
//			
//			//将数据添加到customer
//			Customer customer = new Customer();
//			
//			customer.setName(name);
//			customer.setSource(source);
//			customer.setStatus(status);
//			customer.setUserID(Long.parseLong(userID));//String 转Long
//			customer.setContactTime(contactTime);
//			customer.setTimeOfContact(timeOfContact);
//			customer.setMoney(Double.parseDouble(money));//String转double
//			customer.setAddress(address);
//			customer.setPhone(phone);
//			customer.setRemarks(remarks);
//			customer.setFile(file);
//			
//			CustomerDAOImpl c = new CustomerDAOImpl();
//			c.add(customer);
			
			System.out.println("添加用户");
			PrintWriter out = response.getWriter();
			out.write(1);
		}else if("one".equals(method)){
			//设置编码集
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");

			//中文乱码
			Long id = Long.parseLong(request.getParameter("id"));
			
			System.out.println("id:"+id);
			
			//查询数据customer所有记录
			List<Customer> customerList = new ArrayList<Customer>();
			
			CustomerDAOImpl cd = new CustomerDAOImpl();
			customerList = cd.list(id);

			
			System.out.println(customerList.size());
			String listStr = JSONArray.fromObject(customerList).toString();
			
			for(int i = 0; i < customerList.size(); i ++){
				System.out.println(customerList.get(i));;	
			}
			
			PrintWriter out = response.getWriter();
			out.write(listStr);
		}
	}

	private JSONObject JSONObject(String parameter) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
