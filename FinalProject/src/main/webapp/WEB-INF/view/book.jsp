<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자리예약</title>
<style>
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
.name {
	font-size: 16px;
	border: none;
	outline: none;
	width: 100%;
}

.number {
	font-size: 16px;
	border: none;
	outline: none;
	width: 100%;
	border: none;
}

table {
	border: 1px solid black;
	padding-left: 100px;
	width: 800px;
	height: 400px;
	border: black;
}
table>tr{
width : 20px;}
table>tr>td:nth-child(2){
width : 10px;
}


input[type="checkbox"]{
	width:10px;
	height:20px;
}
</style>
</head>
<body>
	<ul class="nav justify-content-end">
		<li class="nav-item"><a class="nav-link active" href="/seat">좌석보기</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="/bookcheck">예약현황</a></li>

	</ul>
	<form method="post" action="/book.do">
		<table>
			<tr>
				<td>테이블번호</td>
				<td>1번<input type="checkbox" name="tablenum" value="1"/>
				2번<input type="checkbox" name="tablenum" value="2" />
				3번<input type="checkbox" name="tablenum" value="3" />
				4번<input type="checkbox" name="tablenum" value="4" />
				5번<input type="checkbox" name="tablenum" value="5" />
				6번<input type="checkbox" name="tablenum" value="6" />
				7번<input type="checkbox" name="tablenum" value="7" />
				8번<input type="checkbox" name="tablenum" value="8" /></td>
				
			</tr>
			<tr>
				<td>예약 시간</td>
				<td><select name = "booktime">
						<option value="12">12:00~13:00</option>
						<option value="13">13:00~14:00</option>
						<option value="14">14:00~15:00</option>
						<option disabled value="4">15~17시는 브레이크타임입니다</option>
						<option value="17">17:00~18:00</option>
						<option value="18">18:00~19:00</option>
				</select></td>
			<tr>
				<td>예약자 성함</td>
				<td><input type="text" name="name"></td>
			</tr>

			<tr>
				<td>인원수</td>
				<td><input type="number" name="people"></td>
			</tr>

			<tr>
				<td>전화번호</td>
				<td><input name="phonenum" type="text" class="number"
					pattern="[0-9]+" placeholder="전화번호(-빼고 입력하세요)"></td>
			</tr>
			<tr>
				<td><input type="submit" class="btn" value="예약하기" /></td>
			</tr>
		</table>



	</form>

</body>
</html>