<%@page import="com.shop.VO.productVO"%>
<%@page import="java.util.List"%>
<%@page import="com.shop.service.productService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색출력화면</title>
<script >

function fnCart(name, price) {
	//alert("Name : " + name + "\nPrice : " + price);
	if(confirm("장바구니에 담으시겠습니까?")) {
		location.href = "cart/cartInput.jsp?name=" + name + "&price=" + price;
	}
}
</script>
</head>
<style>

.outProduct {
display : flex;
flex-wrap: wrap;

}
.inProduct{
width: 400px;
border-style: inset;
border-width:2px;
margin:5px;
}

</style>
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
			<jsp:include page="../logoutmenu.jsp"></jsp:include>
			<jsp:include page="../header.jsp"></jsp:include>
			<h3><%=session.getAttribute("name") %>고객님, 환영합니다~</h3>
			<jsp:include page="../MainMenu.jsp"></jsp:include>
		<%
		}
	%>
	<br><br>
            <br><br><br>

	<section>
      <div class="outProduct">
      
<% 
	List<productVO> list = (List<productVO>) request.getAttribute("product");
	
      for(productVO p:list){  %>
	<div class="inProduct">
      <div class="image">
          <img src="upload/<%=p.getImage()%>" width="70" >
          </div>
          <div class="name">
          <%=p.getpName() %> 
          </div>
          <div class="desc">
          <%=p.getpDesc() %> 
          </div>
       
          <%if(p.getSalePrice()==0){ 
			%>
			<div class="Price">
	       <%=p.getOriginPrice() %>
			  </div> <%
			}else{
				%>
          <div class="Price">
		  <span style="text-decoration: line-through !important"><%=p.getOriginPrice() %></span>
       <%=p.getSalePrice() %>
		  </div>
			<%
			}%>
       
       
       <div class="information">
      <form action='productSearch.do' method='get'>
      <input type='hidden' name='pName' value='<%=p.getpName() %>'>
      <input type='hidden' name='job' value='search'>
      <input type='submit' value='상세조회'>
      </form>
      <c:set var="id" value="${sessionScope.id }"></c:set>
      <c:if test="${id!='admin' && id!=null }">
      <input type='image' src="image/장바구니.png" width="50" onclick="fnCart( '<%=p.getpName() %>' , <%=p.getSalePrice() %> )" >
      </c:if>
     </div>
       
       </div>
    <%   
     }
      %> 
</div>
</section>


</body>
</html>