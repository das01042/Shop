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
.product_star{
background-color: black;
}
.star {
color:yellow;
}
.c_div{
margin-left : 105px;
width : 1300px;
border : 2px solid gray;
}
.c_table{
margin-top:10px;
margin-bottom : 10px;
margin-left: 300px;
text-align : left;
width :400px;
}
.c_table td{
 border-bottom: 1px gray dotted;
}
.c_del_form>input{
	float: right;
}

.blinking{ -webkit-animation:blink 1.5s ease-in-out infinite alternate;
-moz-animation:blink 1.5s ease-in-out infinite alternate; 
animation:blink 1.5s ease-in-out infinite alternate; } 
@-webkit-keyframes blink{ 0% {opacity:0;} 100% {opacity:1;} } 
@-moz-keyframes blink{ 0% {opacity:0;} 100% {opacity:1;} }
 @keyframes blink{ 0% {opacity:0;} 100% {opacity:1;} }

</style>
<script>


function fnCart(name, price) {
	//alert("Name : " + name + "\nPrice : " + price);
	if(confirm("장바구니에 담으시겠습니까?")) {
		location.href = "cart/cartInput.jsp?name=" + name + "&price=" + price;
	}
}

</script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
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
%>	<jsp:include page="../header.jsp"></jsp:include>
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
 <div class="product_star">
 <%
 int first = (int)vo.getStar();
 for(int i = 0; i<first; i++){
 %> <span class="star blinking"><i class='fas fa-star'></i></span>
	<% 
 }
 double last = vo.getStar() - (int)vo.getStar();
 if(last > 0){
	 %> <span class="star blinking"><i class='fas fa-star-half-alt'></i></span> 
		<% 
 }
 
 %>
 </div>
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
	<div class="c_div">
	<c:if test="${id!=null}">
	 <!-- =============================댓글 등록 및 리스트================================ -->
	 
	<%List<PcommentVO> pvo =(List<PcommentVO>) request.getAttribute("Pcomment"); %>
	<form method="post" action="ProductComment.do">
	<input type="hidden" name="pName" value='<%=vo.getpName() %>'>
	<input type="hidden" name="job" value="search">
		<table class="c_table" >
			<tr>
				<td colspan="2" align="left">
				<br><br>
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
				 
			<table class="c_table" >
				
			<tr>
				<th>닉네임</th>
				<th colspan="3">내용</th>
			
			<c:forEach var="item" items="${requestScope.Pcomment }">
				<tr>
					<td class="c_table_td2">${item.pcommentWriter }</td>
					<td class="c_table_td2" colspan="2">${item.pcommentCont }</td>
      <!-- =============================후기 리스트, 삭제 =========================-->
      <c:set var="id" value="${sessionScope.id }"></c:set>
      <c:set var="p_id" value="${item.pcommentWriter }"></c:set>
      <c:if test="${id=='admin' || id==p_id}">
      <td> <form class="c_del_form" action='PcommentDelete.do' method='get' >
						<input type = 'hidden' name='pcomment_no' value='${item.pcommentNo }'>
						<input type = 'hidden' name='pName' value='${item.pcommentPname }'>
						<input type = 'hidden' name ='job' value='search'>
						<input type= 'submit' value='삭제'>
			</form></td>
		</c:if>
				</tr>
			
			</c:forEach>
			
			</table>
			</div>
			<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>