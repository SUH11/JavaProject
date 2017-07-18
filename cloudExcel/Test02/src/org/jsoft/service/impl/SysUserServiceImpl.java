package org.jsoft.service.impl;

import java.util.List;

import org.jsoft.base.BaseServiceImpl;
import org.jsoft.base.IBaseDAO;
import org.jsoft.dao.ICustomerDAO;
import org.jsoft.dao.ISysUserDAO;
import org.jsoft.dao.impl.SysUserDAOImpl;
import org.jsoft.service.ISysUserService;
import org.jsoft.util.StringUtil;
import org.jsoft.vo.SysUser;

public class SysUserServiceImpl extends BaseServiceImpl<SysUser>  implements ISysUserService{

	public SysUserServiceImpl(IBaseDAO<SysUser> baseDAO) {
		super(baseDAO);
		// TODO Auto-generated constructor stub
	}


}
