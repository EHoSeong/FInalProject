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
          <a class="nav-link active" href="/seat">�¼�����</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">������Ȳ</a>
        </li>

      </ul>
    <fieldset style = "width:300px">
    <div>
    
    </div>
        <div>���� �ð�
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
        <legend>��������</legend>
        <div class="textForm">
            ������ ����: <input name="name" type="text" class="name" placeholder="�̸�">
        </div>
        <div class="textForm">
            �ο� �� : <select>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                </select>
        </div>
        <div class="textForm">
            ��ȭ��ȣ : <input name="number" type="text" class="number" pattern="[0-9]+" placeholder="��ȭ��ȣ">
        </div>
    </fieldset>
</body>
</html>