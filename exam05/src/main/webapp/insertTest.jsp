<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, exam05.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% if (request.getParameter("test_date") != null) {
	DTO dto = new DTO();
	dto.test_date = request.getParameter("test_date");
	dto.test_ampm = request.getParameter("test_ampm");
	dto.pollution = request.getParameter("pollution");
	dto.city_code = request.getParameter("city_code");
	dto.test_value = request.getParameter("test_value");
	
	DAO dao = new DAO();
	int row = dao.insertTest(dto);
	if (row == 1) { %>
	<script>
		alert("측정정보가 정상적으로 등록 되었습니다!");
		location.href="index.jsp"
	</script>
	<%}
	}
%>
<style type="text/css">
* {
	margin: 0;
	padding: 0
}

ul, li {
	list-style: none;
}

a {
	color: inherit;
}

header {
	text-align: center;
	padding: 15px;
	background-color: blue;
}

h1 {
	color: white;
}

nav>ul {
	display: flex;
	padding: 10px;
	background-color: green;
}

nav>ul>li {
	color: white;
	padding: 0 20px;
}

section {
	padding: 20px;
}

h2 {
	text-align: center;
}

section>form>table {
	position: relative;
	width: 50%;
	left: 25%;
}

table th {
	text-align: center
}

table tr:last-child td {
	text-align: center
}

footer {
	text-align: center;
	padding: 10px;
	background-color: blue;
}

h3 {
	color: white;
}
</style>

<script type="text/javascript">
	function send() {
		if (!form.test_date.value) {
			alert("관측일자가 입력되지 않았습니다!")
			form.test_date.focus();
			return;
		}
		if (!form.test_ampm.value) {
			alert("측정시기가 선택되지 않았습니다!")
			form.test_ampm.focus();
			return;
		}
		if (!form.pollution.value) {
			alert("대기오염코드가 입력되지 않았습니다!")
			form.pollution.focus();
			return;
		}
		if (!form.city_code.value) {
			alert("관측지점이 선택되지 않았습니다!")
			form.city_code.focus();
			return;
		}
		if (!form.test_value.value) {
			alert("측정값이 입력되지 않았습니다!")
			form.test_value.focus();
			return;
		}
		
		form.submit();
	}
</script>

</head>
<body>
	<header>
		<h1>(과정평가형 기사)대기오염관측 프로그램 ver 2020-05</h1>
	</header>

	<nav>
		<ul>
			<li><a href="viewCity.jsp">관측지점조회</a></li>
			<li><a href="insertTest.jsp">대기오염관측등록</a></li>
			<li><a href="viewHistory.jsp">측정이력조회</a></li>
			<li><a href="viewTest.jsp">지역관측조회</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>

	<section>
		<h2>관측지점조회</h2>
		<form name="form" method="post" action="insertTest.jsp">
			<table border="1">
				<tr>
					<th>관측일자</th>
					<td><input name="test_date">예)20200101</td>
				</tr>
				<tr>
					<th>측정시기</th>
					<td><input type="radio" name="test_ampm" value="am">오전(AM)
						<input type="radio" name="test_ampm" value="pm">오전(PM)</td>
				</tr>
				<tr>
					<th>대기오염코드</th>
					<td><input name="pollution">(p1:미세먼지,p2:오존,p3:자외선,p4:황사)
					</td>
				</tr>
				<tr>
					<th>관측지점</th>
					<td><select name="city_code">
							<option selected="selected" value="">관측지점</option>
							<option value="01">[01]서울</option>
							<option value="02">[02]경기</option>
							<option value="03">[03]인천</option>
							<option value="04">[04]세종</option>
							<option value="05">[05]대전</option>
							<option value="06">[06]대구</option>
					</select></td>
				</tr>
				<tr>
					<th>측정값</th>
					<td><input name="test_value"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="측정값등록"
						onClick="send();"> <input type="button" value="다시쓰기"
						onClick="reset();"></td>
				</tr>
			</table>
		</form>
	</section>

	<footer>
		<h3>HRDK 한국인력공단 Copyright2020 All rights reserved Human Resources
			Development Service of Korea</h3>
	</footer>
</body>
</html>