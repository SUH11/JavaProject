package org.jsoft.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.jsoft.dao.IUserDAO;
import org.jsoft.util.DBConnection;
import org.jsoft.vo.User;

import com.mysql.jdbc.Connection;

public class UserDAOImpl implements IUserDAO{
	
	//验证登录
	public boolean login(User u) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User ul = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append( "select * from user where phone_num=?");
		
		try {
			conn = DBConnection.getConnection();
			ps = conn.prepareStatement(sql.toString());
			ps.setString(1, u.getPhoneNum());
			rs = ps.executeQuery();//接受结果集
			//无法执行
			
			if(rs.next()){
				String a=rs.getString("password");
				if(a.equals(u.getPassword())){
					return true;
				}				
			}
			conn.close();
			ps.close();
		} catch(Exception e) {
			e.printStackTrace();
			// TODO: handle finally clause
		}
		return false;
	}
	
	//验证是否有相同电话号
	public boolean register(User u) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User ul = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append( "select * from user where phone_num=?");
		
		try {
			conn = DBConnection.getConnection();
			ps = conn.prepareStatement(sql.toString());
			ps.setString(1, u.getPhoneNum());
			rs = ps.executeQuery();//接受结果集
			//无法执行
			if(rs.next()){
				String a=rs.getString("phone_num");
				if(a.equals(u.getPhoneNum())){
					System.out.println("已经注册：：：请输入正确的手机号！！！");
					return true;
				}
			}
			
			conn.close();
			ps.close();
		} catch(Exception e) {
			e.printStackTrace();
			// TODO: handle finally clause
		}
		return false;
	}
	
	//如果没有相同电话号，入库
	public void add(User u) {
		Connection conn = DBConnection.getConnection();
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO user(username, password, phone_num) VALUES (?,?,?)");
		PreparedStatement pst;
		try {
			pst = conn.prepareStatement(sql.toString());
			pst.setString(1, u.getUsername());
			pst.setString(2, u.getPassword());
			pst.setString(3, u.getPhoneNum());
			pst.executeUpdate();
			pst.close();
			conn.close();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	public void delete(User e) {
		// TODO Auto-generated method stub
		
	}

	public List<User> list(User e) {
		// TODO Auto-generated method stub
		return null;
	}

	public void update(User e) {
		// TODO Auto-generated method stub
		
	}
	
}
