<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(session.getAttribute("userName")==null){
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>QuickBite | User Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

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

.profile-box{
    background:#fff;
    color:#333;
    padding:10px 18px;
    border-radius:30px;
    font-weight:600;
}

.hero{
    background:linear-gradient(135deg,#198754,#28a745);
    color:white;
    padding:80px 0;
}

.hero h1{
    font-size:48px;
    font-weight:700;
}

.hero p{
    font-size:18px;
    margin-top:20px;
    line-height:30px;
}

.section-title{
    font-size:34px;
    font-weight:700;
    margin:60px 0 35px;
    text-align:center;
}

.card{
    border:none;
    border-radius:20px;
    transition:.35s;
}

.card:hover{
    transform:translateY(-8px);
    box-shadow:0 15px 35px rgba(0,0,0,.15);
}

.icon-box{
    width:80px;
    height:80px;
    margin:auto;
    border-radius:50%;
    display:flex;
    align-items:center;
    justify-content:center;
    color:#fff;
    font-size:30px;
}

.bg1{
    background:#198754;
}

.bg2{
    background:#ffc107;
    color:#222;
}

.bg3{
    background:#dc3545;
}

.food-card img{
    height:230px;
    object-fit:cover;
}

.quote-box{
    background:white;
    border-left:6px solid #198754;
    border-radius:15px;
    padding:35px;
    margin-top:60px;
    box-shadow:0 10px 30px rgba(0,0,0,.08);
}

footer{
    margin-top:70px;
}

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark shadow">

<div class="container">

<a class="navbar-brand" href="#">

<i class="fa-solid fa-utensils me-2"></i>

QuickBite

</a>

<div class="d-flex align-items-center">

<div class="profile-box me-3">

<i class="fa-solid fa-user text-success me-2"></i>

<%=session.getAttribute("userName")%>

</div>

<a href="LogoutServlet"
class="btn btn-light rounded-pill px-4">

Logout

</a>

</div>

</div>

</nav>

<section class="hero">

<div class="container">

<div class="row align-items-center">

<div class="col-lg-7">

<h5>WELCOME TO QUICKBITE</h5>

<h1 class="mt-3">

Hello,
<%=session.getAttribute("userName")%>

</h1>

<p>

Enjoy fresh meals without waiting in long queues.
Browse today's menu, place your order easily and
collect it from the cafeteria in just a few minutes.

</p>

<a href="FoodServlet"
class="btn btn-light btn-lg rounded-pill mt-3 px-4">

Explore Menu

</a>

</div>

<div class="col-lg-5 text-center">

<img src="https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=900&auto=format&fit=crop&q=80"
class="img-fluid rounded-4 shadow-lg">

</div>

</div>

</div>

</section>

<div class="container">

<h2 class="section-title">

Quick Access

</h2>

<div class="row g-4">
    <!-- Food Menu Card -->

<div class="col-lg-4">

<div class="card shadow text-center p-4 h-100">

<div class="icon-box bg1 mb-4">

<i class="fa-solid fa-utensils"></i>

</div>

<h4 class="fw-bold">

Food Menu

</h4>

<p class="text-muted mt-3">

Browse all available meals and order your favorite food from today's menu.

</p>

<a href="FoodServlet"
class="btn btn-success rounded-pill mt-3">

View Menu

</a>

</div>

</div>



<!-- My Orders Card -->

<div class="col-lg-4">

<div class="card shadow text-center p-4 h-100">

<div class="icon-box bg2 mb-4">

<i class="fa-solid fa-receipt"></i>

</div>

<h4 class="fw-bold">

My Orders

</h4>

<p class="text-muted mt-3">

View your placed orders and check their current status anytime.

</p>

<a href="OrderServlet"
class="btn btn-warning rounded-pill mt-3">

View Orders

</a>

</div>

</div>



<!-- My Profile Card -->

<div class="col-lg-4">

<div class="card shadow text-center p-4 h-100">

<div class="icon-box bg3 mb-4">

<i class="fa-solid fa-user"></i>

</div>

<h4 class="fw-bold">

My Profile

</h4>

<p class="text-muted mt-3">

Manage your personal information and account details.

</p>

<a href="profile.jsp"
class="btn btn-danger rounded-pill mt-3">

Open Profile

</a>

</div>

</div>

</div>



<h2 class="section-title">

Today's Special

</h2>

<div class="row g-4">
    <!-- Food Card 1 -->

<div class="col-lg-4">

<div class="card food-card shadow h-100">

<img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=900&auto=format&fit=crop&q=80"
class="card-img-top">

<div class="card-body">

<h4 class="fw-bold">

Chicken Burger

</h4>

<p class="text-muted">

Fresh grilled chicken burger with crispy lettuce,
cheese and creamy sauce.

</p>

<h5 class="text-success fw-bold">

৳180

</h5>

</div>

</div>

</div>



<!-- Food Card 2 -->

<div class="col-lg-4">

<div class="card food-card shadow h-100">

<img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?w=900&auto=format&fit=crop&q=80"
class="card-img-top">

<div class="card-body">

<h4 class="fw-bold">

Cheese Pizza

</h4>

<p class="text-muted">

Loaded with mozzarella cheese,
fresh vegetables and Italian herbs.

</p>

<h5 class="text-success fw-bold">

৳320

</h5>

</div>

</div>

</div>



<!-- Food Card 3 -->

<div class="col-lg-4">

<div class="card food-card shadow h-100">

<img src="https://images.unsplash.com/photo-1512058564366-18510be2db19?w=900&auto=format&fit=crop&q=80"
class="card-img-top">

<div class="card-body">

<h4 class="fw-bold">

Chicken Fried Rice

</h4>

<p class="text-muted">

Delicious fried rice served with
fresh vegetables and spicy chicken.

</p>

<h5 class="text-success fw-bold">

৳220

</h5>

</div>

</div>

</div>

</div>



<div class="quote-box text-center">

<h2 class="text-success fw-bold mb-3">

Food Brings People Together

</h2>

<p class="fs-5 text-secondary">

"Good food is not just about filling your stomach,
it's about creating memories, sharing happiness,
and enjoying every moment."

</p>

</div>
    <footer class="bg-dark text-white py-5">

<div class="container">

<div class="row">

<div class="col-lg-6">

<h3 class="fw-bold">

<i class="fa-solid fa-utensils me-2"></i>

QuickBite

</h3>

<p class="mt-3">

Smart Cafeteria Management System developed to make
food ordering faster, easier and more convenient for students.

</p>

</div>

<div class="col-lg-6 text-lg-end">

<h5>

Follow Us

</h5>

<div class="mt-3">

<a href="#" class="text-white me-3">

<i class="fab fa-facebook fa-2x"></i>

</a>

<a href="#" class="text-white me-3">

<i class="fab fa-instagram fa-2x"></i>

</a>

<a href="#" class="text-white me-3">

<i class="fab fa-twitter fa-2x"></i>

</a>

<a href="#" class="text-white">

<i class="fab fa-linkedin fa-2x"></i>

</a>

</div>

</div>

</div>

<hr class="my-4">

<p class="text-center mb-0">

© 2026 QuickBite | Smart Cafeteria Management System |
All Rights Reserved.

</p>

</div>

</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>