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
@RequestMapping("/my")
public class IndexController extends BaseController {
	@Autowired
	Per_Imp perimp;
	
	@RequestMapping("sha_index")
	public ModelAndView goindex(Page page)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		mv.setViewName("shadow_index");
		mv.addObject("pd", pd);
		return mv;
	}
	
	
}
