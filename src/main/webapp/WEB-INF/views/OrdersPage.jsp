<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product in Cart</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>">
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"> </script>

</head>
<body>
<%@include file="mainHead.jsp" %>
<h2>Your Orders</h2>
<table class="table">
<thead>
<tr class="info">
<th>Image</th>
<th>Name</th>
<th>Quantity</th>
<th>Price per unit</th>
<th>Price</th>
</tr>
</thead>
<c:set var="totalPrice" value="0"></c:set>
<c:forEach var="pd" items="${cart}">
<c:set var="totalPrice" value="${totalPrice+(pd.product.price*pd.quantity)}"></c:set>
<tbody>
<tr>
<td><img src="<c:url value="${pd.product.imgs}"/>" height="80px" width="50px"></td>
<td>${pd.product.pname}</td>
<td> ${pd.quantity}<%-- <form:input class="form-control" path="quantity" id="quantity" name="quantity" value="${pd.quantity}"/> --%></td>
<td>Rs.${pd.product.price}</td>
<td>Rs.${pd.product.price*pd.quantity}</td>
</tr>
</tbody>
</c:forEach>
<tr class="info">
<td colspan="4" align=right><strong>Total Price</strong></td>
<td>Rs.${totalPrice}</td><hidden name="total" value="${totalPrice}"/>
<tr>
</table>
<div align="center">
<a href="CartPage" class="btn btn-danger" style="color:white">Back</a>
<a href="payNow" class="btn btn-success" method="post" style="color:white">Pay</a>
</div>
<div align="right">
</div>
</body>
</html>