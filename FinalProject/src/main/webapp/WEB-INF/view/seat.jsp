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
		<li class="nav-item"><a class="nav-link active" href="/seat">�¼�����</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="#">������Ȳ</a></li>
		<li class="nav-item"><a class="nav-link" href="/book">�����ϱ�</a></li>
	</ul>
	<h4>�Ĵ� ���̺�</h4>

	<table border="1">
		<thead>
			<tr>
				<th colspan="6">��</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="36">�ֹ�</th>
			</tr>
			<tr>
				<th>1�����̺�<br>
					<button id="btn" onclick="location.href = '/book'" onclick = 'seatnum();'>�����ϱ�</button>
					
					<div><br>
						<a href=#none id="show"
							onclick="if(hide.style.display=='none') {hide.style.display='';show.innerText='������'} else {hide.style.display='none';show.innerText='������Ȳ'}">������Ȳ</a>
						<div id="hide" style="display: none">
							<ul>
						<li class="tb">11:00~12:00 ���డ��</li>
						<li>12:00~13:00 ����Ұ�</li>
						<li>13:00~14:00 ����Ұ�</li>
						<li>12:00~15:00 ����Ұ�</li>
						<li>12:00~16:00 ����Ұ�</li>
						<li>16:00~17:00 ����Ұ�</li>
						<li>17:00~18:00 ����Ұ�</li>
					</ul>
						</div>
					</div>

				</th>
				<th>2�����̺�<br>
					<button id="btn" onclick="location.href = '/book'">�����ϱ�</button>
					<p>������Ȳ</p>
				</th>
				<th>3�����̺�
					<p>������Ȳ</p>
				</th>
				<th>4�����̺�
					<p>������Ȳ</p>
				</th>
				<th rowspan="5">â��</th>
			</tr>
			<tr>
				<th>5�����̺�
					<p>������Ȳ</p>
				</th>
				<th>6�����̺�
					<p>������Ȳ</p>
				</th>
				<th>7�����̺�
					<p>������Ȳ</p>
				</th>
				<th>8�����̺�
					<p>������Ȳ</p>
				</th>
			</tr>
			<tr>
				<th>9�����̺�
					<p>������Ȳ</p>
				</th>
				<th>10�����̺�
					<p>������Ȳ</p>
				</th>
				<th>11�����̺�
					<p>������Ȳ</p>
				</th>
				<th>12�����̺�
					<p>������Ȳ</p>
				</th>
			</tr>
			<tr>
				<th>13�����̺�
					<p>������Ȳ</p>
				</th>
				<th>14�����̺�
					<p>������Ȳ</p>
				</th>
				<th>15�����̺�
					<p>������Ȳ</p>
				</th>
				<th>16�����̺�
					<p>������Ȳ</p>
				</th>
			</tr>
			<tr>
				<th>17�����̺�
					<p>������Ȳ</p>
				</th>
				<th>18�����̺�
					<p>������Ȳ</p>
				</th>
				<th colspan="2">���Թ�</th>
			</tr>

		</tbody>
	</table>
</body>
</html>