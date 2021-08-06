package kr.rigel.daonnHomepageApi.admin.controller;

import java.io.File;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import kr.rigel.daonnHomepageApi.admin.dao.HomePageAdminDAO;
import kr.rigel.daonnHomepageApi.admin.service.HomePageAdminService;
import kr.rigel.daonnHomepageApi.common.common.CommandMap;
import kr.rigel.daonnHomepageApi.common.service.CommonService;
import kr.rigel.daonnHomepageApi.common.util.SecurityUtil;
import kr.rigel.daonnHomepageApi.sample.dao.SampleDAO;

@Controller
public class HomePageAdminController {
Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="homePageAdminService")
	private HomePageAdminService homePageAdminService;
	
	@Resource(name="homePageAdminDAO")
	private HomePageAdminDAO homePageAdminDAO;
	
	/**
	 * main 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/main.do")
	public ModelAndView main(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("main");

		return mv;
	}
	
	/**
	 * bizArea 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/bizArea.do")
	public ModelAndView bzArea(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/build/bz_area");

		return mv;
	}
	
	/**
	 * systemOp 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/systemOp.do")
	public ModelAndView systemOp(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/build/system_op");

		return mv;
	}
	
	/**
	 * upcsDevice 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/upcsDevice.do")
	public ModelAndView upcsDevice(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/build/upcs_device");

		return mv;
	}
	
	/**
	 * upcsSystem 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/inOutFlow.do")
	public ModelAndView inOutFlow(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/build/in_out_flow");

		return mv;
	}
	
	/**
	 * upcsSystem 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/upcsSystem.do")
	public ModelAndView upcsSystem(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/build/upcs_system");

		return mv;
	}
	
	/**
	 * certification 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/certification.do")
	public ModelAndView certification(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/overview/certification");

		return mv;
	}
	/**
	 * opPolicy 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/opPolicy.do")
	public ModelAndView opPolicy(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/overview/operation_policy");

		return mv;
	}
	
	/**
	 * history 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/history.do")
	public ModelAndView history(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/overview/history");

		return mv;
	}
	
	/**
	 * organization 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/organization.do")
	public ModelAndView organization(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/overview/organization");

		return mv;
	}
	
	/**
	 * overview 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/overview.do")
	public ModelAndView overview(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/overview/overview");

		return mv;
	}
	
	/**
	 * upcsCloud 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/upcsCloud.do")
	public ModelAndView upcsCloud(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/overview/upcs_cloud");

		return mv;
	}
	
	/**
	 * opService 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/opService.do")
	public ModelAndView opService(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/parking_system/op_service");

		return mv;
	}
	
	/**
	 * parkingControl 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/parkingControl.do")
	public ModelAndView parkingControl(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/parking_system/parking_control");

		return mv;
	}
	
	/**
	 * pesService 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/pesService.do")
	public ModelAndView pesServoce(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/parking_system/pes_service");

		return mv;
	}
	
	/**
	 * webMobileService 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/webMobileService.do")
	public ModelAndView webMobileService(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/parking_system/web_mobile_service");

		return mv;
	}
	
	/**
	 * jmw 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/jmw.do")
	public ModelAndView jmw(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/ebook/jmw");

		return mv;
	}
	
	/**
	 * catalog 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/catalogue.do")
	public ModelAndView catalog(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/ebook/catalogue");

		return mv;
	}
	
	@RequestMapping(value="123", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody Object webSoket(HttpServletRequest request, @RequestBody Map<String, Object> map, HttpServletResponse response) throws Exception{
	ModelAndView mv = new ModelAndView("jsonView");
		Map<String, Object> resultMap = new HashMap<String, Object>();
		//adminService.webSocketInOutHist(map);
		
		return mv;
	}
	
	/**
	 * login 진입
	 * @param map
	 * @return Redirect
	 * @throws Exception
	 */
	@RequestMapping(value="/login.do")
	public ModelAndView login(@RequestParam Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/board/login");
		mv.addObject("map",map);
		return mv;
	}
	
	
	
	// 로그인 기능
	@RequestMapping(value="/select/homepageAdminCnt.do")
	public ModelAndView homepageAdminCnt(@RequestParam Map<String, Object> map, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/boardList.do");
		String id = (String) map.get("ID");
		String pass = (String) map.get("PASS");
		String shaPass = SecurityUtil.encryptSHA256(pass);
		map.put("shaPass", shaPass);
		String resultMsg = null;
		int chk = homePageAdminDAO.selectHomepageAdminCnt(map);
		if(chk == 1) {
			resultMsg = "success";
			request.getSession().setAttribute("ID", id);
		}else {
			mv = new ModelAndView("redirect:/login.do");
			resultMsg = "failed";
		}
		mv.addObject("resultMsg", resultMsg);
		return mv;
	}
	
	@RequestMapping(value="/admin/write.do")
	public ModelAndView adminWrite(@RequestParam Map<String, Object> map) throws Exception{
		ModelAndView mv = new ModelAndView("/board/write");
		String seq = (String) map.get("seq");
		if(seq != null) {
			mv.addObject("chk", "modify");
		}
		Map<String, Object> resultMap = homePageAdminDAO.selectArticleInfo(map);
		int cnt = 0;
		List<Map<String, Object>> resultList = (List<Map<String, Object>>) resultMap.get("result");
		if(resultList.size() == 1 && resultList.get(0).get("total_count") == null) {	
		    resultList = new ArrayList<Map<String,Object>>();
		}else {
		  ((BigInteger) resultList.get(0).get("total_count")).intValue();
		}
		mv.addObject("list", resultList);
		return mv;
	}
	
	@RequestMapping(value="/admin/imageUpload.do")
	public ModelAndView imageUpload(@RequestParam Map<String, Object> map) throws Exception{
		ModelAndView mv = new ModelAndView("/board/write");
		return mv;
	}
	
	@RequestMapping(value="/admin/insertArticleInfo.do")
	public ModelAndView insertArticleInfo(@RequestParam Map<String, Object> map, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("jsonView");
		String id = (String) request.getSession().getAttribute("ID");
		map.put("id", id);
		try {
			homePageAdminDAO.insertArticleInfo(map);
		} catch (Exception e) {
			mv.addObject("result", "failed");
		}
		return mv;
	}
	
	@RequestMapping(value="/admin/updateArticleInfo.do")
	public ModelAndView updateArticleInfo(@RequestParam Map<String, Object> map, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("jsonView");
		String id = (String) request.getSession().getAttribute("ID");
		map.put("id", id);
		try {
			homePageAdminDAO.updateArticleInfo(map);
		} catch (Exception e) {
			mv.addObject("result", "failed");
		}
		return mv;
	}
	
	@RequestMapping(value="/admin/deleteArticleInfo.do")
	public ModelAndView deleteArticleInfo(@RequestParam Map<String, Object> map, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("jsonView");
		String id = (String) request.getSession().getAttribute("ID");
		map.put("id", id);
		try {
			homePageAdminDAO.deleteArticleInfo(map);
		} catch (Exception e) {
			mv.addObject("result", "failed");
		}
		return mv;
	}
	
	@RequestMapping(value = "/boardList.do")
	public ModelAndView adminOrderList(@RequestParam Map<String, Object> map, HttpServletResponse response, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/board/board_list");
		String id = (String) request.getSession().getAttribute("ID");
		if(id != null) {
			mv.addObject("chk", "admin");
		}
		
		Map<String, Object> resultMap = homePageAdminDAO.selectArticleInfo(map);
		int cnt = 0;
		List<Map<String, Object>> resultList = (List<Map<String, Object>>) resultMap.get("result");
		if(resultList.size() == 1 && resultList.get(0).get("total_count") == null) {	
		    resultList = new ArrayList<Map<String,Object>>();
		}else {
		  ((BigInteger) resultList.get(0).get("total_count")).intValue();
		}
		
		log.debug("map==" + map);

		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
		mv.addObject("resultList", resultList);
		mv.addObject("map", map);
		return mv;
	}
	
	@RequestMapping(value="/reviewDetail.do")
	public ModelAndView reviewDetail(@RequestParam Map<String, Object> map, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("/board/review_detail");
		String id = (String) request.getSession().getAttribute("ID");
		map.put("id", id);
		if(id != null) {
			mv.addObject("chk", "admin");
		}
		Map<String, Object> resultMap = homePageAdminDAO.selectArticleInfo(map);
		int cnt = 0;
		List<Map<String, Object>> resultList = (List<Map<String, Object>>) resultMap.get("result");
		if(resultList.size() == 1 && resultList.get(0).get("total_count") == null) {	
		    resultList = new ArrayList<Map<String,Object>>();
		}else {
		  ((BigInteger) resultList.get(0).get("total_count")).intValue();
		}
		mv.addObject("list", resultList);
		return mv;
	}
	
}



















