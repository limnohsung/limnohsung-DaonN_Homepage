package kr.rigel.daonnHomepageApi.common.common;

import egovframework.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;

public class CustomPaginationRenderer extends AbstractPaginationRenderer { 
	public CustomPaginationRenderer() {
		firstPageLabel = ""; 
        previousPageLabel = "<a href=\"#\" class=\"fl\" onclick=\"{0}({1}); return false;\"><</a>";
        currentPageLabel = "<a class=\"on fl\">{0}</a>";
        otherPageLabel = "<a href=\"#\" class=\"fl\" onclick=\"{0}({1}); return false;\">{2}</a>";
        nextPageLabel = "<a href=\"#\" class=\"fl\" onclick=\"{0}({1}); return false;\">></a>";
        lastPageLabel = "";
	} 
}

