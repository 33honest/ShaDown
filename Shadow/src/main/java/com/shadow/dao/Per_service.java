package com.shadow.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.shadow.util.Page;
import com.shadow.util.PageData;

@Service
public interface Per_service {
	public List<PageData> findAll(Page page) throws Exception;
	public int counts(Page page) throws Exception;
}
