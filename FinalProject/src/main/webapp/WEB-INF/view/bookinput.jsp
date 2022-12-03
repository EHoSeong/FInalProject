<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.head {
	padding-left: 30px;
	line-height: 150px;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 40px;
	padding-top: 50px;
}

.head>a {
	text-decoration: none;
	color: darkturquoise;
}

.hak0 {
	padding-left: 30px;
	padding-top: 80px;
}
body>:first-child>li {
	display: inline-block;
	width: 90px;
}

body>ul:first-child {
	width: 450px;
	background-color: yellowgreen;
}
ul{
width : 100%;}
</style>
</head>
<body>
	<ul>
		<li class="nav-item"><a class="nav-link active" href="/seat">좌석보기</a></li>
		<li class="nav-item"><a class="nav-link" href="/bookcheck">예약현황</a></li>
		<li class="nav-item"><a class="nav-link" href="/book">예약하기</a></li>
	</ul>
	<div class="hak0">
		<h1>고객의 전화번호를 입력해주세요</h1>

		<form action="bookcheck.do">
			<input class="hak1" name="phonenum" type="text" placeholder="핸드폰번호입력란">
			<input type="submit">
		</form>
	</div>
</body>
</html>