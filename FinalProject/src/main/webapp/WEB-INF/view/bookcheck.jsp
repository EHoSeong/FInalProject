<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>마이페이지 입력화면</title>
<style>
body {
	width: 1100px;
	margin-left: 200px;
	padding-top: 20px;
}
.check {
	width: 50%;
	height: 500px;
	margin-top: 100px;
	margin-left: 15%;
}

table {
	font-size: 30px;
	width: 100%;
	height: 80%;
	text-align: center;
	margin-bottom: 20px;
}

input[type="button"] {
	margin: auto;
	display: block;
	width: 150px;
	height: 45px;
	font-size: 25px;
	background-color: beige;
}

body>:first-child>li {
text-align : center;
	display: inline-block;
	width: 200px;
	margin-left : 50px;
}

body>ul:first-child {
	width: 800px;
	background-color: yellowgreen;
}

</style>
</head>
<body>
	<ul>
		<li class="nav-item"><a class="nav-link active" href="/seat">좌석보기</a></li>
		<li class="nav-item"><a class="nav-link" href="/bookcheck">예약현황</a></li>
		<li class="nav-item"><a class="nav-link" href="/book">예약하기</a></li>
	</ul>
	<div class="check">
		<table border="1">
			<tr>
				<td>예약좌석</td>
				<td>${cli.tablenum }</td>
			</tr>
			<tr>
				<td>성함</td>
				<td>${cli.name }</td>
			</tr>

			<tr>
				<td>예약시간</td>
				<td>${cli.booktime}시~${cli.booktime+1}시</td>
			</tr>

			<tr>
				<td>예약인원</td>
				<td>${cli.people}</td>
			</tr>

			<tr>
				<td>휴대폰번호</td>
				<td>${cli.phonenum}</td>
			</tr>

		</table>
		<button type = "button" onClick="location.href='/delete.do?phonenum=${cli.phonenum}'">삭제하기</button>
		<button type = "button" onClick="location.href='/seat'">돌아가기</button>
		
</body>
</html>