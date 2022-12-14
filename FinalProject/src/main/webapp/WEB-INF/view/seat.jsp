<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body>:first-child>li {
	text-align: center;
	display: inline-block;
	width: 200px;
	margin-left: 50px;
}

body>ul:first-child {
	width: 800px;
	background-color: yellowgreen;
}

table {
	text-align: center;
	width: 800px;
	height: 500px;
}

.tb {
	color: rgb(12, 61, 175);
}

body {
	padding-left: 200px;
}
</style>
</head>
<body>
	<ul>
		<li class="nav-item"><a class="nav-link active" href="/seat">좌석보기</a></li>
		<li class="nav-item"><a class="nav-link" href="/bookcheck">예약현황</a></li>
		<li class="nav-item"><a class="nav-link" href="/book">예약하기</a></li>
	</ul>
	<h2>ho's 식당</h2>
	<h4>운영시간 :12~19시 *15시~17시 브레이크타임</h4>

	<table border="1">
		<thead>
			<tr>
				<th colspan="6">벽</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="36">주방</th>
			</tr>
			<tr>
				<th>1번테이블<br>
					<button value="1" id="btn" onclick="location.href = '/book'">예약하기</button>
					<br> <a href="/seatinfo1">예약현황</a> <!-- <div>
						<br> <a href=#none id="show"
							onclick="if(hide.style.display=='none') {hide.style.display='';show.innerText='▲접기'} else {hide.style.display='none';show.innerText='예약현황'}">예약현황</a>
						<div id="hide" style="display: none">
							<ul>
								<c:forEach var="cli1" items="${cli1}">

									<div>${cli1.booktime}시~${cli1.booktime+1}시 예약완료</div>

								</c:forEach>
							</ul>
						</div>
					</div>!-->
				<th>2번테이블<br>
					<button id="btn" onclick="location.href = '/book'">예약하기</button> <br>
					<a href="/seatinfo2">예약현황</a>
				</th>
				<th>3번테이블<br>
					<button value="1" id="btn" onclick="location.href = '/book'">예약하기</button>
					<br>
				<a href="/seatinfo3">예약현황</a>
				</th>

				<th>4번테이블<br>
					<button value="1" id="btn" onclick="location.href = '/book'">예약하기</button>
					<br>
				<a href="/seatinfo4">예약현황</a>
				</th>
				<th rowspan="5">창문</th>
			</tr>
			<tr>
				<th>5번테이블<br>
					<button value="1" id="btn" onclick="location.href = '/book'">예약하기</button>
					<br>
				<a href="/seatinfo5">예약현황</a>
				</th>
				<th>6번테이블<br>
					<button value="1" id="btn" onclick="location.href = '/book'">예약하기</button>
					<br>
				<a href="/seatinfo6">예약현황</a>
				</th>
				<th>7번테이블<br>
					<button value="1" id="btn" onclick="location.href = '/book'">예약하기</button>
					<br>
				<a href="/seatinfo7">예약현황</a>
				</th>
				<th>8번테이블<br>
					<button value="1" id="btn" onclick="location.href = '/book'">예약하기</button>
					<br>
				<a href="/seatinfo8">예약현황</a>
			</tr>
			<th colspan="2">출입문</th>
			<th colspan="2">창문</th>
			</tr>

		</tbody>
	</table>
</body>
</html>