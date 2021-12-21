<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.d_login{
text-align:center;
font-size: 17px;
}
.f_login{
display : inline-block;
width : 350px;
height : 150px;
}
.f_login>a{
	text-decoration-line : none;
	border-radius: 5px;
	background-color: rgb(48, 190, 179);
	color: white;
	font-size: 14px;
	
}
.f_login>a:hover{
	background-color: rgb(48, 190, 179);
	color : black;
	cursor: pointer;
}

.f_login>input:nth-child(1){
		 border-radius: 5px;
		 border: rgb(48, 190, 179) 1px solid;
		 width: 250px;
		 height: 35px;
		 margin : 3px 0px;
}
.f_login>input:nth-child(3){
		 border-radius: 5px;
		 border: rgb(48, 190, 179) 1px solid;
		 width: 250px;
		 height: 35px;
		 margin : 3px 2px;
}
.input_login{
	border : 1px white solid;
	float : right;
	border-radius: 5px;
	background-color: rgb(48, 190, 179);
	color: white;
	font-size: 15px;
	cursor: pointer;
	margin-right: 25px;
	
}
.input_login:hover{
	background-color: rgb(48, 190, 179);
	color : black;
	cursor: pointer;
}

</style>
</head>
<body>

<!-- 테스트 -->
<jsp:include page="loginmenu.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
	
<div class="d_login">
<h3>로그인 화면</h3>
<form class="f_login" action='login.do' method='post'>
	ID : <input type='text' name='id' placeholder ="id를 입력해주세요"><br>
	PW: <input type="password" name ="password" placeholder ="pw를 입력해주세요"><br>
	<input class="input_login" type='submit' value='Login'>
	<a href="find/findId.jsp">아이디 찾기</a>
	<a href="find/findPw.jsp">비밀번호 찾기</a>
	</form>
</div>
</body>
</html>