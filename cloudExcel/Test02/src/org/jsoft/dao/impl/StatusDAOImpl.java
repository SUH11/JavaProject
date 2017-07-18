package org.jsoft.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.jsoft.dao.IStatusDAO;
import org.jsoft.util.DBConnection;
import org.jsoft.util.StringUtil;
import org.jsoft.vo.Customer;
import org.jsoft.vo.Status;

public class StatusDAOImpl implements IStatusDAO{
	Connection conn;
	
	public void add(Status e) {
		// TODO Auto-generated method stub
		
	}

	public void delete(Status e) {
		// TODO Auto-generated method stub
		
	}
	public List<Status> list(Status e) {
		return null;
	}
	
	//无参查询所有
	public List<Status> list() {

		List<Status> result = new ArrayList<Status>();
		List<Object> params = new ArrayList<Object>();
		
		conn = DBConnection.getConnection();
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM status ");
		PreparedStatement pst;
		try {
			pst = conn.prepareStatement(sql.toString());

			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				Status status = new Status();
				status.setId(rs.getLong("id"));
				status.setsValue(rs.getString("s_value"));
				status.setsKey(rs.getString("s_key"));
				status.setTableName(rs.getString("table_name"));
				status.setSort(rs.getLong("sort"));

				result.add(status);
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println("这是在StatusDAO的list里");
		System.out.println(result.size());
		for(int i = 0; i < result.size(); i ++){
			System.out.println(result.get(i));;
			
		}
		return result;
	}
	
	
	//部分查询 
	public List<Status> list(String sign) {
		// TODO Auto-generated method stub
		List<Status> result = new ArrayList<Status>();
		List<Object> params = new ArrayList<Object>();
		
		Status e = new Status();
		conn = DBConnection.getConnection();
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM status WHERE TABLE_NAME=? ");
		PreparedStatement pst;
		try {
			pst = conn.prepareStatement(sql.toString());
			pst.setString(1, sign);

			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				Status status = new Status();
				status.setId(rs.getLong("id"));
				status.setsValue(rs.getString("s_value"));
				status.setsKey(rs.getString("s_key"));
				status.setTableName(rs.getString("table_name"));
				status.setSort(rs.getLong("sort"));

				result.add(status);
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println("这是在StatusDAO的list里");
		System.out.println(result.size());
		for(int i = 0; i < result.size(); i ++){
			System.out.println(result.get(i));;
			
		}
		return result;
	}

	public void update(Status e) {
		// TODO Auto-generated method stub
		
	}

	
	
}
