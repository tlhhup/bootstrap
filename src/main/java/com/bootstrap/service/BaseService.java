package com.bootstrap.service;

import java.io.Serializable;
import java.util.List;

import tk.mybatis.mapper.entity.Example;

public interface BaseService<T> {

	void saveEntity(T t);
	
	void updateEntity(T t);
	
	void deleteEntity(T t);
	
	void batchEntity();
	
	T getEntityById(Serializable id);
	
	List<T> getEntityByCondition(Example example);
	
	List<T> findEntity(T t);
	
}
