<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>아이디 찾기</h3>
	<form action="../findId.do" method ="post">
	<div>
	이름 : <input type="text" name="name" placeholder="이름"><br>
	이메일 : <input type="email" name="email" placeholder="이메일"><br>
	</div>
	<input type="submit" value="찾기">
	</form>
</body>
</html>