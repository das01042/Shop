<%@page import="java.io.PrintWriter"%>
<%@page import="com.shop.service.boardService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.shop.VO.boardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 body {
	text-align: center;
} 

.List {
	width: 70%;
	height: 30vh;
	margin: 0px 250px;
}

.List th {
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
}

.actionTd {
	cursor: pointer;
}

.List td {
	border-bottom: 1px dotted gray;
}

.List_no {
	
}
.a{
margin : 0px 325px; 
float : right;
	text-decoration :none;
	border : 1px solid rgb(48, 190, 179);
	border-radius: 5px;
	background-color: rgb(48, 190, 179);
	color: azure;
	
}
.a:hover{
	background-color: rgb(48, 190, 179);
	color : black;
	cursor: pointer;
}






</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$('.actionTd').on('click',function(e){
		e.preventDefault();
		
		$('#no').val($(this).prev().html());
		$('#frd').submit();
	});
});
</script>
</head>

<body>
<%
	String id = (String) session.getAttribute("id");
%>
<jsp:include page="../header.jsp"></jsp:include>
	<form action='boardSearch.do' id='frd' method='get'>
		  <input type='hidden' name="job" value='search'>
		  <input type ='hidden' name ='id' value='<%=id %>'>
	<input type='hidden' name='no' id='no'>
	<table class = "List">
	<thead>
	<tr>
	<th>번호</th>
	<th>제목</th>
	<th>작성자</th>
	
	</tr>
	
	</thead>
		<tbody>
			<%
			
			ArrayList<boardVO> list = (ArrayList<boardVO>) request.getAttribute("board");
			if(list.size()==0){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('검색결과가 없습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}%>
			
				
				<c:forEach var="item" items="${requestScope.board }">
				<tr>
					<td class="List_no">${item.no }</td>
					<td class='actionTd'>${item.title }</td>
					<td class="List_writer">${item.writer }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</form>
	<a class="a" href="boardList.do">게시판으로 돌아가기</a>
</body>
</html>