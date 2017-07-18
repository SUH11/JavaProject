package org.jsoft.service.impl;

import java.util.List;

import org.jsoft.base.BaseServiceImpl;
import org.jsoft.base.IBaseDAO;
import org.jsoft.service.IUserService;
import org.jsoft.vo.User;

public class UserServiceImpl extends BaseServiceImpl<User>  implements IUserService{

	public UserServiceImpl(IBaseDAO<User> baseDAO) {
		super(baseDAO);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void add(User e) {
		// TODO Auto-generated method stub
		super.add(e);
	}

	@Override
	public void delete(User e) {
		// TODO Auto-generated method stub
		super.delete(e);
	}

	@Override
	public List<User> list(User e) {
		// TODO Auto-generated method stub
		return super.list(e);
	}

	@Override
	public void update(User e) {
		// TODO Auto-generated method stub
		super.update(e);
	}
	
	
}
