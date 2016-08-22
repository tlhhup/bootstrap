package com.bootstrap.service.impl;

import java.io.Serializable;
import java.util.List;

import com.bootstrap.service.BaseService;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Example;

public abstract class BaseServiceImpl<T> implements BaseService<T> {
	
	private Mapper<T> mapper;
	
	public void setMapper(Mapper<T> mapper) {
		this.mapper = mapper;
	}

	@Override
	public void saveEntity(T t) {
		this.mapper.insert(t);
	}

	@Override
	public void updateEntity(T t) {
		this.mapper.updateByPrimaryKey(t);
	}

	@Override
	public void deleteEntity(T t) {
		this.mapper.delete(t);
	}

	@Override
	public void batchEntity() {
		// TODO 处理批量更新
	}

	@Override
	public T getEntityById(Serializable id) {
		return this.mapper.selectByPrimaryKey(id);
	}
	
	@Override
	public List<T> getEntityByCondition(Example example) {
		return this.mapper.selectByExample(example);
	}

	@Override
	public List<T> findEntity(T t) {
		return this.mapper.select(t);
	}

}
