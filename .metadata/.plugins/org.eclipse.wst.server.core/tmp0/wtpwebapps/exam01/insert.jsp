<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{margin:0; padding:0;}
	ul,li {list-style:none;}
	a {text-decoration:none; color:#fff;}
	.logo {color:#fff; text-align:center; background-color:#0040FF; padding:16px 0;}
	.nav{padding:12px 0; overflow:hidden;background-color:#BCA9F5;}
	.nav ul,li{float:left; padding:0 20px; text-align:center;}
	.content {background-color:#E6E6E6; padding:16px;}
	.title {text-align:center;padding:22px;}
	.content table{width:500px;margin:0 auto;}
	.content table th, td{border:1px solid #bbb;}
	.content table .btn_group {text-align:center;}
	.footer {padding:16px 0; text-align:center; background-color:#0040FF;}
</style>
</head>
<body>
	<div class="header">
			<h1 class="logo">(과정평가형 정보처리산업기사) 오디션 관리 프로그램 ver 2009-06</h1>
			<div class="nav">
				<nav>
					<ul class="navi">
						<li><a href="insert.jsp">오디션 등록</a></li>
						<li><a href="">참가자목록조회</a></li>
						<li><a href="">멘토점수조회</a></li>
						<li><a href="">참가자등수조회</a></li>
						<li><a href="">홈으로</a></li>
					</ul>
				</nav>			
			</div>
		</header>
	</div>
	<div class="section">
		<section>
			<div class="content">
				<h2 class="title">오디션 등록</h2>
				<form>
					<table>
						<tr>
							<th>참가번호</th>
							<td><input type="text" size="10" name=""> *참가번호는(A000)4자리입니다</td>
						</tr>
						<tr>
							<th>참가자명</th>
							<td><input type="text" size="10" name=""></td>
						</tr>
						<tr>
							<th>생년월일</th>
							<td>
								<input type="text" size="4" name="">년
								<input type="text" size="4" name="">월
								<input type="text" size="4" name="">일
							</td>								
						</tr>	
						<tr>
							<th>성별</th>
							<td>
								<input type="radio" name="">남성
								<input type="radio" name="">여성
							</td>
						</tr>
						<tr>
							<th>특기
							<td>
								<select name="" style="width:150px;">
									<option>특기선택</option>
							</td>
						</tr>
						<tr>
							<th>소속사</th>
							<td><input type="text" name=""></td>
						</tr>
						<tr>
							<td colspan="2" class="btn_group">
								<input type="button" value="등록">
								<input type="button" value="취소">
							</td>								
						</tr>
					</table>
				</form>	
			</div>
		</section>
	</div>
	<div class="footer">
		<footer>
			<p>HRDKOREA Copyright@2016 All rights reserve. Human Resources 
			Development Serivce of Korea</p>
		</footer>
	</div>
</body>
</html>