<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("role") == null ||
        !"admin".equals(session.getAttribute("role"))) {

        response.sendRedirect("adminLogin.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Dashboard | QuickBite</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet">

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Poppins, sans-serif;
}

body {
    background: #f4f7fb;
}

/* ================= SIDEBAR ================= */

.sidebar {
    position: fixed;
    left: 0;
    top: 0;
    width: 260px;
    height: 100vh;
    background: #198754;
    padding-top: 20px;
}

.sidebar h2 {
    color: #fff;
    text-align: center;
    font-weight: 700;
    margin-bottom: 40px;
}

.sidebar a {
    display: block;
    padding: 15px 30px;
    color: white;
    text-decoration: none;
    font-size: 16px;
    transition: .3s;
}

.sidebar a:hover {
    background: white;
    color: #198754;
}

.sidebar i {
    margin-right: 10px;
    width: 20px;
}

/* ================= MAIN ================= */

.main {
    margin-left: 260px;
    padding: 40px;
}

/* ================= HEADER ================= */

.header {
    background: white;
    padding: 25px;
    border-radius: 20px;
    box-shadow: 0 5px 20px rgba(0,0,0,.08);
}

.header h2 {
    font-weight: 700;
}

/* ================= CARDS ================= */

.card {
    border: none;
    border-radius: 20px;
    transition: .3s;
}

.card:hover {
    transform: translateY(-5px);
}

.icon {
    width: 70px;
    height: 70px;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 28px;
    color: white;
    margin: auto;
}

.bg1 {
    background: #198754;
}

.bg2 {
    background: #0d6efd;
}

.bg3 {
    background: #ffc107;
    color: black;
}

.bg4 {
    background: #dc3545;
}

/* ================= FOOTER ================= */

footer {
    border-radius: 20px 20px 0 0;
}

/* ================= RESPONSIVE ================= */

@media (max-width: 900px) {

    .sidebar {
        width: 210px;
    }

    .main {
        margin-left: 210px;
        padding: 25px;
    }
}

</style>

</head>

<body>


<!-- ================= SIDEBAR ================= -->

<div class="sidebar">

    <h2>
        QuickBite
    </h2>

    <a href="adminDashboard.jsp">

        <i class="fa-solid fa-house"></i>

        Dashboard

    </a>


    <a href="manageFood.jsp">

        <i class="fa-solid fa-burger"></i>

        Manage Food

    </a>


    <!-- IMPORTANT: Orders goes through Servlet -->

    <a href="ManageOrdersServlet">

        <i class="fa-solid fa-receipt"></i>

        Orders

    </a>


    <a href="manageUsers.jsp">

        <i class="fa-solid fa-users"></i>

        Users

    </a>


    <a href="salesReport.jsp">

        <i class="fa-solid fa-chart-line"></i>

        Sales Report

    </a>


    <a href="LogoutServlet">

        <i class="fa-solid fa-right-from-bracket"></i>

        Logout

    </a>

</div>


<!-- ================= MAIN CONTENT ================= -->

<div class="main">


    <!-- ================= HEADER ================= -->

    <div class="header">

        <h2>

            Welcome Back, Administrator

        </h2>

        <p class="text-muted mb-0">

            Manage foods, customers, orders and reports
            from one dashboard.

        </p>

    </div>


    <!-- ================= SUMMARY CARDS ================= -->

    <div class="row mt-4 g-4">


        <!-- FOOD -->

        <div class="col-lg-3 col-md-6">

            <div class="card shadow p-4 text-center">

                <div class="icon bg1 mb-3">

                    <i class="fa-solid fa-burger"></i>

                </div>

                <h5>
                    Manage Food
                </h5>

                <h2 class="fw-bold text-success">
                    25
                </h2>

                <p class="text-muted">
                    Food Items
                </p>

                <a href="manageFood.jsp"
                   class="btn btn-success rounded-pill">

                    Open

                </a>

            </div>

        </div>


        <!-- ORDERS -->

        <div class="col-lg-3 col-md-6">

            <div class="card shadow p-4 text-center">

                <div class="icon bg2 mb-3">

                    <i class="fa-solid fa-receipt"></i>

                </div>

                <h5>
                    Orders
                </h5>

                <h2 class="fw-bold text-primary">
                    120
                </h2>

                <p class="text-muted">
                    Total Orders
                </p>

                <a href="ManageOrdersServlet"
                   class="btn btn-primary rounded-pill">

                    View

                </a>

            </div>

        </div>


        <!-- USERS -->

        <div class="col-lg-3 col-md-6">

            <div class="card shadow p-4 text-center">

                <div class="icon bg3 mb-3">

                    <i class="fa-solid fa-users"></i>

                </div>

                <h5>
                    Users
                </h5>

                <h2 class="fw-bold">
                    38
                </h2>

                <p class="text-muted">
                    Registered Users
                </p>

                <a href="manageUsers.jsp"
                   class="btn btn-warning rounded-pill">

                    Manage

                </a>

            </div>

        </div>


        <!-- SALES -->

        <div class="col-lg-3 col-md-6">

            <div class="card shadow p-4 text-center">

                <div class="icon bg4 mb-3">

                    <i class="fa-solid fa-chart-line"></i>

                </div>

                <h5>
                    Sales
                </h5>

                <h2 class="fw-bold text-danger">

                    ৳58,400

                </h2>

                <p class="text-muted">
                    Total Revenue
                </p>

                <a href="salesReport.jsp"
                   class="btn btn-danger rounded-pill">

                    Report

                </a>

            </div>

        </div>

    </div>


    <!-- ================= RECENT ORDERS ================= -->

    <div class="row mt-5">


        <div class="col-lg-8">

            <div class="card shadow">

                <div class="card-header bg-success text-white">

                    <h4 class="mb-0">

                        Recent Orders

                    </h4>

                </div>


                <div class="card-body">

                    <div class="table-responsive">

                        <table class="table table-hover align-middle">

                            <thead>

                                <tr>

                                    <th>
                                        Customer
                                    </th>

                                    <th>
                                        Food
                                    </th>

                                    <th>
                                        Status
                                    </th>

                                    <th>
                                        Total
                                    </th>

                                </tr>

                            </thead>


                            <tbody>


                                <tr>

                                    <td>
                                        Priya Das
                                    </td>

                                    <td>
                                        Chicken Burger
                                    </td>

                                    <td>

                                        <span class="badge bg-warning text-dark">
                                            Pending
                                        </span>

                                    </td>

                                    <td>
                                        ৳180
                                    </td>

                                </tr>


                                <tr>

                                    <td>
                                        Neha
                                    </td>

                                    <td>
                                        Cheese Pizza
                                    </td>

                                    <td>

                                        <span class="badge bg-primary">
                                            Preparing
                                        </span>

                                    </td>

                                    <td>
                                        ৳320
                                    </td>

                                </tr>


                                <tr>

                                    <td>
                                        Rahim
                                    </td>

                                    <td>
                                        Beef Steak
                                    </td>

                                    <td>

                                        <span class="badge bg-success">
                                            Completed
                                        </span>

                                    </td>

                                    <td>
                                        ৳450
                                    </td>

                                </tr>


                                <tr>

                                    <td>
                                        Karim
                                    </td>

                                    <td>
                                        Cold Coffee
                                    </td>

                                    <td>

                                        <span class="badge bg-danger">
                                            Cancelled
                                        </span>

                                    </td>

                                    <td>
                                        ৳140
                                    </td>

                                </tr>


                            </tbody>

                        </table>

                    </div>

                </div>

            </div>

        </div>


        <!-- ================= TOP SELLING ================= -->

        <div class="col-lg-4">

            <div class="card shadow">

                <div class="card-header bg-success text-white">

                    <h4 class="mb-0">

                        Top Selling Foods

                    </h4>

                </div>


                <div class="card-body">


                    <!-- Burger -->

                    <div class="d-flex align-items-center mb-4">

                        <img
                            src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=300&q=80"
                            style="width:70px;
                                   height:70px;
                                   border-radius:15px;
                                   object-fit:cover;">

                        <div class="ms-3">

                            <h6 class="mb-1">
                                Chicken Burger
                            </h6>

                            <small class="text-muted">
                                250 Sold
                            </small>

                        </div>

                    </div>


                    <!-- Pizza -->

                    <div class="d-flex align-items-center mb-4">

                        <img
                            src="https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=300&q=80"
                            style="width:70px;
                                   height:70px;
                                   border-radius:15px;
                                   object-fit:cover;">

                        <div class="ms-3">

                            <h6 class="mb-1">
                                Cheese Pizza
                            </h6>

                            <small class="text-muted">
                                210 Sold
                            </small>

                        </div>

                    </div>


                    <!-- Steak -->

                    <div class="d-flex align-items-center mb-4">

                        <img
                            src="https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=300&q=80"
                            style="width:70px;
                                   height:70px;
                                   border-radius:15px;
                                   object-fit:cover;">

                        <div class="ms-3">

                            <h6 class="mb-1">
                                Beef Steak
                            </h6>

                            <small class="text-muted">
                                180 Sold
                            </small>

                        </div>

                    </div>


                    <!-- Coffee -->

                    <div class="d-flex align-items-center">

                        <img
                            src="https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?auto=format&fit=crop&w=300&q=80"
                            style="width:70px;
                                   height:70px;
                                   border-radius:15px;
                                   object-fit:cover;">

                        <div class="ms-3">

                            <h6 class="mb-1">
                                Cold Coffee
                            </h6>

                            <small class="text-muted">
                                150 Sold
                            </small>

                        </div>

                    </div>


                </div>

            </div>

        </div>

    </div>


    <!-- ================= FOOTER ================= -->

    <footer class="mt-5 bg-dark text-white py-5">

        <div class="container">

            <div class="row">


                <!-- About -->

                <div class="col-lg-6">

                    <h3 class="fw-bold">
                        QuickBite Admin Panel
                    </h3>

                    <p>
                        Smart Cafeteria Management System
                    </p>

                    <p>

                        Manage food items, customer orders,
                        registered users and cafeteria sales
                        efficiently from one dashboard.

                    </p>

                </div>


                <!-- Links -->

                <div class="col-lg-3">

                    <h5>
                        Quick Links
                    </h5>

                    <ul class="list-unstyled">


                        <li class="mb-2">

                            <a href="adminDashboard.jsp"
                               class="text-white text-decoration-none">

                                Dashboard

                            </a>

                        </li>


                        <li class="mb-2">

                            <a href="manageFood.jsp"
                               class="text-white text-decoration-none">

                                Manage Food

                            </a>

                        </li>


                        <li class="mb-2">

                            <a href="ManageOrdersServlet"
                               class="text-white text-decoration-none">

                                Orders

                            </a>

                        </li>


                        <li class="mb-2">

                            <a href="manageUsers.jsp"
                               class="text-white text-decoration-none">

                                Users

                            </a>

                        </li>


                        <li class="mb-2">

                            <a href="salesReport.jsp"
                               class="text-white text-decoration-none">

                                Sales Report

                            </a>

                        </li>


                    </ul>

                </div>


                <!-- Contact -->

                <div class="col-lg-3">

                    <h5>
                        Contact
                    </h5>

                    <p>

                        <i class="fa-solid fa-envelope me-2"></i>

                        admin@quickbite.com

                    </p>


                    <p>

                        <i class="fa-solid fa-phone me-2"></i>

                        +8801700000000

                    </p>


                    <p>

                        <i class="fa-solid fa-location-dot me-2"></i>

                        Sylhet Engineering College

                    </p>


                    <div class="mt-3">

                        <a href="#"
                           class="text-white me-3">

                            <i class="fab fa-facebook fa-lg"></i>

                        </a>


                        <a href="#"
                           class="text-white me-3">

                            <i class="fab fa-instagram fa-lg"></i>

                        </a>


                        <a href="#"
                           class="text-white me-3">

                            <i class="fab fa-linkedin fa-lg"></i>

                        </a>


                        <a href="#"
                           class="text-white">

                            <i class="fab fa-github fa-lg"></i>

                        </a>

                    </div>

                </div>

            </div>


            <hr>


            <p class="text-center mb-0">

                © 2026 QuickBite Admin Dashboard |
                All Rights Reserved.

            </p>

        </div>

    </footer>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>