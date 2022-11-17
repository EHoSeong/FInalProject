<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
body>:first-child>li {
	display: inline-block;
	width: 90px;
}

body>ul:first-child {
	width: 450px;
	background-color: skyblue;
}

table {
	text-align: center;
}

.tb {
	color: rgb(12, 61, 175);
}

body {
	padding-left: 200px;
}
function seatnum(){
var value = $("#btn").val();}
</style>
</head>
<body>
	<ul class="nav justify-content-end">
		<li class="nav-item"><a class="nav-link active" href="/seat">좌석보기</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="#">예약현황</a></li>
		<li class="nav-item"><a class="nav-link" href="/book">예약하기</a></li>
	</ul>
	<h4>식당 테이블</h4>

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
					<button id="btn" onclick="location.href = '/book'" onclick = 'seatnum();'>예약하기</button>
					
					<div><br>
						<a href=#none id="show"
							onclick="if(hide.style.display=='none') {hide.style.display='';show.innerText='▲접기'} else {hide.style.display='none';show.innerText='예약현황'}">예약현황</a>
						<div id="hide" style="display: none">
							<ul>
						<li class="tb">11:00~12:00 예약가능</li>
						<li>12:00~13:00 예약불가</li>
						<li>13:00~14:00 예약불가</li>
						<li>12:00~15:00 예약불가</li>
						<li>12:00~16:00 예약불가</li>
						<li>16:00~17:00 예약불가</li>
						<li>17:00~18:00 예약불가</li>
					</ul>
						</div>
					</div>

				</th>
				<th>2번테이블<br>
					<button id="btn" onclick="location.href = '/book'">예약하기</button>
					<p>예약현황</p>
				</th>
				<th>3번테이블
					<p>예약현황</p>
				</th>
				<th>4번테이블
					<p>예약현황</p>
				</th>
				<th rowspan="5">창문</th>
			</tr>
			<tr>
				<th>5번테이블
					<p>예약현황</p>
				</th>
				<th>6번테이블
					<p>예약현황</p>
				</th>
				<th>7번테이블
					<p>예약현황</p>
				</th>
				<th>8번테이블
					<p>예약현황</p>
				</th>
			</tr>
			<tr>
				<th>9번테이블
					<p>예약현황</p>
				</th>
				<th>10번테이블
					<p>예약현황</p>
				</th>
				<th>11번테이블
					<p>예약현황</p>
				</th>
				<th>12번테이블
					<p>예약현황</p>
				</th>
			</tr>
			<tr>
				<th>13번테이블
					<p>예약현황</p>
				</th>
				<th>14번테이블
					<p>예약현황</p>
				</th>
				<th>15번테이블
					<p>예약현황</p>
				</th>
				<th>16번테이블
					<p>예약현황</p>
				</th>
			</tr>
			<tr>
				<th>17번테이블
					<p>예약현황</p>
				</th>
				<th>18번테이블
					<p>예약현황</p>
				</th>
				<th colspan="2">출입문</th>
			</tr>

		</tbody>
	</table>
</body>
</html>