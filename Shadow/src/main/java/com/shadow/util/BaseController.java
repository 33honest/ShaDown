package com.shadow.util;


import com.shadow.util.Page;
import com.shadow.util.PageData;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * @author FH Q313596790
 * 修改时间：2015、12、11
 */
public class BaseController {
	
	protected Logger logger = LoggerFactory.getLogger(this.getClass());

	private static final long serialVersionUID = 6357869213649815390L;
	
	/** new PageData对象
	 * @return
	 */
	public PageData getPageData(){
		return new PageData(this.getRequest());
	}
	
	/**得到ModelAndView
	 * @return
	 */
	public ModelAndView getModelAndView(){
		return new ModelAndView();
	}
	
	/**得到request对象
	 * @return
	 */
	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		return request;
	}

	/**得到32位的uuid
	 * @return
	 */
	public String get32UUID(){
		return UUID.randomUUID().toString().trim().replaceAll("-", "");
	}
	
	/**得到分页列表的信息
	 * @return
	 */
	public Page getPage(){
		return new Page();
	}
	
	public static void logBefore(Logger logger, String interfaceName){
		logger.info("");
		logger.info("start");
		logger.info(interfaceName);
	}
	
	public static void logAfter(Logger logger){
		logger.info("end");
		logger.info("");
	}

	/**
	 * 得到上传文件文件名
	 * @param id
	 * @param filename
	 * @param date
	 * @return
	 */
	public String getName(int id,String filename,Date date)
	{
		String name = Integer.toString(id).concat("-system-target-").concat(getDate(date)).concat(getPostfix(filename));
		return name;
	}

	public String getName(int id,Date date)
	{
		String name = Integer.toString(id).concat("-system-target-").concat(getDate(date)).concat(".jpg");
		return name;
	}

	private String getPostfix(String filename)
	{
		int index = filename.indexOf(".");
		String postfix = filename.substring(index);
		return postfix;
	}

	private String getDate(Date date)
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		String dateStr = sdf.format(date);
		return dateStr;
	}
	
}
