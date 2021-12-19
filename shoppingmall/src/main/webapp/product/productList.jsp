<%@page import="com.shop.VO.PcommentVO"%>
<%@page import="java.util.List"%>
<%@page import="com.shop.DAO.productDAO"%>
<%@page import="com.shop.service.productService"%>
<%@page import="com.shop.VO.productVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productList.jsp</title>

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


<br><br><br>

      <section>
      <div class="outProduct">
<% productService service = new productService();
		List<productVO> list = service.searchAll();
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
      <input type='hidden' name='pId' value='<%=p.getpId() %>'>
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