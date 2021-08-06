<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>DAON&</title>
	<%@ include file="/WEB-INF/include/inc_head.jspf" %>
	<style>
		.lnb li:nth-child(2){background-color: #fff; color: #333;}
		.lnb li:nth-child(2) a{color: #333;}
	</style>
</head>
<body>
	<div class="wrap parking_system web_mobile_service">
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		<div class="banner">
			<h2>주차 시스템</h2>
			<%@ include file="/WEB-INF/include/inc_system_nav.jspf" %>
		</div>

		<div class="wb_service section">
			<div class="content">
				<h3>Web & Mobile Service</h3>
				<ul>
					<li>
						<div class="img img01"></div>
						<h4>현황 관리</h4>
						<p>주차장, 번호판, 견인 등</p>
					</li>
					<li>
						<div class="img img02"></div>
						<h4>주차 실적 관리</h4>
						<p>
							주차장 관리<br>
							판매 수입 관리 등
						</p>
					</li>
					<li>
						<div class="img img03"></div>
						<h4>납부 관리</h4>
						<p>
							부과, 변경, 압류<br>
							결손, 소멸 관리<br>
							납부 현황 관리
						</p>
					</li>
					<li>
						<div class="img img04"></div>
						<h4>기타관리</h4>
						<p>
							고지서 발행<br>
							작업 이력 등
						</p>
					</li>
					<li>
						<div class="img img05"></div>
						<h4>노상, 노외관리</h4>
						<p>
							직원 근무 상황<br>
							일일 정산 집계<br>
							입출차 데이터<br>
							미납 데이터 등
						</p>
					</li>
					<li>
						<div class="img img06"></div>
						<h4>홈페이지 관리</h4>
						<p>미, 체납 요금납</p>
					</li>
				</ul>			
			</div>
		</div>

		<div class="mgt_report section">
			<div class="content">
				<h3>Parking Mgt.Report</h3>
				<ul>
					<li>
						<div class="img img01"></div>
						<h4>주차장 실시간 관리 프로그램</h4>
						<p>
							주차장 실시간 모니터링, 입출차 현황 확인 가능,<br>
						    수동 차량 정보 수정, 입/출차 등록 CLOUD WEB<br>
						    기반 통합형 주차관제 프로그램(UPCS) 미인식<br>
						    차량 관제 요원이 보정 가능<br>
							주차장 내 사건, 사고 실시간 보호, 관리 업무 등<br>
							CALL CENTER 업무 위/수탁 가능
						</p>
					</li>
					<li>
						<div class="img img02"></div>
						<h4>주차실적관리</h4>
						<p>
							모바일 스마트폰에서의 차번 인식 기능 탑재,<br>
						    차량번호로 미납 내역 조회<br>
							주차 상품권, 할인권 조회,<br>
						    매출 집계 보고서 출력 및 REPORT<br>
						</p>
					</li>
					<li>
						<div class="img img03"></div>
						<h4>현황관리</h4>
						<p>
							주차장 출구에 배치된 무인 요금 정산기에서<br>
						    자동 주차요금 정산<br>
							건물 내 비치된 사전 무인 요금 정산기에서<br>
						    자동 주차요금 정산 가능<br>
							다양한 결제 지원(WEB, Mobile 간편결제 등)<br>
						    정기권 결제 가능
						</p>
					</li>
				</ul>			
			</div>
		</div>

		
		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
	</div>
</body>
</html>