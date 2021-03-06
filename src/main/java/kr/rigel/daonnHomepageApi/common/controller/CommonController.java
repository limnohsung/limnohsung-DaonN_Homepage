package kr.rigel.daonnHomepageApi.common.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.rigel.daonnHomepageApi.common.common.CommandMap;
import kr.rigel.daonnHomepageApi.common.service.CommonService;
import kr.rigel.daonnHomepageApi.sample.dao.SampleDAO;

@Controller
public class CommonController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="commonService")
	private CommonService commonService;
	
	@Resource(name="sampleDAO")
	private SampleDAO sampleDAO; 
	
	
	
}
