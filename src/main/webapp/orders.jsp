<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>

<%
ArrayList<HashMap<String,Object>> orderList =
(ArrayList<HashMap<String,Object>>)request.getAttribute("orderList");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>My Orders | QuickBite</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<style>

body{

background:#f5f5f5;

font-family:Arial,sans-serif;

}

.navbar{

background:#198754;

}

.card{

border:none;

border-radius:15px;

}

.table{

vertical-align:middle;

}

.badge{

font-size:14px;

padding:8px 14px;

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

<i class="fa-solid fa-arrow-left"></i>

Back

</a>

</div>

</nav>

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-success text-white">

<h3>

<i class="fa-solid fa-receipt"></i>

My Orders

</h3>

</div>

<div class="card-body">

<table class="table table-bordered table-hover">

<thead class="table-success">

<tr>

<th>Order ID</th>

<th>Date</th>

<th>Total</th>

<th>Payment</th>

<th>Transaction</th>

<th>Payment Status</th>

<th>Order Status</th>

</tr>

</thead>

<tbody>
    <%

if(orderList!=null && !orderList.isEmpty()){

for(HashMap<String,Object> order : orderList){

%>

<tr>

<td>

#<%=order.get("order_id")%>

</td>

<td>

<%=order.get("order_date")%>

</td>

<td>

৳ <%=order.get("total")%>

</td>

<td>

<%=order.get("payment_method")%>

</td>

<td>

<%

String trx=(String)order.get("transaction_id");

if(trx==null || trx.trim().equals("")){

out.print("-");

}else{

out.print(trx);

}

%>

</td>

<td>

<%

String payStatus=(String)order.get("payment_status");

if(payStatus.equalsIgnoreCase("Paid")){

%>

<span class="badge bg-success">

Paid

</span>

<%

}else{

%>

<span class="badge bg-warning text-dark">

Pending

</span>

<%

}

%>

</td>

<td>
    <%

String status=(String)order.get("status");

if(status.equalsIgnoreCase("Pending")){

%>

<span class="badge bg-warning text-dark">

Pending

</span>

<%

}else if(status.equalsIgnoreCase("Preparing")){

%>

<span class="badge bg-info">

Preparing

</span>

<%

}else if(status.equalsIgnoreCase("Ready")){

%>

<span class="badge bg-primary">

Ready

</span>

<%

}else if(status.equalsIgnoreCase("Completed")){

%>

<span class="badge bg-success">

Completed

</span>

<%

}else{

%>

<span class="badge bg-danger">

Cancelled

</span>

<%

}

%>

</td>

</tr>

<%

}

}else{

%>

<tr>

<td colspan="7" class="text-center text-danger">

<h5>No Orders Found</h5>

<p>You haven't placed any orders yet.</p>

</td>

</tr>

<%

}

%>

</tbody>

</table>

</div>

</div>
<div class="text-center mt-4">

<a href="FoodServlet" class="btn btn-success me-2">

<i class="fa-solid fa-utensils"></i>

Order More Food

</a>

<a href="dashboard.jsp" class="btn btn-secondary">

<i class="fa-solid fa-house"></i>

Dashboard

</a>

</div>

</div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>