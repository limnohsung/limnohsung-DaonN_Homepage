<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>DAON&</title>
	<%@ include file="/WEB-INF/include/inc_head.jspf" %>
	<style>
		.lnb li:nth-child(6){background-color: #fff; color: #333;}
		.lnb li:nth-child(6) a{color: #333;}
	</style>
</head>
<body>
	<div class="wrap upcs">
		
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		
		<div class="banner">
			<h2>회사소개</h2>
			<%@ include file="/WEB-INF/include/inc_overview_nav.jspf" %>
		</div>

		<div class="section chart">
			<div class="content">
				<h3>UPCS CLOUD</h3>
				<ul>
					<li class="img img01">
						<span>
							통합<br>
							관제센터<br>
							정보저장<br>
						</span>
					</li>
					<li class="img img02">
						<span>
							휴대<br>
							인터넷
						</span>
					</li>
					<li class="img img03">
						<span>
							APP<br>
							정보전송
						</span>
					</li>
					<li class="img img04">
						<span>
							사용자<br>
							(User)
						</span>
					</li>
					<li class="img img05">
						<span>
							LPR<br>
							&<br>
							Local<br>
							Server
						</span>
					</li>
					<li class="img img06">
						<span>IOT Server</span>
					</li>
					<li class="chart_title">
						<span class="title01">DAON&</span><br>
						<span class="title02">NETWORK</span>
					</li>
				</ul>
			</div>
		</div>
		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
	</div>
</body>
</html>