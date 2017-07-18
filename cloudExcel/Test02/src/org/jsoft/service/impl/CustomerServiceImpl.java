package org.jsoft.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.jsoft.base.BaseServiceImpl;
import org.jsoft.base.IBaseDAO;
import org.jsoft.dao.ICustomerDAO;
import org.jsoft.dao.IUserDAO;
import org.jsoft.dao.impl.UserDAOImpl;
import org.jsoft.service.ICustomerService;
import org.jsoft.util.StringUtil;
import org.jsoft.vo.Customer;

public class CustomerServiceImpl extends BaseServiceImpl<Customer> implements ICustomerService{

	public CustomerServiceImpl(IBaseDAO<Customer> baseDAO) {
		super(baseDAO);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void add(Customer e) {
		// TODO Auto-generated method stub
		super.add(e);
	}

	@Override
	public void delete(Customer e) {
		// TODO Auto-generated method stub
		super.delete(e);
	}

	@Override
	public List<Customer> list(Customer e) {
		// TODO Auto-generated method stub
		return super.list(e);
	}

	@Override
	public void update(Customer e) {
		// TODO Auto-generated method stub
		super.update(e);
	}

	
}
