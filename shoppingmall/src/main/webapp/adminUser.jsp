<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="adminuser">
<ul>
	<li><a href="${pageContext.request.contextPath }/member/memberSearch.jsp">회원조회</a></li>
      <li><a href="${pageContext.request.contextPath }/member/memberUpdate.jsp">회원수정</a></li>
      <li><a href="${pageContext.request.contextPath }/memberList.do">회원목록</a></li>
      <li><a href="${pageContext.request.contextPath }/member/memberDelete.jsp">회원삭제</a></li>
      </ul>
      </div>
</body>
</html>