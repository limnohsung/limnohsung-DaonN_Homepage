<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>DAON&</title>
	<%@ include file="/WEB-INF/include/inc_head.jspf" %>
	<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>

</head>
<body>
	<div class="wrap board_post">
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>		
		 <div class="section">
	      <div class="content">
	      	<c:if  test="${chk eq 'modify'}">
       			<input type="text" placeholder="제목을 입력하세요." id="title" value="${list[0].SUBJECT}">
     	 	</c:if>
     	 	<c:if  test="${chk != 'modify'}">
       			<input type="text" placeholder="제목을 입력하세요." id="title">
     	 	</c:if>
	        
	      </div>
	      <textarea class="form-control" id="p_content" placeholder="내용을 입력하세요.">
	      	<c:if  test="${chk eq 'modify'}">
       			${list[0].CONTENT}
     	 	</c:if>
     	  </textarea>
	      <div class="btn_box">
	      	<c:if  test="${chk != 'modify'}">
       			<button class="fl">등록</button>
     	 	</c:if>
     	 	<c:if  test="${chk eq 'modify'}">
       			<button class="fl">수정</button>
     	 	</c:if>
	        
	        <button class="fr">취소</button>
	      </div>
		</div>
	</div>
	<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
</body>

<script type="text/javascript">
	var chk = '${chk}';
	var seq = '${list[0].SEQ}'
	
	var insert_upload = function(){
		jQuery.ajaxSettings.traditional = true;
		
		var title = $('#title').val();
		var content = $('iframe.cke_wysiwyg_frame').contents().find('.cke_contents_ltr').html();
		var main_img = $('iframe.cke_wysiwyg_frame').contents().find('img').eq(0).attr('src');
		if(title == null || title == '' || content == '<p><br></p>' || content == null){
			alert('제목 및 내용을 입력해 주세요.');
			return false;
		};
		
	    var params = { 
	            'title' : title,
	            'content' : content,
	            'main_img' : main_img
	    };
 	
	    $.ajax({
	        url:"/admin/insertArticleInfo.do",
	        type:'POST',
	        data: params,
	        success:function(data){
	        	alert('저장되었습니다.');
	        	location.href = '/boardList.do'
	        },
	        error:function(jqXHR, textStatus, errorThrown){
	        }
	    });
		
		
	};
	
	var update_upload = function(){
		jQuery.ajaxSettings.traditional = true;
		
		var title = $('#title').val();
		var content = $('iframe.cke_wysiwyg_frame').contents().find('.cke_contents_ltr').html();
		var main_img = $('iframe.cke_wysiwyg_frame').contents().find('img').eq(0).attr('src');
		if(title == null || title == '' || content == '<p><br></p>' || content == null){
			alert('제목 및 내용을 입력해 주세요.');
			return false;
		};
		
	    var params = { 
	            'title' : title,
	            'content' : content,
	            'main_img' : main_img,
	            'seq' :seq
	    };
 	
	    $.ajax({
	        url:"/admin/updateArticleInfo.do",
	        type:'POST',
	        data: params,
	        success:function(data){
	        	alert('수정되었습니다.');
	        	location.href = '/boardList.do'
	        },
	        error:function(jqXHR, textStatus, errorThrown){
	        }
	    });
		
		
	};
	
	CKEDITOR.replace('p_content', {
		filebrowserImageUploadUrl: '/imageUpload.do',
		height: 500
	});
	CKEDITOR.on('dialogDefinition', function (ev) {

        var dialogName = ev.data.name;
        var dialog = ev.data.definition.dialog;
        var dialogDefinition = ev.data.definition;
        if (dialogName == 'image') {
            dialog.on('show', function (obj) {
                this.selectPage('Upload'); //업로드텝으로 시작
            });
            dialogDefinition.removeContents('advanced'); // 자세히탭 제거
            dialogDefinition.removeContents('Link'); // 링크탭 제거
        }
    });
	
	$('.btn_box .fl').click(function(){
		
		if(chk == 'modify'){
			update_upload();
		}else{
			insert_upload();	
		};
		
	});
	$('.btn_box .fr').click(function(){
		var chk = confirm('취소 하시겠습니까?');
		if(chk){
			location.href = '/boardList.do';
		}else{
			return false;
		};
	});
</script>
	      
</html>