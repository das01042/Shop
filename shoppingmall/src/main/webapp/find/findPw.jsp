<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>비밀번호 찾기</h3>
	<form action="../findPw.do" method ="post">
	<div>
	아이디 : <input type="text" name="id" placeholder="ID를 입력해주세요"><br>
	 이름  :<input type="text" name="name" placeholder="이름을 입력해주세요"><br>
	이메일 : <input type="email" name="email" placeholder="이메일을 입력해주세요"><br>
	</div>
	<input type="submit" value="찾기">
	</form>
</body>
</html>