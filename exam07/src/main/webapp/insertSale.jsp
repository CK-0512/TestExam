<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, exam07.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function send() {
		if(!form.saleno.value) {
			alert("매출번호가 입력되지 않았습니다.");
			form.saleno.focus();
			return;
		}
		if(!form.oildate.value) {
			alert("주유일자가 입력되지 않았습니다.");
			form.oildate.focus();
			return;
		}
		if(!form.oiltype.value) {
			alert("유종이 선택되지 않았습니다.");
			form.oiltype.focus();
			return;
		}
		if(!form.amount.value) {
			alert("주유량이 입력되지 않았습니다.");
			form.amount.focus();
			return;
		}
		if(!form.paytype.value) {
			alert("결재방법이 입력되지 않았습니다.");
			form.paytype.focus();
			return;
		}
		if(!form.oilcost.value) {
			alert("금액이 입력되지 않았습니다.");
			form.oilcost.focus();
			return;
		}
		
		alert("매출정보가 정상적으로 등록되었습니다!");
		form.submit();
	}
	
	function re() {
		alert("정보를 지우고 처음부터 다시 입력합니다!")
		form.reset();
	}
</script>
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
	table {position: relative; width: 50%; left: 25%;}
	th {text-align: center;}
	tr:last-child > td {text-align: center;}
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
		<h2>매출등록</h2>
		<form name="form" method="post" action="insertSale_pro.jsp">
			<table border="1">
				<tr>
					<th>매출번호</th>
					<td><input name="saleno"/>예)9001</td>
				</tr>
				<tr>
					<th>주유일자</th>
					<td><input name="oildate"/>예)20201001</td>
				</tr>
				<tr>
					<th>유종</th>
					<td><select name="oiltype">
						<option selected="selected" value="">유종선택</option>
						<option value="1">[1] 휘발유</option>
						<option value="2">[2] 고급휘발유</option>
						<option value="3">[3] 경유</option>
						<option value="4">[4] 등유</option>
					</select></td>
				</tr>
				<tr>
					<th>주유량</th>
					<td><input name="amount"/>리터</td>
				</tr>
				<tr>
					<th>결재방법</th>
					<td><input name="paytype"/>(1:현금/2:카드)</td>
				</tr>
				<tr>
					<th>고객번호</th>
					<td><input name="custno"/></td>
				</tr>
				<tr>
					<th>카드번호</th>
					<td>
						<input name="creditcard1"/>-<input name="creditcard2"/>-<input name="creditcard3"/>-<input name="creditcard4"/>
					</td>
				</tr>
				<tr>
					<th>금액</th>
					<td><input name="oilcost"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="결재" onClick="send()">
						<input type="button" value="다시쓰기" onClick="re()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	
	<footer>
		<h3>HRDKOREA Copyrightⓒ2020 All rights reserve. Human Resources Develepment Service of Korea</h3>
	</footer>
</body>
</html>