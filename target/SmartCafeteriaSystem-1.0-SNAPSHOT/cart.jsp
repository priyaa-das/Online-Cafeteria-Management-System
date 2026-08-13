<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.quickbite.model.Food"%>

<%
ArrayList<Food> cartList=(ArrayList<Food>)request.getAttribute("cartList");

Double total=(Double)request.getAttribute("total");

if(total==null){
    total=0.0;
}
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>My Cart</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<style>

body{
background:#f5f5f5;
}

.navbar{
background:#198754;
}

.table img{
width:90px;
height:70px;
object-fit:cover;
border-radius:8px;
}

.card{
border:none;
border-radius:15px;
}

</style>

</head>

<body>

<nav class="navbar navbar-dark">

<div class="container">

<a href="dashboard.jsp"
class="navbar-brand fw-bold">

QuickBite

</a>

<a href="dashboard.jsp"
class="btn btn-light">

Back

</a>

</div>

</nav>

<div class="container mt-5">

<h2 class="mb-4">

<i class="fa-solid fa-cart-shopping"></i>

My Cart

</h2>

<div class="row">

<div class="col-lg-8">

<div class="card shadow">

<div class="card-body">

<table class="table table-bordered align-middle">

<thead class="table-success">

<tr>

<th>Image</th>

<th>Food</th>

<th>Price</th>

<th>Qty</th>

<th>Total</th>

<th>Action</th>

</tr>

</thead>

<tbody>

<%

if(cartList!=null && !cartList.isEmpty()){

for(Food food:cartList){

%>

<tr>

<td>

<img src="<%=food.getImage()%>">

</td>

<td>

<%=food.getFoodName()%>

</td>

<td>

৳ <%=food.getPrice()%>

</td>

<td>

<%=food.getQuantity()%>

</td>

<td>

৳ <%=food.getPrice()*food.getQuantity()%>

</td>

<td>

<a href="RemoveCartServlet?id=<%=food.getFoodId()%>"
class="btn btn-danger btn-sm">

<i class="fa-solid fa-trash"></i>

Remove

</a>

</td>

</tr>

<%

}

}else{

%>

<tr>

<td colspan="6"
class="text-center text-danger">

Cart is Empty

</td>

</tr>

<%

}

%>

</tbody>

</table>

</div>

</div>

</div>

<div class="col-lg-4">

<div class="card shadow">

<div class="card-body">

<h3>

Order Summary

</h3>

<hr>

<p>

Subtotal :

<b>

৳ <%=total%>

</b>

</p>

<p>

Service Charge :

<b>

৳20

</b>

</p>

<hr>

<h4>

Grand Total :

<span class="text-success">

৳ <%=total+20%>

</span>

</h4>

<a href="checkout.jsp"
class="btn btn-success w-100 mt-3">

Proceed To Checkout

</a>

<a href="FoodServlet"
class="btn btn-outline-success w-100 mt-2">

Continue Shopping

</a>

</div>

</div>

</div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>