<%@page import="com.shop.VO.PcommentVO"%>
<%@page import="java.util.List"%>
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
.product {
display:block;
height:400px;
width:1300px;
border: 2px solid gray;
margin-left:105px;
}
.product>div{
display:flex;
}
.product_all{
width:400px;
text-align:center;
margin-left:200px;

}
.product_all>div{
border: 2px solid gray;
margin: 20px;
}

</style>
<script>

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
		%><jsp:include page="../logoutmenu.jsp"></jsp:include>
		<%
				
	}
%>	<jsp:include page="productHeader.jsp"></jsp:include>
	<jsp:include page="../MainMenu.jsp"></jsp:include>
	<br><br><br><br>
		
	<div class="product">
<div class="product_image">
<img src="upload/<%=vo.getImage() %>" width=350px height=400px>
<c:set var="id" value="${sessionScope.id }"></c:set>
      <c:if test="${id!='admin' && id!=null }">
	  <input type='image' src="image/장바구니.png" width="100px" height="100px" onclick="fnCart( '<%=vo.getpName() %>' , <%=vo.getSalePrice() %> )" >
	  </c:if>

 <div class="product_all">
 <div class="product_name">제품명 : <%=vo.getpName() %></div>
 <div class="product_desc">제품설명 : <%=vo.getpDesc() %></div>
 <div class="product_price">
<%if(vo.getSalePrice()==0){ 
			%>
			<div class="Price">
	       가격 : <%=vo.getOriginPrice()%>원
			  </div> <%
			}else{
				%>
          <div class="Price">
		  가격 : <span style="text-decoration: line-through !important"><%=vo.getOriginPrice()%>원</span>
       <%=vo.getSalePrice()%>원
		  </div>
			<%
			}%>
			</div>
 <div class="product_star"></div>
 <div class="product_count">수량 : <%=vo.getCount() %></div>
      <form action='productSearch.do' method='get'>
      <input type='hidden' name='pName' value='<%=vo.getpName() %>'>
      <input type='hidden' name='job' value='update'>
      <input type='hidden' value='수정' id='update'>
      </form>
      <form action='productSearch.do' method='get'>
      <input type='hidden' name='pName' value='<%=vo.getpName() %>'>
      <input type='hidden' name='job' value='delete'>
      <input type='hidden' value='삭제' id='delete'>
      </form>
       
	</div>
</div>
</div>
<br><br>
	<c:if test="${id!=null}">
	 <!-- =============================댓글 등록 및 리스트================================ -->
	<%List<PcommentVO> pvo =(List<PcommentVO>) request.getAttribute("Pcomment"); %>
	<form method="post" action="ProductComment.do">
	<input type="hidden" name="pName" value='<%=vo.getpName() %>'>
	<input type="hidden" name="job" value="search">
		<table>
			<tr>
				<td colspan="2" align="left">
					<b>상품 후기</b>
				</td>
			</tr>
			
			<tr>
				<td><input type="text" name="writer"  size="8" value="${sessionScope.id }" readonly></td>
				<td colspan="2"><input type="text" name="content" placeholder="후기내용" size="30"></td>
				<td><input type="submit" value="등록"></td>
			</tr>
			</table>
				</form>
				 </c:if>
			<table>
			<tr>
				<td>닉네임</td>
				<td colspan="2">내용</td>
			
			<c:forEach var="item" items="${requestScope.Pcomment }">
				<tr>
					<td>${item.pcommentWriter }</td>
					<td colspan="2">${item.pcommentCont }</td>
      <!-- =============================후기 리스트, 삭제 =========================-->
      <c:set var="id" value="${sessionScope.id }"></c:set>
      <c:set var="p_id" value="${item.pcommentWriter }"></c:set>
      <c:if test="${id=='admin' || id==p_id}">
      <td> <form action='PcommentDelete.do' method='get' >
						<input type = 'hidden' name='pcomment_no' value='${item.pcommentNo }'>
						<input type = 'hidden' name='pName' value='${item.pcommentPname }'>
						<input type = 'hidden' name ='job' value='search'>
						<input type= 'submit' value='삭제'>
			</form></td>
		</c:if>
				</tr>
			
			</c:forEach>
			</table>
</body>
</html>