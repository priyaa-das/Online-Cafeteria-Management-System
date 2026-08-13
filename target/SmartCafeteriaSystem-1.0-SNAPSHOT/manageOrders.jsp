<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.quickbite.model.OrderData"%>

<%
    // ================= ADMIN SECURITY CHECK =================
    if (session.getAttribute("role") == null ||
        !"admin".equals(session.getAttribute("role"))) {

        response.sendRedirect("adminLogin.jsp");
        return;
    }

    ArrayList<OrderData> orderList =
        (ArrayList<OrderData>) request.getAttribute("orderList");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Manage Orders | QuickBite</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            background: #f4f7fb;
            font-family: Arial, sans-serif;
        }

        /* ================= SIDEBAR ================= */

        .sidebar {
            position: fixed;
            left: 0;
            top: 0;
            width: 260px;
            height: 100vh;
            background: #198754;
            padding-top: 25px;
        }

        .sidebar h2 {
            color: white;
            text-align: center;
            font-weight: 700;
            margin-bottom: 35px;
        }

        .sidebar a {
            display: block;
            padding: 15px 25px;
            color: white;
            text-decoration: none;
            font-size: 16px;
            transition: 0.3s;
        }

        .sidebar a:hover {
            background: white;
            color: #198754;
        }

        .sidebar i {
            width: 25px;
            margin-right: 8px;
        }

        /* ================= MAIN ================= */

        .main {
            margin-left: 260px;
            padding: 40px;
        }

        .page-header {
            background: white;
            padding: 25px;
            border-radius: 15px;
            margin-bottom: 25px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.07);
        }

        .page-header h2 {
            margin: 0;
            font-weight: 700;
        }

        .order-card {
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.07);
        }

        .table {
            vertical-align: middle;
        }

        .table thead th {
            background: #d1e7dd;
            color: #222;
            padding: 15px;
            white-space: nowrap;
        }

        .table tbody td {
            padding: 15px;
        }

        .status-form {
            min-width: 150px;
        }

        .empty-box {
            text-align: center;
            padding: 70px 20px;
        }

        .empty-box i {
            font-size: 50px;
            color: #6c757d;
            margin-bottom: 15px;
        }

        @media(max-width: 900px) {

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

<!-- ===================================================== -->
<!-- SIDEBAR -->
<!-- ===================================================== -->

<div class="sidebar">

    <h2>QuickBite</h2>

    <a href="adminDashboard.jsp">
        <i class="fa-solid fa-house"></i>
        Dashboard
    </a>

    <a href="manageFood.jsp">
        <i class="fa-solid fa-burger"></i>
        Manage Food
    </a>

    <a href="<%= request.getContextPath() %>/ManageOrdersServlet">
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

    <a href="<%= request.getContextPath() %>/LogoutServlet">
        <i class="fa-solid fa-right-from-bracket"></i>
        Logout
    </a>

</div>


<!-- ===================================================== -->
<!-- MAIN CONTENT -->
<!-- ===================================================== -->

<div class="main">

    <!-- PAGE HEADER -->

    <div class="page-header">

        <h2>
            <i class="fa-solid fa-receipt text-success me-2"></i>
            Manage Orders
        </h2>

        <p class="text-muted mb-0">
            View customer orders and update their status.
        </p>

    </div>


    <!-- ================================================= -->
    <!-- ORDERS TABLE -->
    <!-- ================================================= -->

    <div class="order-card">

        <div class="table-responsive">

            <table class="table table-hover">

                <thead>

                    <tr>

                        <th>Order ID</th>

                        <th>User ID</th>

                        <th>Total</th>

                        <th>Payment</th>

                        <th>Payment Status</th>

                        <th>Order Date</th>

                        <th>Status</th>

                        <th>Action</th>

                    </tr>

                </thead>


                <tbody>

                <%
                    if (orderList != null &&
                        !orderList.isEmpty()) {

                        for (OrderData order : orderList) {

                            String currentStatus = order.getStatus();

                            if (currentStatus == null ||
                                currentStatus.trim().isEmpty()) {

                                currentStatus = "Pending";
                            }
                %>


                    <tr>

                        <!-- ORDER ID -->

                        <td>
                            <strong>
                                #<%= order.getOrderId() %>
                            </strong>
                        </td>


                        <!-- USER ID -->

                        <td>
                            <%= order.getUserId() %>
                        </td>


                        <!-- TOTAL -->

                        <td>

                            <strong>
                                ৳ <%= String.format("%.2f",
                                        order.getTotal()) %>
                            </strong>

                        </td>


                        <!-- PAYMENT METHOD -->

                        <td>

                            <%
                                if (order.getPaymentMethod() != null &&
                                    !order.getPaymentMethod().trim().isEmpty()) {
                            %>

                                <%= order.getPaymentMethod() %>

                            <%
                                } else {
                            %>

                                N/A

                            <%
                                }
                            %>

                        </td>


                        <!-- PAYMENT STATUS -->

                        <td>

                            <%
                                String paymentStatus =
                                    order.getPaymentStatus();

                                if (paymentStatus != null &&
                                    "Paid".equalsIgnoreCase(paymentStatus)) {
                            %>

                                <span class="badge bg-success">
                                    Paid
                                </span>

                            <%
                                } else {
                            %>

                                <span class="badge bg-warning text-dark">

                                    <%
                                        if (paymentStatus != null &&
                                            !paymentStatus.trim().isEmpty()) {
                                    %>

                                        <%= paymentStatus %>

                                    <%
                                        } else {
                                    %>

                                        Pending

                                    <%
                                        }
                                    %>

                                </span>

                            <%
                                }
                            %>

                        </td>


                        <!-- ORDER DATE -->

                        <td>

                            <%
                                if (order.getOrderDate() != null) {
                            %>

                                <%= order.getOrderDate() %>

                            <%
                                } else {
                            %>

                                N/A

                            <%
                                }
                            %>

                        </td>


                        <!-- CURRENT STATUS -->

                        <td>

                            <%
                                if ("Pending".equalsIgnoreCase(currentStatus)) {
                            %>

                                <span class="badge bg-warning text-dark">
                                    Pending
                                </span>

                            <%
                                } else if
                                    ("Accepted".equalsIgnoreCase(currentStatus)) {
                            %>

                                <span class="badge bg-primary">
                                    Accepted
                                </span>

                            <%
                                } else if
                                    ("Preparing".equalsIgnoreCase(currentStatus)) {
                            %>

                                <span class="badge bg-info text-dark">
                                    Preparing
                                </span>

                            <%
                                } else if
                                    ("Completed".equalsIgnoreCase(currentStatus)) {
                            %>

                                <span class="badge bg-success">
                                    Completed
                                </span>

                            <%
                                } else if
                                    ("Cancelled".equalsIgnoreCase(currentStatus)) {
                            %>

                                <span class="badge bg-danger">
                                    Cancelled
                                </span>

                            <%
                                } else {
                            %>

                                <span class="badge bg-secondary">
                                    <%= currentStatus %>
                                </span>

                            <%
                                }
                            %>

                        </td>


                        <!-- ================================================= -->
                        <!-- UPDATE STATUS -->
                        <!-- ================================================= -->

                        <td>

                            <form
                                action="<%= request.getContextPath() %>/UpdateOrderStatusServlet"
                                method="post"
                                class="status-form">

                                <!-- IMPORTANT: order_id -->

                                <input
                                    type="hidden"
                                    name="order_id"
                                    value="<%= order.getOrderId() %>">


                                <select
                                    name="status"
                                    class="form-select form-select-sm"
                                    onchange="this.form.submit()">


                                    <!-- PENDING -->

                                    <option
                                        value="Pending"
                                        <%= "Pending".equalsIgnoreCase(currentStatus)
                                            ? "selected" : "" %>>

                                        Pending

                                    </option>


                                    <!-- ACCEPTED -->

                                    <option
                                        value="Accepted"
                                        <%= "Accepted".equalsIgnoreCase(currentStatus)
                                            ? "selected" : "" %>>

                                        Accepted

                                    </option>


                                    <!-- PREPARING -->

                                    <option
                                        value="Preparing"
                                        <%= "Preparing".equalsIgnoreCase(currentStatus)
                                            ? "selected" : "" %>>

                                        Preparing

                                    </option>


                                    <!-- COMPLETED -->

                                    <option
                                        value="Completed"
                                        <%= "Completed".equalsIgnoreCase(currentStatus)
                                            ? "selected" : "" %>>

                                        Completed

                                    </option>


                                    <!-- CANCELLED -->

                                    <option
                                        value="Cancelled"
                                        <%= "Cancelled".equalsIgnoreCase(currentStatus)
                                            ? "selected" : "" %>>

                                        Cancelled

                                    </option>

                                </select>

                            </form>

                        </td>

                    </tr>


                <%
                        }

                    } else {
                %>


                    <!-- ================================================= -->
                    <!-- NO ORDERS -->
                    <!-- ================================================= -->

                    <tr>

                        <td colspan="8">

                            <div class="empty-box">

                                <i class="fa-solid fa-receipt"></i>

                                <h4>
                                    No Orders Available
                                </h4>

                                <p class="text-muted">
                                    Customer orders will appear here.
                                </p>

                            </div>

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


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>