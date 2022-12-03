<%@ page language="java" contentType="text/html; charset=UTf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<table>
	<c:forEach var="cli" items="${cli}">
		<tr>
			<td><input type="checkbox" value=${ad_n.seq}></td>
			<td>${cli.tablenum}</td>
			<td>${cli.name}</td>
			<td>${cli.phonenum}</td>
		</tr>
	</c:forEach>
</table>

</head>
<body>

</body>
</html>