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
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
body>ul:first-child {
	width: 450px;
	background-color: skyblue;
}</style>
</head>
<body>
<ul class="nav justify-content-end">
        <li class="nav-item">
          <a class="nav-link active" href="/seat">좌석보기</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">예약현황</a>
        </li>

      </ul>
    <fieldset style = "width:300px">
    <div>
    
    </div>
        <div>예약 시간
        <select>
            <option value="10">11:00~12:00</option>
            <option value="11">12:00~13:00</option>
            <option value="12">13:00~14:00</option>
            <option value="13">14:00~15:00</option>
            <option value="14">15:00~16:00</option>
            <option value="14">16:00~17:00</option>
            <option value="14">17:00~18:00</option>
            </select>
        </div>
        <legend>예약정보</legend>
        <div class="textForm">
            예약자 성함: <input name="name" type="text" class="name" placeholder="이름">
        </div>
        <div class="textForm">
            인원 수 : <select>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                </select>
        </div>
        <div class="textForm">
            전화번호 : <input name="number" type="text" class="number" pattern="[0-9]+" placeholder="전화번호">
        </div>
    </fieldset>
</body>
</html>