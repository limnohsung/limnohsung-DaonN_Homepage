package kr.rigel.daonnHomepageApi.admin.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import kr.rigel.daonnHomepageApi.common.dao.AbstractDAO;

@Repository("homePageAdminDAO")
public class HomePageAdminDAO extends AbstractDAO{

	public int selectHomepageAdminCnt(Map<String, Object> map) throws Exception{
		return (int) selectOne("homePageAdminDAO.selectHomepageAdminCnt", map);
	}

	public void insertArticleInfo(Map<String, Object> map)  throws Exception{
		insert("homePageAdminDAO.insertArticleInfo", map);
		
	}

	public Map<String, Object> selectArticleInfo(Map<String, Object> map) throws Exception{
		return (Map<String, Object>)selectPagingList("homePageAdminDAO.selectArticleInfo", map, 6, 10);
	}

	public void updateArticleInfo(Map<String, Object> map) throws Exception{
		update("homePageAdminDAO.updateArticleInfo", map);
	}
	
	public void deleteArticleInfo(Map<String, Object> map) throws Exception{
		delete("homePageAdminDAO.deleteArticleInfo", map);
	}
}
