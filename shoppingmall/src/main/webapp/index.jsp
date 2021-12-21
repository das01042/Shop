<%@page import="com.shop.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h3{
margin : 0px auto;
}
.index_h3{
	margin : 0px 50px;
}

</style>
</head>
<body>

	<%
	 memberVO vo = new memberVO();
	
	%>
	<jsp:useBean id="vo2" class="com.shop.VO.memberVO"></jsp:useBean>
	<jsp:setProperty property="id" name="vo2" value="p;"/>

	<%
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
	String password = (String) session.getAttribute("password");
	String email = (String) session.getAttribute("email");
	if (id == null) {
%>
	<jsp:include page="loginmenu.jsp"></jsp:include>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="MainMenu.jsp"></jsp:include>
	<br><br><br>
	<jsp:include page="SlideShow.jsp"></jsp:include>
	<jsp:include page="product/productList.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
	
<%
	} else if(id.equals("admin")) {
	%>
<jsp:include page="adminmenu.jsp"></jsp:include>
	<jsp:include page="header.jsp"></jsp:include>
	<h3 class= "index_h3">관리자모드로 접속하셨습니다.</h3>
	<jsp:include page="MainMenu.jsp"></jsp:include>
	<br><br><br>
	<jsp:include page="SlideShow.jsp"></jsp:include>
	<jsp:include page="product/productList.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		} else {
			%> 
			<jsp:include page="logoutmenu.jsp"></jsp:include>
			<jsp:include page="header.jsp"></jsp:include>
			<h3 class= "index_h3"><%=session.getAttribute("name") %>고객님, 환영합니다~</h3>
			<jsp:include page="MainMenu.jsp"></jsp:include>
			<br><br><br>
			<jsp:include page="SlideShow.jsp"></jsp:include>
		<jsp:include page="product/productList.jsp"></jsp:include>
		<jsp:include page="footer.jsp"></jsp:include>
		<%
		}
	%>

	
</body>
</html>