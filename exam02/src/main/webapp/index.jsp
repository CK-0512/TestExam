<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{margin:0; padding:0;}
	header{text-align:center; background-color: blue; padding:20px}
	header > h1{color:white;}
	ul, li{list-style: none; margin: 0; padding: 0;}
	a{text-decoration: none; color: inherit;}
	ul{background-color:yellow;display: flex;}
	li{padding: 20px 15px;}
	section{padding: 20px 10px;}
	.title{padding: 20px; text-align: center}
	footer{background-color:purple; padding: 10px; text-align: center}
</style>
</head>
<body>
	<header>
		<h1>(과정평가형 처리기사)고교성적관리프로그램 ver2019-06</h1>
	</header>
	
	<nav>
		<ul>
			<li><a href="regist.jsp">학생등록</a></li>
			<li><a href="insert.jsp">성적</a></li>
			<li><a href="score.jsp">성적조회</a></li>
			<li><a href="statistics.jsp">통계</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>
	
	<section>
		<div class="title"><h2>과정평가형 자격 CB</h2></div>
		<div>국가직무능력표준(NCS:National Competency Standards)으로 설계된 교육훈련과정을 이수하고 내,외평가를 거쳐 취득하는 국가기술자격</div>
		<div>현장 중심의 교육평가로 더 커지는 능력!</div>
		<div>알고 있는 것에 할 수 있다는 것을 더하는</div>
		<div>과정평가형 자격은</div>
		<div>현장 중심형 인재육성을 지원</div>
	</section>
	
	<footer>
		copywrite
	</footer>
</body>
</html>