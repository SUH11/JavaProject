package org.jsoft.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.jsoft.dao.ISysUserDAO;
import org.jsoft.util.DBConnection;
import org.jsoft.vo.SysUser;


public class SysUserDAOImpl implements ISysUserDAO{

	Connection conn;
	public void add(SysUser e) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		conn = DBConnection.getConnection();
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO sys_user(name, sex,department, enter_date, age, education) VALUES (?,?,?,?,?,?)");
		PreparedStatement pst;
		try {
			pst = conn.prepareStatement(sql.toString());
			pst.setString(1, e.getName());
			pst.setString(2, e.getSex());
			pst.setString(3, e.getDepartment());
			pst.setString(4, e.getEnterDate());
			pst.setInt(5, e.getAge());
			pst.setString(6, e.getEducation());
			
			pst.executeUpdate();
			System.out.println("sys_user添加入库");
			pst.close();
//			conn.close();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	public void delete(SysUser e) {
		// TODO Auto-generated method stub
		
	}

	public List<SysUser> list(SysUser e) {
		// TODO Auto-generated method stub
		return null;
	}

	public void update(SysUser e) {
		// TODO Auto-generated method stub
		
	}
	
}
