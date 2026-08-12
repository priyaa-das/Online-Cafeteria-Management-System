<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Dashboard | QuickBite</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<link rel="stylesheet" href="style.css">

</head>

<body>

<!--================ NAVBAR =================-->

<nav class="navbar navbar-dark bg-success">

<div class="container-fluid">

<a class="navbar-brand fw-bold" href="#">

<i class="fa-solid fa-utensils"></i>

QuickBite Admin

</a>

<a href="index.html" class="btn btn-light">

Logout

</a>

</div>

</nav>



<div class="container-fluid">

<div class="row">

<!--================ SIDEBAR =================-->

<div class="col-lg-2 bg-dark text-white min-vh-100 p-4">

<h4 class="mb-4">

Dashboard

</h4>

<ul class="nav flex-column">

<li class="nav-item mb-3">

<a href="#" class="nav-link text-white">

<i class="fa-solid fa-house me-2"></i>

Home

</a>

</li>

<li class="nav-item mb-3">

<a href="#" class="nav-link text-white">

<i class="fa-solid fa-bowl-food me-2"></i>

Manage Food

</a>

</li>

<li class="nav-item mb-3">

<a href="#" class="nav-link text-white">

<i class="fa-solid fa-cart-shopping me-2"></i>

Orders

</a>

</li>

<li class="nav-item mb-3">

<a href="#" class="nav-link text-white">

<i class="fa-solid fa-users me-2"></i>

Customers

</a>

</li>

<li class="nav-item mb-3">

<a href="#" class="nav-link text-white">

<i class="fa-solid fa-chart-line me-2"></i>

Sales Report

</a>

</li>

</ul>

</div>



<!--================ MAIN CONTENT =================-->

<div class="col-lg-10 p-4">

<h2 class="mb-4">

Welcome Admin

</h2>

<div class="row g-4">

<!-- CARD 1 -->

<div class="col-md-3">

<div class="card shadow border-0 text-center">

<div class="card-body">

<i class="fa-solid fa-bowl-food fa-3x text-success mb-3"></i>

<h5>Total Foods</h5>

<h2>50</h2>

</div>

</div>

</div>



<!-- CARD 2 -->

<div class="col-md-3">

<div class="card shadow border-0 text-center">

<div class="card-body">

<i class="fa-solid fa-cart-shopping fa-3x text-primary mb-3"></i>

<h5>Total Orders</h5>

<h2>120</h2>

</div>

</div>

</div>



<!-- CARD 3 -->

<div class="col-md-3">

<div class="card shadow border-0 text-center">

<div class="card-body">

<i class="fa-solid fa-users fa-3x text-warning mb-3"></i>

<h5>Customers</h5>

<h2>80</h2>

</div>

</div>

</div>



<!-- CARD 4 -->

<div class="col-md-3">

<div class="card shadow border-0 text-center">

<div class="card-body">

<i class="fa-solid fa-money-bill-wave fa-3x text-danger mb-3"></i>

<h5>Today's Sales</h5>

<h2>৳8,500</h2>

</div>

</div>

</div>

</div>

<br><br>

<h3>

Recent Orders

</h3>

<div class="table-responsive">

<table class="table table-bordered table-hover">

<thead class="table-success">

<tr>

<th>ID</th>

<th>Customer</th>

<th>Food</th>

<th>Quantity</th>

<th>Price</th>

<th>Status</th>

</tr>

</thead>

<tbody>
    <tr>

<td>101</td>

<td>Rahim</td>

<td>Chicken Burger</td>

<td>2</td>

<td>৳440</td>

<td>

<span class="badge bg-warning">

Pending

</span>

</td>

</tr>

<tr>

<td>102</td>

<td>Karim</td>

<td>Chicken Masala Paratha</td>

<td>1</td>

<td>৳180</td>

<td>

<span class="badge bg-success">

Completed

</span>

</td>

</tr>

<tr>

<td>103</td>

<td>Nusrat</td>

<td>Milk Tea</td>

<td>3</td>

<td>৳90</td>

<td>

<span class="badge bg-primary">

Preparing

</span>

</td>

</tr>

<tr>

<td>104</td>

<td>Sadia</td>

<td>French Fries</td>

<td>2</td>

<td>৳240</td>

<td>

<span class="badge bg-danger">

Cancelled

</span>

</td>

</tr>

</tbody>

</table>

</div>



<hr class="my-5">



<h3 class="mb-4">

Add New Food

</h3>

<form>

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">

Food Name

</label>

<input

type="text"

class="form-control"

placeholder="Enter Food Name">

</div>

<div class="col-md-6 mb-3">

<label class="form-label">

Category

</label>

<select class="form-select">

<option>Breakfast</option>

<option>Lunch</option>

<option>Snacks</option>

<option>Dessert</option>

<option>Beverages</option>

</select>

</div>

</div>



<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">

Price

</label>

<input

type="number"

class="form-control"

placeholder="Enter Price">

</div>

<div class="col-md-6 mb-3">

<label class="form-label">

Food Image URL

</label>

<input

type="text"

class="form-control"

placeholder="Paste Image URL">

</div>

</div>



<div class="mb-3">

<label class="form-label">

Description

</label>

<textarea

class="form-control"

rows="4"

placeholder="Food Description">

</textarea>

</div>



<button class="btn btn-success">

<i class="fa-solid fa-plus"></i>

Add Food

</button>

<button class="btn btn-primary ms-2">

<i class="fa-solid fa-pen"></i>

Update

</button>

<button class="btn btn-danger ms-2">

<i class="fa-solid fa-trash"></i>

Delete

</button>

</form>
<hr class="my-5">

<!--================ RECENT ACTIVITIES =================-->

<h3 class="mb-4">

Recent Activities

</h3>

<div class="list-group shadow-sm">

<div class="list-group-item">

✅ New food item added successfully.

</div>

<div class="list-group-item">

🍔 Customer ordered Chicken Burger.

</div>

<div class="list-group-item">

☕ Milk Tea marked as completed.

</div>

<div class="list-group-item">

📦 Today's sales report generated.

</div>

</div>



<!--================ QUICK STATS =================-->

<div class="row mt-5">

<div class="col-md-4">

<div class="card border-0 shadow text-center">

<div class="card-body">

<h5>

Pending Orders

</h5>

<h2 class="text-warning">

12

</h2>

</div>

</div>

</div>



<div class="col-md-4">

<div class="card border-0 shadow text-center">

<div class="card-body">

<h5>

Completed Orders

</h5>

<h2 class="text-success">

108

</h2>

</div>

</div>

</div>



<div class="col-md-4">

<div class="card border-0 shadow text-center">

<div class="card-body">

<h5>

Available Foods

</h5>

<h2 class="text-primary">

50

</h2>

</div>

</div>

</div>

</div>



<!--================ FOOTER =================-->

<footer class="mt-5">

<hr>

<p class="text-center text-muted">

© 2026 QuickBite Admin Dashboard

</p>

</footer>



</div>

</div>

</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>