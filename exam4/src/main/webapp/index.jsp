<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{margin:0; padding:0;}
	header {text-align: center; padding: 10px; background-color: blue;}
	header > h1 {color: white; display: block}
	ul, li {list-style: none;}
	nav  {padding: 10px; background-color: purple;}
	nav > ul {display: flex;}
	nav > ul > li {padding: 10px;}
	nav > ul > li > a {color: inherit; text-decoration: none;}
	section {padding: 10px 30px;}
	section > h2 {text-align: center; padding: 30px 0;}
	section > div {padding: 10px 0;}
	footer {padding: 20px 0px; background-color: blue; text-align: center;}
</style>
</head>
<body>
	<header><h1>(과정평가형)스마트공장 공정관리 프로그램 ver2019-09</h1></header>
	
	<nav>
		<ul>
			<li><a href="productView.jsp">제품조회</a></li>
			<li><a href="workView.jsp">지시조회</a></li>
			<li><a href="workInsert.jsp">공정등록</a></li>
			<li><a href="processView.jsp">공정조회</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>
	
	<section>
		<h2>과정평가형 자격 CB</h2>
		<div>국가직무능력표준(NCS:National Competency Standards)으로 설계된 교육*훈련과정을 체계적으로 이수하고 내외평가를 거쳐 취득하는 국가기술자격</div>
		<div>현장 중심의 교육평가로 더 커지는 능력!</div>
		<div>알고 있는 것에 할 수 있는 것을 더하는</div>
		<div>과정평가형 자격은</div>
		<div>현장 중심형 인재육성을 지원</div>
	</section>
	
	<footer><span>HRDKOREA Copyright@2016 All rights reserve. Human Resources Development Service of Korea</span></footer>
</body>
</html>