<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.quickbite.model.Food"%>

<%
ArrayList<Food> foodList =
(ArrayList<Food>) request.getAttribute("foodList");
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>Food Menu | QuickBite</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
rel="stylesheet">

<link rel="preconnect"
href="https://fonts.googleapis.com">

<link rel="preconnect"
href="https://fonts.gstatic.com"
crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#f5f7fb;
}

.navbar{
background:#198754;
}

.navbar-brand{
font-size:28px;
font-weight:700;
}

.banner{
background:linear-gradient(135deg,#198754,#28a745);
color:white;
padding:70px 0;
text-align:center;
}

.banner h1{
font-size:46px;
font-weight:700;
}

.banner p{
font-size:18px;
margin-top:15px;
}

.food-section{
padding:60px 0;
}

.food-card{
border:none;
border-radius:18px;
overflow:hidden;
transition:.3s;
}

.food-card:hover{
transform:translateY(-8px);
box-shadow:0 15px 35px rgba(0,0,0,.15);
}

.food-card img{
width:100%;
height:230px;
object-fit:cover;
display:block;
}

.category{
display:inline-block;
background:#198754;
color:white;
padding:5px 14px;
border-radius:20px;
font-size:13px;
margin-bottom:10px;
}

.price{
font-size:22px;
font-weight:bold;
color:#198754;
}

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark">

<div class="container">

<a class="navbar-brand"
href="dashboard.jsp">

<i class="fa-solid fa-utensils me-2"></i>

QuickBite

</a>

<a href="dashboard.jsp"
class="btn btn-light rounded-pill">

<i class="fa-solid fa-arrow-left me-2"></i>

Back

</a>

</div>

</nav>

<section class="banner">

<div class="container">

<h1>

Our Delicious Food Menu

</h1>

<p>

Fresh • Healthy • Affordable

</p>

</div>

</section>

<section class="food-section">

<div class="container">

<div class="row g-4">
    <%

if(foodList != null && !foodList.isEmpty()){

for(Food food : foodList){

%>

<div class="col-lg-4 col-md-6">

<div class="card food-card shadow h-100">

<img src="<%=food.getImage()%>"
class="card-img-top"
alt="<%=food.getFoodName()%>">

<div class="card-body">

<span class="category">

<%=food.getCategory()%>

</span>

<h4 class="mt-2 fw-bold">

<%=food.getFoodName()%>

</h4>

<p class="text-muted">

<%=food.getDescription()%>

</p>

<div class="d-flex justify-content-between align-items-center mt-3">

<span class="price">

৳ <%=food.getPrice()%>

</span>

<a href="AddToCartServlet?id=<%=food.getFoodId()%>"
class="btn btn-success rounded-pill">

<i class="fa-solid fa-cart-plus me-1"></i>

Add To Cart

</a>

</div>

</div>

</div>

</div>

<%

}

}else{

%>
<div class="col-12">

<div class="alert alert-warning text-center p-5">

<i class="fa-solid fa-circle-exclamation fa-3x mb-3 text-warning"></i>

<h3>

No Food Available

</h3>

<p>

There are currently no food items available.

Please check again later.

</p>

</div>

</div>

<%

}

%>

</div>

</div>

</section>
<!-- Today's Best Picks -->

<section class="py-5 bg-light">

<div class="container">

<div class="text-center mb-5">

<h2 class="fw-bold">

Chef's Special

</h2>

<p class="text-muted">

Freshly prepared meals loved by our customers.

</p>

</div>

<div class="row g-4">

<div class="col-lg-4">

<div class="card border-0 shadow h-100">

<img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=800&q=80"
class="card-img-top"
style="height:220px;object-fit:cover;">

<div class="card-body text-center">

<h4>Chicken Burger</h4>

<p class="text-muted">

Juicy grilled chicken burger with fresh vegetables and cheese.

</p>

</div>

</div>

</div>

<div class="col-lg-4">

<div class="card border-0 shadow h-100">

<img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=800&q=80"
class="card-img-top"
style="height:220px;object-fit:cover;">

<div class="card-body text-center">

<h4>Italian Pizza</h4>

<p class="text-muted">

Loaded with mozzarella cheese and premium toppings.

</p>

</div>

</div>

</div>

<div class="col-lg-4">

<div class="card border-0 shadow h-100">

<img src="https://images.unsplash.com/photo-1604908176997-431f2b47b0b5?auto=format&fit=crop&w=800&q=80"
class="card-img-top"
style="height:220px;object-fit:cover;">

<div class="card-body text-center">

<h4>Chicken Fried Rice</h4>

<p class="text-muted">

Delicious fried rice served with tender chicken pieces.

</p>

</div>

</div>

</div>

</div>

</div>

</section>
<footer class="bg-dark text-white mt-5 py-5">

<div class="container">

<div class="row">

<div class="col-lg-6">

<h3 class="fw-bold">

<i class="fa-solid fa-utensils me-2"></i>

QuickBite

</h3>

<p class="mt-3">

QuickBite Smart Cafeteria Management System makes ordering
food easier, faster and more convenient.

Enjoy fresh meals without waiting in long queues.

</p>

</div>

<div class="col-lg-3">

<h5 class="mb-3">

Quick Links

</h5>

<ul class="list-unstyled">

<li class="mb-2">

<a href="dashboard.jsp"
class="text-white text-decoration-none">

Home

</a>

</li>

<li class="mb-2">

<a href="FoodServlet"
class="text-white text-decoration-none">

Food Menu

</a>

</li>

<li class="mb-2">

<a href="CartServlet"
class="text-white text-decoration-none">

My Cart

</a>

</li>

<li class="mb-2">

<a href="OrderServlet"
class="text-white text-decoration-none">

My Orders

</a>

</li>

</ul>

</div>

<div class="col-lg-3">

<h5 class="mb-3">

Contact

</h5>

<p>

<i class="fa-solid fa-location-dot me-2"></i>

Sylhet Engineering College

</p>

<p>

<i class="fa-solid fa-phone me-2"></i>

+880 1700-000000

</p>

<p>

<i class="fa-solid fa-envelope me-2"></i>

info@quickbite.com

</p>

<div class="mt-3">

<a href="#" class="text-white me-3">

<i class="fab fa-facebook fa-lg"></i>

</a>

<a href="#" class="text-white me-3">

<i class="fab fa-instagram fa-lg"></i>

</a>

<a href="#" class="text-white me-3">

<i class="fab fa-twitter fa-lg"></i>

</a>

<a href="#" class="text-white">

<i class="fab fa-linkedin fa-lg"></i>

</a>

</div>

</div>

</div>

<hr class="my-4">

<p class="text-center mb-0">

© 2026 QuickBite Smart Cafeteria Management System.
All Rights Reserved.

</p>

</div>

</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>