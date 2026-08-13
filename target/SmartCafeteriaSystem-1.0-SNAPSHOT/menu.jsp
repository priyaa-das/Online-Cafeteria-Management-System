```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Food Menu | QuickBite</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
      rel="stylesheet">

<style>

*{
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    margin:0;
    background:#f5f7fa;
}

/* HEADER */

.menu-header{
    background:linear-gradient(135deg,#198754,#28a745);
    color:white;
    padding:45px 20px 55px;
    text-align:center;
}

.navbar-custom{
    display:flex;
    justify-content:space-between;
    align-items:center;
    max-width:1200px;
    margin:auto;
    margin-bottom:45px;
}

.logo{
    font-size:30px;
    font-weight:700;
}

.back-btn{
    background:white;
    color:#222;
    padding:10px 22px;
    border-radius:30px;
    text-decoration:none;
    font-weight:500;
}

.back-btn:hover{
    background:#f1f1f1;
    color:#198754;
}

.menu-header h1{
    font-size:45px;
    font-weight:700;
    margin-bottom:10px;
}

.menu-header p{
    font-size:18px;
    margin:0;
}

/* MENU */

.menu-section{
    padding:55px 0;
}

.category-title{
    font-size:30px;
    font-weight:700;
    color:#198754;
    margin-bottom:30px;
    border-left:5px solid #198754;
    padding-left:15px;
}

/* FOOD CARD */

.food-card{
    border:none;
    border-radius:20px;
    overflow:hidden;
    background:white;
    box-shadow:0 5px 20px rgba(0,0,0,.08);
    height:100%;
    transition:.3s;
}

.food-card:hover{
    transform:translateY(-7px);
    box-shadow:0 12px 30px rgba(0,0,0,.15);
}

.food-card img{
    width:100%;
    height:220px;
    object-fit:cover;
}

.food-body{
    padding:20px;
}

.food-name{
    font-size:20px;
    font-weight:600;
    margin-bottom:8px;
}

.food-description{
    color:#777;
    font-size:14px;
    min-height:45px;
}

.price{
    color:#198754;
    font-size:21px;
    font-weight:700;
}

.login-btn{
    background:#198754;
    color:white;
    border:none;
    border-radius:25px;
    padding:9px 18px;
    text-decoration:none;
    font-size:14px;
    display:inline-block;
}

.login-btn:hover{
    background:#146c43;
    color:white;
}

/* OFFER */

.offer{
    background:white;
    border-radius:20px;
    padding:30px;
    margin-bottom:50px;
    box-shadow:0 5px 20px rgba(0,0,0,.07);
    text-align:center;
}

.offer i{
    font-size:40px;
    color:#198754;
    margin-bottom:12px;
}

.offer h3{
    font-weight:700;
}

/* FOOTER */

footer{
    background:#212529;
    color:white;
    padding:30px 0;
    margin-top:30px;
}

/* RESPONSIVE */

@media(max-width:768px){

    .menu-header h1{
        font-size:32px;
    }

    .navbar-custom{
        margin-bottom:30px;
    }

    .logo{
        font-size:24px;
    }

}

</style>

</head>

<body>

<!-- HEADER -->

<header class="menu-header">

    <div class="navbar-custom">

        <div class="logo">
            <i class="fa-solid fa-utensils me-2"></i>
            QuickBite
        </div>

        <a href="index.html" class="back-btn">
            <i class="fa-solid fa-arrow-left me-2"></i>
            Back
        </a>

    </div>

    <h1>Our Delicious Food Menu</h1>

    <p>Fresh • Delicious • Affordable</p>

</header>


<!-- MENU -->

<section class="menu-section">

<div class="container">

<!-- OFFER -->

<div class="offer">

    <i class="fa-solid fa-bowl-food"></i>

    <h3>Something Delicious Is Waiting For You!</h3>

    <p class="text-secondary mb-0">
        Enjoy delicious meals, snacks and desserts at affordable student-friendly prices.
    </p>

</div>


<!-- MAIN COURSE -->

<h2 class="category-title">
    <i class="fa-solid fa-utensils me-2"></i>
    Main Course
</h2>

<div class="row g-4 mb-5">


<!-- Fried Rice -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=700"
     alt="Chicken Fried Rice">

<div class="food-body">

<div class="food-name">Chicken Fried Rice</div>

<p class="food-description">
    Fragrant fried rice cooked with chicken, vegetables and special spices.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳220</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Chicken Curry -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=700"
     alt="Chicken Curry">

<div class="food-body">

<div class="food-name">Chicken Curry</div>

<p class="food-description">
    Tender chicken cooked in a rich and flavorful curry sauce.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳200</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Creamy Pasta -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1473093295043-cdd812d0e601?w=700"
     alt="Creamy Chicken Pasta">

<div class="food-body">

<div class="food-name">Creamy Chicken Pasta</div>

<p class="food-description">
    Creamy pasta tossed with chicken, herbs and delicious sauce.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳230</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Chicken Chow Mein -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246?w=700"
     alt="Chicken Chow Mein">

<div class="food-body">

<div class="food-name">Chicken Chow Mein</div>

<p class="food-description">
    Stir-fried noodles with chicken and fresh crunchy vegetables.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳210</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Grilled Fish -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=700"
     alt="Grilled Fish">

<div class="food-body">

<div class="food-name">Grilled Fish</div>

<p class="food-description">
    Fresh grilled fish served with vegetables and a special sauce.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳280</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>

</div>


<!-- SNACKS -->

<h2 class="category-title">

    <i class="fa-solid fa-cookie-bite me-2"></i>
    Snacks & Fast Food

</h2>

<div class="row g-4 mb-5">


<!-- Pizza -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?w=700"
     alt="Cheese Pizza">

<div class="food-body">

<div class="food-name">Cheese Pizza</div>

<p class="food-description">
    Crispy pizza topped with rich tomato sauce and melted cheese.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳350</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- French Fries -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1573080496219-bb080dd4f877?w=700"
     alt="French Fries">

<div class="food-body">

<div class="food-name">French Fries</div>

<p class="food-description">
    Crispy golden potato fries served hot and fresh.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳100</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Chicken Sandwich -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1528735602780-2552fd46c7af?w=700"
     alt="Chicken Sandwich">

<div class="food-body">

<div class="food-name">Chicken Sandwich</div>

<p class="food-description">
    Fresh bread filled with chicken, vegetables and creamy sauce.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳150</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Samosa -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1601050690597-df0568f70950?w=700"
     alt="Samosa">

<div class="food-body">

<div class="food-name">Samosa</div>

<p class="food-description">
    Crispy golden samosa filled with delicious spiced potatoes.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳40</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Chicken Roll -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1626700051175-6818013e1d4f?w=700"
     alt="Chicken Roll">

<div class="food-body">

<div class="food-name">Chicken Roll</div>

<p class="food-description">
    Soft wrap filled with spicy chicken, vegetables and sauce.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳130</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>

</div>


<!-- DESSERTS -->

<h2 class="category-title">

    <i class="fa-solid fa-ice-cream me-2"></i>
    Desserts

</h2>

<div class="row g-4">


<!-- Chocolate Cake -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=700"
     alt="Chocolate Cake">

<div class="food-body">

<div class="food-name">Chocolate Cake</div>

<p class="food-description">
    Soft chocolate cake covered with creamy chocolate frosting.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳180</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Red Velvet -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1586788224331-947f68671cf1?w=700"
     alt="Red Velvet Cake">

<div class="food-body">

<div class="food-name">Red Velvet Cake</div>

<p class="food-description">
    Soft red velvet cake with smooth cream cheese frosting.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳220</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Cheesecake -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1565958011703-44f9829ba187?w=700"
     alt="Classic Cheesecake">

<div class="food-body">

<div class="food-name">Classic Cheesecake</div>

<p class="food-description">
    Creamy cheesecake with a delicious crunchy biscuit base.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳250</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Brownie -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1564355808539-22fda35bed7e?w=700"
     alt="Chocolate Brownie">

<div class="food-body">

<div class="food-name">Chocolate Brownie</div>

<p class="food-description">
    Warm fudgy brownie with a rich chocolate flavor.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳150</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Waffle -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1562376552-0d160a2f238d?w=700"
     alt="Belgian Waffle">

<div class="food-body">

<div class="food-name">Belgian Waffle</div>

<p class="food-description">
    Crispy golden waffle topped with chocolate and fresh fruits.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳180</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Pancake -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1528207776546-365bb710ee93?w=700"
     alt="Fluffy Pancake">

<div class="food-body">

<div class="food-name">Fluffy Pancake</div>

<p class="food-description">
    Soft pancakes served with chocolate sauce and fresh fruits.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳170</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Donut -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1551024506-0bccd828d307?w=700"
     alt="Glazed Donut">

<div class="food-body">

<div class="food-name">Glazed Donut</div>

<p class="food-description">
    Soft and delicious glazed donut with a sweet topping.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳100</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Ice Cream -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=700"
     alt="Ice Cream Sundae">

<div class="food-body">

<div class="food-name">Ice Cream Sundae</div>

<p class="food-description">
    Creamy vanilla ice cream topped with chocolate sauce and nuts.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳160</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>


<!-- Tiramisu -->

<div class="col-lg-4 col-md-6">
<div class="food-card">

<img src="https://images.unsplash.com/photo-1571877227200-a0d98ea607e9?w=700"
     alt="Tiramisu">

<div class="food-body">

<div class="food-name">Tiramisu</div>

<p class="food-description">
    Classic Italian dessert with coffee, mascarpone and cocoa.
</p>

<div class="d-flex justify-content-between align-items-center">

<span class="price">৳250</span>

<a href="login.jsp" class="login-btn">
    <i class="fa-solid fa-right-to-bracket me-1"></i>
    Login to Order
</a>

</div>

</div>
</div>
</div>

</div>

</div>

</section>


<!-- FOOTER -->

<footer>

<div class="container text-center">

    <h4 class="fw-bold">
        <i class="fa-solid fa-utensils me-2"></i>
        QuickBite
    </h4>

    <p class="mb-1">
        Smart University Cafeteria Management System
    </p>

    <small>
        © 2026 QuickBite. All Rights Reserved.
    </small>

</div>

</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
```
