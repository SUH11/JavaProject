package org.jsoft.base;

import java.util.List;

public interface IBaseDAO<E> {

	public void add(E e);
	
	public void delete(E e);
	
	public void update(E e);
	
	public List<E> list(E e);
	
}
