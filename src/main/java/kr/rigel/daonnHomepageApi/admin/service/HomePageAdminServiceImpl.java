package kr.rigel.daonnHomepageApi.admin.service;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import kr.rigel.daonnHomepageApi.common.dao.CommonDAO;

@Service("homePageAdminService")
public class HomePageAdminServiceImpl implements HomePageAdminService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="homePageAdminService")
	private HomePageAdminService homePageAdminService;

	
}
