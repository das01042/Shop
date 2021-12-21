<%@page import="com.shop.VO.productVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="productHeader.jsp"></jsp:include>

<jsp:include page="../adminmenu.jsp"></jsp:include>
<%
	productVO vo = (productVO) request.getAttribute("product");
%>
<form action='productUpdate.do' method= 'post'>
		상품번호:<input type ='text' name='pId' value='<%=vo.getpId() %>'><br>
		상품이름:<input type ='text' name='pName' value='<%=vo.getpName() %>'><br>
		상품설명 :<input type='text' name='pDesc' value='<%=vo.getpDesc() %>'><br>
		원래가격 :<input type ='number' name ='originPrice' value='<%=vo.getOriginPrice() %>'>><br>
		할인가격 :<input type ='number' name ='salePrice' value='<%=vo.getSalePrice() %>'>><br>
		별점 :<input type ='number' step='0.1' name ='star' value='<%=vo.getStar() %>'>><br>
		이미지 :<input type ='file' name ='image' value='<%=vo.getImage() %>'>><br>
		수량 :<input type ='number' name ='count' value='<%=vo.getCount() %>'>><br>
		<input type='submit' value='상품등록'>
		<input type='submit' value='수정'>
	</form>
	<%@ include file="../footer.jsp"%>
</body>
</html>