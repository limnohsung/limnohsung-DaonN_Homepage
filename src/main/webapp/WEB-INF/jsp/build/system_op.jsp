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
	<div class="wrap build system_op">
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		<div class="banner">
			<h2>시스템 구축</h2>
			<%@ include file="/WEB-INF/include/inc_build_nav.jspf" %>
		</div>

		<div class="section">
			<div class="content">
				<h3>System 운영</h3>
        <div class="upcs_box">
          <div class="upcs">
            <h4>
              UPCS Consulting<br>
              Process
            </h4>
            <ul>
              <li>신청</li>
              <li>▶</li>
              <li>접수</li>
              <li>▶</li>
              <li>실사</li>
              <li>▶</li>
              <li>수익분석</li>
              <li>▶</li>
              <li>제안</li>
            </ul>
          </div>
        </div>
        <div class="consulting_box">
          <h4>Consulting</h4>
          <ul>
            <li>
              <img src="/imgs/Consulting01.png" alt="">
              Parking Lot 형태별 System 설치 제안 (유/무인 UPCS)
            </li>
            <li>
              <img src="/imgs/Consulting02.png" alt="">
              Optimal Space 발굴에 따른 UPCS 제안
            </li>
            <li>
              <img src="/imgs/Consulting03.png" alt="">
           	      최소 비용의 설치 제안 (Scenario 별 제안)
            </li>
            <li>
              <img src="/imgs/Consulting04.png" alt="">
              Cloud 기반의 주차정보 제공 및 유도관제  System 수립
            </li>
          </ul>
        </div>
        <div class="by_type">
          <h4>Classification by Type</h4>
          <ul>
            <li>복합상가</li>
            <li>오피스빌딩</li>
            <li>주차전용빌딩</li>
            <li>나대지주차장</li>
            <li>Apt.&<br>Townhouse</li>
          </ul>
        </div>
			</div>
		</div>

		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
	</div>
</body>
</html>
