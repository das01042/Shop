<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardList.jsp</title>
<link rel="stylesheet" href="css/boardListStyle.css">
<style>
*{
	margin: 10px auto;
}
body{
	
	text-align: center;
}
.List{
	width : 70%;
	height : 30vh;
}
.actionTd{
	cursor:pointer;
}
.b_write{
text-align : right;
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
	String name = (String) session.getAttribute("name");
	String password = (String) session.getAttribute("password");
	String email = (String) session.getAttribute("email");
	if (id == null) {
%>

<jsp:include page="../loginmenu.jsp"></jsp:include>
<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="../MainMenu.jsp"></jsp:include>
	
<%
	} else if(id.equals("admin")) {
	%>

	<jsp:include page="../adminmenu.jsp"></jsp:include>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<h3>관리자모드로 접속하셨습니다.</h3>
	
	
	<jsp:include page="../MainMenu.jsp"></jsp:include>
	<%
		} else {
			%>
			<div class="header">
			<jsp:include page="../logoutmenu.jsp"></jsp:include>
			<jsp:include page="../header.jsp"></jsp:include>
			<h3><%=session.getAttribute("name") %>고객님, 환영합니다~</h3>
			
			
			<jsp:include page="../MainMenu.jsp"></jsp:include>
			</div>
		<%
		}
	%>
	<br><br>
	<h2>[자유게시판]</h2>
	
	<h3>게시판 목록</h3>
	<form action='boardSearch.do' id='frd' method='get'>
		  <input type='hidden' name="job" value='search'>
		  <input type='hidden' name="id" value='<%=id %>'>
	<input type='hidden' name='no' id='no'>
	<table class="List">
		<thead>
			<tr>
				<th>번호</th>
				<th> 제목 </th>
				<th> 작성자 </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${requestScope.boardList }">
				<tr>
					<td>${item.no }</td>
					<td class='actionTd'>${item.title }</td>
					<td>${item.writer }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</form>
	<button class="b_write" type="button" onclick="location.href='board/boardInput.jsp'">글작성</button>
	<!-- ============================검색창==================== -->
	<div>
		<div>
			<form method="post" name="search" action="boardSearchTool.do">
				<table>
					<tr>
						<td><select name="searchField">
								<option value="0">선택</option>
								<option value="title" >제목</option>
								<option value="writer">작성자</option>
						</select></td>
						<td><input type="text" placeholder="검색어 입력" name="searchText" maxlength="100"></td>
						<td><button type="submit">검색</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	
</body>
</html>