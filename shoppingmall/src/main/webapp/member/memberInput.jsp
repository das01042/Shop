<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page errorPage ="../error.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력정보</title>
<style>
.m_div{
display : inline-block;
width : 300px;
height : 350px;
}
.m_form{
text-align : center;
}
.m_form input{
width : 200px;
height: 25px;
text-decoration-line : none;
	border-radius: 5px;
	border: rgb(48, 190, 179) 2px solid;
	font-size: 14px;
}
.m_form input[type="submit"]{
	margin : 0px 46px;
	width : 50px;
	background-color: rgb(48, 190, 179);
	color : white;
	float : right;
	
}
.m_form input[type="submit"]:hover{
	border: rgb(48, 190, 179) 2px solid;
	background-color: rgb(48, 190, 179);
	color : black;
	cursor: pointer;
}
.m_p{
	
	margin : 1px 1px;
}
</style>
</head>
<body>
<jsp:include page="../loginmenu.jsp"></jsp:include>
<jsp:include page="../header.jsp"></jsp:include>



		<!-- 입력.jsp -> controller -> 출력.jsp -->
		
		<form class="m_form" action='../memberInsert.do' method= 'post'>
		<h2>회원가입</h2>
		<div class ="m_div">
		<p class="m_p">아이디<br>
		<input type ='text' name='id' placeholder="ID입력"></p><br>
		<p class="m_p">비밀번호 입력<br>
		<input type ='password' name='password' placeholder="PW입력"></p><br>
		<p class="m_p">이름 입력<br>
		<input type='text' name='name' placeholder="이름입력" ></p><br>
		<p class="m_p">이메일 입력<br>
		<input type ='email' name ='email'placeholder="E-mail입력"></p>
		<input type='submit' value='가입'>
		</div>
	</form>
		
	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>