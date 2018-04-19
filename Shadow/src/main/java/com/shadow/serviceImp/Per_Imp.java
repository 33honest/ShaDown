package com.shadow.serviceImp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shadow.dao.Per_service;
import com.shadow.util.DaoSupport;
import com.shadow.util.Page;
import com.shadow.util.PageData;

@Service("perimp")
public class Per_Imp implements Per_service {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	@Override
	public List<PageData> findAll(Page page) throws Exception {
		// TODO Auto-generated method stub
		return (List<PageData>)dao.findForList("PerMapper.findlist",page);
	}

	@Override
	public int counts(Page page) throws Exception {
		// TODO Auto-generated method stub
		return (int) dao.findForObject("PerMapper.countsinfo",page);
	}
}
