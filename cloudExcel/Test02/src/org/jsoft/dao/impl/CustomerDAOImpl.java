package org.jsoft.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.jsoft.dao.ICustomerDAO;
import org.jsoft.util.DBConnection;
import org.jsoft.util.StringUtil;
import org.jsoft.vo.Customer;


public class CustomerDAOImpl implements ICustomerDAO{

	Connection conn;
	//查询所有
	public List<Customer> list() {
		// TODO Auto-generated method stub
		List<Customer> result = new ArrayList<Customer>();
		List<Object> params = new ArrayList<Object>();
		Customer e = new Customer();
		conn = DBConnection.getConnection();
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM customer WHERE 1=1 ");
		PreparedStatement pst;
		try {
			pst = conn.prepareStatement(sql.toString());
			if(!StringUtil.isBlank(params)){
				for(int i = 0; i < params.size(); i++){
					pst.setString(i + 1, params.get(i) + "");
				}
			}
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				Customer customer = new Customer();
				customer.setId(rs.getLong("id"));
				customer.setName(rs.getString("name"));
				customer.setSource(rs.getString("source"));
				customer.setStatus(rs.getString("status"));
				customer.setUserID(rs.getLong("user_id"));
				customer.setContactTime(rs.getString("contact_time"));
				customer.setTimeOfContact(rs.getString("time_of_contact"));
				customer.setMoney(rs.getDouble("money"));
				customer.setAddress(rs.getString("address"));
				customer.setPhone(rs.getString("phone"));
				customer.setRemarks(rs.getString("remarks"));
				customer.setFile(rs.getString("file"));
				result.add(customer);
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		/*System.out.println("这是在list里");
		System.out.println(result.size());
		for(int i = 0; i < result.size(); i ++){
			System.out.println(result.get(i));;
			
		}*/
		return result;
	}
	
	//按id查询
	public List<Customer> list(Long id) {
		// TODO Auto-generated method stub
		List<Customer> result = new ArrayList<Customer>();

		Customer e = new Customer();
		conn = DBConnection.getConnection();
		StringBuffer sql = new StringBuffer();
		

		sql.append(" SELECT * FROM customer WHERE ID =?");	

		
		PreparedStatement pst;
		try {
			pst = conn.prepareStatement(sql.toString());

			pst.setLong(1, id);
   		    ResultSet rs = pst.executeQuery();
			
			System.out.println(sql);
			
			while(rs.next()){
				Customer customer = new Customer();
				customer.setId(rs.getLong("id"));
				customer.setName(rs.getString("name"));
				customer.setSource(rs.getString("source"));
				customer.setStatus(rs.getString("status"));
				customer.setUserID(rs.getLong("user_id"));
				customer.setContactTime(rs.getString("contact_time"));
				customer.setTimeOfContact(rs.getString("time_of_contact"));
				customer.setMoney(rs.getDouble("money"));
				customer.setAddress(rs.getString("address"));
				customer.setPhone(rs.getString("phone"));
				customer.setRemarks(rs.getString("remarks"));
				customer.setFile(rs.getString("file"));
				result.add(customer);
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println("这是在查询id里");
		System.out.println(result.size());
		for(int i = 0; i < result.size(); i ++){
			System.out.println(result.get(i));;
			
		}
		return result;
	}
	
	//指定查询
	public List<Customer> list(String field, String sign) {
		// TODO Auto-generated method stub
		List<Customer> result = new ArrayList<Customer>();
		List<Object> params = new ArrayList<Object>();
		Customer e = new Customer();
		conn = DBConnection.getConnection();
		StringBuffer sql = new StringBuffer();
		
		if("status".equals(sign)){
			sql.append(" SELECT * FROM customer WHERE STATUS =?");	
			
		}else if("name".equals(sign)){
			sql.append("SELECT * FROM customer WHERE NAME =?");					
		}
		
		PreparedStatement pst;
		try {
			pst = conn.prepareStatement(sql.toString());
			
			
//			if(!StringUtil.isBlank(params)){
//				for(int i = 0; i < params.size(); i++){
//					pst.setString(i + 1, params.get(i) + "");
//				}
//   		}
			pst.setString(1, field);
   		    ResultSet rs = pst.executeQuery();
			
			System.out.println(sql);
			
			while(rs.next()){
				Customer customer = new Customer();
				customer.setId(rs.getLong("id"));
				customer.setName(rs.getString("name"));
				customer.setSource(rs.getString("source"));
				customer.setStatus(rs.getString("status"));
				customer.setUserID(rs.getLong("user_id"));
				customer.setContactTime(rs.getString("contact_time"));
				customer.setTimeOfContact(rs.getString("time_of_contact"));
				customer.setMoney(rs.getDouble("money"));
				customer.setAddress(rs.getString("address"));
				customer.setPhone(rs.getString("phone"));
				customer.setRemarks(rs.getString("remarks"));
				customer.setFile(rs.getString("file"));
				result.add(customer);
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println("这是在list2里");
		System.out.println(result.size());
		for(int i = 0; i < result.size(); i ++){
			System.out.println(result.get(i));;
			
		}
		return result;
	}
	
	
	
	public List<Customer> list(Customer e) {
		// TODO Auto-generated method stub
		List<Customer> result = new ArrayList<Customer>();
		List<Object> params = new ArrayList<Object>();
		conn = DBConnection.getConnection();
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM customer WHERE 1=1 ");
		if(!StringUtil.isBlank(e.getId())){
			sql.append(" AND id=? ");
			params.add(e.getId());
		}
		if(!StringUtil.isBlank(e.getName())){
			sql.append(" AND name=? ");
			params.add(e.getName());
		}
		if(!StringUtil.isBlank(e.getSource())){
			sql.append(" AND source=? ");
			params.add(e.getSource());
		}
		if(!StringUtil.isBlank(e.getStatus())){
			sql.append(" AND status=? ");
			params.add(e.getSource());
		}
		if(!StringUtil.isBlank(e.getUserID())){
			sql.append(" AND user_id=? ");
			params.add(e.getUserID());
		}
		if(!StringUtil.isBlank(e.getContactTime())){
			sql.append(" AND contact_time=? ");
			params.add(e.getContactTime());
		}
		if(!StringUtil.isBlank(e.getTimeOfContact())){
			sql.append(" AND time_of_contact=? ");
			params.add(e.getTimeOfContact());
		}
		
		if(!StringUtil.isBlank(e.getMoney())){
			sql.append(" AND money=? ");
			params.add(e.getMoney());
		}
		
		if(!StringUtil.isBlank(e.getAddress())){
			sql.append(" AND address=? ");
			params.add(e.getAddress());
		}
		
		if(!StringUtil.isBlank(e.getPhone())){
			sql.append(" AND phone=? ");
			params.add(e.getPhone());
		}
		
		if(!StringUtil.isBlank(e.getRemarks())){
			sql.append(" AND remarks=? ");
			params.add(e.getRemarks());
		}
		if(!StringUtil.isBlank(e.getFile())){
			sql.append(" AND file=? ");
			params.add(e.getFile());
		}
		PreparedStatement pst;
		try {
			pst = conn.prepareStatement(sql.toString());
			if(!StringUtil.isBlank(params)){
				for(int i = 0; i < params.size(); i++){
					pst.setString(i + 1, params.get(i) + "");
				}
			}
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				Customer customer = new Customer();
				customer.setId(rs.getLong("id"));
				customer.setName(rs.getString("name"));
				customer.setSource(rs.getString("source"));
				customer.setStatus(rs.getString("status"));
				customer.setUserID(rs.getLong("user_id"));
				
				customer.setContactTime(rs.getString("contact_time"));
				customer.setTimeOfContact(rs.getString("time_of_contact"));
				customer.setMoney(rs.getDouble("money"));
				customer.setAddress(rs.getString("address"));
				customer.setPhone(rs.getString("phone"));
				customer.setRemarks(rs.getString("remarks"));
				customer.setFile(rs.getString("file"));
				result.add(customer);
				
				pst.close();
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		return result;
	}
	public void add(Customer e) {
		// TODO Auto-generated method stub
		conn = DBConnection.getConnection();
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO customer(name, source,status, user_id, contact_time, time_of_contact,money, address, phone, remarks, file) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
		PreparedStatement pst;
		try {
			pst = conn.prepareStatement(sql.toString());
			pst.setString(1, e.getName());
			pst.setString(2, e.getSource());
			pst.setString(3, e.getStatus());
			pst.setLong(4, e.getUserID());
			pst.setString(5, e.getContactTime());
			pst.setString(6, e.getTimeOfContact());
			pst.setDouble(7, e.getMoney());
			pst.setString(8, e.getAddress());
			pst.setString(9, e.getPhone());
			pst.setString(10, e.getRemarks());
			pst.setString(11, e.getFile());
			
			pst.executeUpdate();
			System.out.println("添加入库");
			pst.close();
//			conn.close();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		
		
	}
	public void delete(Customer e) {
		// TODO Auto-generated method stub
		
	}
	public void update(Customer e) {
		// TODO Auto-generated method stub
		
	}
	

	

}
