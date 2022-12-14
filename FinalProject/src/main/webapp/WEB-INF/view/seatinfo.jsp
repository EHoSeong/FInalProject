<%@ page language="java" contentType="text/html; charset=UTf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	margin-top: 50px;
	width: 100%;
	border: none;
	font-size: 25px;
	text-align: center;
}

tr:nth-child(1) {
	background-color: peachpuff;
}

tr td:nth-child(1) {
	width: 100px;
}

tr td:nth-child(2) {
	width: 150px;
}

tr td:nth-child(3) {
	width: 150px;
}
.input{
            float: right;
            font-size: 30px;
            margin-right: 30px;
            margin-bottom: 30px;
            color:black;
            text-decoration: none;
        }

</style>
<body>
<table border=1>
<a href = "/seat" class = "input">[홈으로]</a>
		<tr>
			<th>테이블번호</th>
			<th>인원</th>
			<th>예약시간</th>

			<c:forEach var="cli" items="${cli}">
				<tr>
					<td>${cli.tablenum}</td>
					<td>${cli.people}</td>
					<td>${cli.booktime}시 ~ ${cli.booktime+1}시</td>
					
					
				</tr>
			</c:forEach>
			
	</table>
</head>


</body>
</html>