package org.jsoft.base;

import java.util.List;

public class BaseServiceImpl<E> implements IBaseService<E>{

	public IBaseDAO<E> baseDAO;
	
	public BaseServiceImpl(IBaseDAO<E> baseDAO){
		this.baseDAO = baseDAO;
	}
	
	public void add(E e) {
		// TODO Auto-generated method stub
		baseDAO.add(e);
	}

	public void delete(E e) {
		// TODO Auto-generated method stub
		baseDAO.delete(e);
	}

	public List<E> list(E e) {
		// TODO Auto-generated method stub
		return baseDAO.list(e);
	}

	public void update(E e) {
		// TODO Auto-generated method stub
		baseDAO.update(e);
	}

}
