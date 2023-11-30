<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, exam07.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	* {margin:0; padding:0;}
	ul, li {list-style: none;}
	a {color: inherit; text-decoration: none;}
	header {padding : 20px; background-color: blue; text-align: center;}
	h1 {color: white;}
	nav {padding: 15px; background-color: purple;}
	ul {display: flex;}
	li {padding: 0 10px; color: blue;}
	section {padding: 20px;}
	h2 {text-align: center; padding: 10px 0;}
	section > div {padding: 10px 0; }
	footer {padding: 15px; background-color: blue; text-align: center;}
</style>
</head>
<body>
	<header>
		<h1>(과정평가형 정보처리산업기사)주유소 관리 프로그램 Ver2020-10</h1>
	</header>
	
	<nav>
		<ul>
			<li>
				<a href="insertSale.jsp">매출등록</a>
			</li>
			<li>
				<a href="viewSaleAll.jsp">전체매출조회</a>
			</li>
			<li>
				<a href="viewSale.jsp">일차별매출평가</a>
			</li>
			<li>
				<a href="index.jsp">홈</a>
			</li>
		</ul>
	</nav>
	
	<section>
		<h2>과정평가형 자격 CBQ</h2>
		<div>국가직무능력표준(NCS:National Competency Standards)으로 설계된 교육*훈련과정을 체계적으로 이수하고 내외부평가를 거쳐 취득하는 국가기술자격입니다.</div>
		<div>산업현장 중심의 교육평가로 더 커지는 능력!</div>
		<div>알고 있는 것에 할수 있는 것을 더하는</div>
		<div>과정평가형 자격은</div>
		<div>현장 중심형 인재육성을 지원 합니다.</div>
	</section>
	
	<footer>
		<h3>HRDKOREA Copyrightⓒ2020 All rights reserve. Human Resources Develepment Service of Korea</h3>
	</footer>
</body>
</html>