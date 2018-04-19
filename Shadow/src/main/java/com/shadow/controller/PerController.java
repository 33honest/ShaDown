package com.shadow.controller;

import java.io.File;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.shadow.entity.UserEntity;
import com.shadow.serviceImp.Per_Imp;
import com.shadow.util.BaseController;
import com.shadow.util.Page;
import com.shadow.util.PageData;

import freemarker.template.Configuration;
import freemarker.template.Template;

@Controller
@RequestMapping("/pers")
public class PerController extends BaseController {
	@Autowired
	Per_Imp perimp;
	
	@RequestMapping("/per_details" )
	public ModelAndView detailsInfo(Page page,String number) throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		mv.setViewName("per_details");
		return mv;
	}
	
	@RequestMapping("/per_ind")
	public ModelAndView getinfo(Page page,String number) throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		pd.put("limits", 0);
		List<PageData> ul=perimp.findAll(page);
		int counts=perimp.counts(page);
		mv.setViewName("Periodical");
		mv.addObject("info", ul);
		mv.addObject("pd", pd);
		mv.addObject("counts", counts%5 == 0 ? counts/5 : (counts/5)+1);
		return mv;
	}
	
	@RequestMapping("/ajaxpage")
	@ResponseBody
	public List<PageData> ajaxPage(Page page,String number)throws Exception{
		int limits=0;
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		if(number != null){
			limits=(Integer.valueOf(number) - 1)* 5;
			pd.put("limits",limits);
		}
		List<PageData> ul=perimp.findAll(page);
		return ul;
	}
	
	
}
