<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>DAON&</title>
	<%@ include file="/WEB-INF/include/inc_head.jspf" %>
	<style>
		.lnb li:nth-child(1){background-color: #fff; color: #333;}
		.lnb li:nth-child(1) a{color: #333;}
	</style>
</head>
<body>
	<div class="wrap overview">
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		<div class="banner">
			<h2>회사소개</h2>
			<%@ include file="/WEB-INF/include/inc_overview_nav.jspf" %>
		</div>

		<div class="section">
			<div class="content">
				<h3>Business Overview</h3>
				<ul>
					<li>
						<div class="img img01 bg"></div>
						<div class="img img02"></div>
					</li>
					<li class="business_overview">
						<h4>We must be the Value itself</h4>
						<p>
							21c 급속한 기업환경 변화에 적극적으로 진입하는 당사는<br>
							UPCS (무인주차 관제 시스템)의 개발과 세분화된 Sales Strategy &<br>
							오랜 FM(시설물관리) 경험으로 주차관제의 Leading 기업으로 나서고 있습니다.<br>
							또한 Parking & Security의 효율적인 배분으로 부동산의 가치 상승 및<br>
							Cost Save에 일조하고 있으며, 지속적인 R&D 와 Tenant 지향의 무인주차<br>
							System의 원활한 공급으로 숨 쉬는 주차공간의 성장에 이바지하고자 합니다.
						</p>
					</li>
				</ul>
			</div>
		</div>

		<div class="section">
			<div class="content sub_company">
				<h3>Company Overview</h3>
				<ul class="company_overview">
					<li>
						<table>
							<colgroup>
								<col width="20%">
								<col width="80%">
							</colgroup>
							<tbody>
								<tr>
									<td>대표자</td>
									<td>권오경</td>
								</tr>
								<tr>
									<td>설립일</td>
									<td>2013년 07월 05일</td>
								</tr>
								<tr>
									<td>소재지</td>
									<td>서울시 강남구 논현로 10길 29</td>
								</tr>
								<tr>
									<td>자본금</td>
									<td>3.5억원</td>
								</tr>
								<tr>
									<td>주요 Bz.</td>
									<td>시설물관리(FM), 주차관제 기기, 정보통신공사업 등</td>									         
								</tr>
							</tbody>
						</table>
					</li>
				</ul>
				<ul class="company_biz">
					<li>
						<h5>01</h5>
						<div class="img img01"></div>
						<p>시스템 공급</p>
					</li>
					<li>
						<h5>02</h5>
						<div class="img img02"></div>
						<p>위탁운영 시스템</p>
					</li>
					<li>
						<h5>03</h5>
						<div class="img img03"></div>
						<p>콜 센터</p>
					</li>
					<li>
						<h5>04</h5>
						<div class="img img04"></div>
						<p>부분 위탁운영</p>
					</li>
					<li>
						<h5>05</h5>
						<div class="img img05"></div>
						<p>시스템 렌탈</p>
					</li>
				</ul>

			</div>
		</div>
		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
	</div>
</body>
</html>