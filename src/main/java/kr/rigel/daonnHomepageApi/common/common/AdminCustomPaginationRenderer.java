package kr.rigel.daonnHomepageApi.common.common;

import egovframework.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;

public class AdminCustomPaginationRenderer extends AbstractPaginationRenderer { 
	public AdminCustomPaginationRenderer() {
		firstPageLabel = ""; 
        previousPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\"><</a>";
        currentPageLabel = "<strong>{0}</strong>";
        otherPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">{2}</a>";
        nextPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">></a>";
        lastPageLabel = "";
	} 
}