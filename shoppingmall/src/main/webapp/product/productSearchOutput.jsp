<%@page import="com.shop.VO.productVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세 조회</title>
<style>

</style>
<script >

function fnCart(name, price) {
	//alert("Name : " + name + "\nPrice : " + price);
	if(confirm("장바구니에 담으시겠습니까?")) {
		location.href = "cart/cartInput.jsp?name=" + name + "&price=" + price;
	}
}
</script>
</head>
<body>
<%
	productVO vo = (productVO) request.getAttribute("product");
	%>
	<%
	String id = (String) session.getAttribute("id");
	if (id == null) {
		%><jsp:include page="../loginmenu.jsp"></jsp:include><%
	} else if(id.equals("admin")) {
		%><jsp:include page="../adminmenu.jsp"></jsp:include>
			<script>
      function admin() {
    	  var u = document.getElementById("update");
    	  u.type= "submit";
    	  var d = document.getElementById("delete");
    	  d.type= "submit";
      }
    	window.onload=admin;

    </script>
		<%
	} else{
		%><jsp:include page="../logoutmenu.jsp"></jsp:include><%
	}
%>
		<jsp:include page="../header.jsp"></jsp:include>
	<table id='product'>
		<tr>
			<th>상품이미지</th>
			<td> <img src="upload/<%=vo.getImage()%>" width="70"></td>
		</tr>
		<tr>
			<th>상품이름</th>
			<td><%=vo.getpName()%></td>
		</tr>
		<tr>
			<th>상품설명</th>
			<td><%=vo.getpDesc()%></td>
		</tr>
		<tr>
			<th>원래가격</th>
			<td><%=vo.getOriginPrice()%></td>
		</tr>
		<tr>
			<th>할인가격</th>
			<td><%=vo.getSalePrice()%></td>
		</tr>
		<tr>
			<th>별점</th>
			<td><%=vo.getStar()%></td>
		</tr>
		<tr>
			<th>수량</th>
			<td><%=vo.getCount()%></td>
		</tr>


		<tr>
		 <td>
      <form action='productSearch.do' method='get'>
      <input type='hidden' name='pName' value='<%=vo.getpName() %>'>
      <input type='hidden' name='job' value='update'>
      <input type='hidden' value='수정' id='update'>
      </form>
      </td>
      <td>
      <form action='productSearch.do' method='get'>
      <input type='hidden' name='pName' value='<%=vo.getpName() %>'>
      <input type='hidden' name='job' value='delete'>
      <input type='hidden' value='삭제' id='delete'>
      </form>
      </td>
       <c:set var="id" value="${sessionScope.id }"></c:set>
      <c:if test="${id!='admin' && id!=null }">
	  <td>
	  <input type='image' src="image/장바구니.png" width="100" onclick="fnCart( '<%=vo.getpName() %>' , <%=vo.getSalePrice() %> )" >
	  </td>
	  </c:if>
      </tr>
	</table>
</body>
</html>