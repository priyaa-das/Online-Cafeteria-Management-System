<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.quickbite.DBConnection"%>

<%
    // ================= ADMIN SECURITY =================
    if (session.getAttribute("role") == null ||
        !"admin".equalsIgnoreCase(String.valueOf(session.getAttribute("role")))) {

        response.sendRedirect(request.getContextPath() + "/adminLogin.jsp");
        return;
    }

    // ================= USER DATA =================
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    int totalUsers = 0;
    int totalAdmins = 0;
    int totalCustomers = 0;

    String errorMessage = null;

    try {

        con = DBConnection.getConnection();

        // Total users
        String countSql =
            "SELECT COUNT(*) FROM users";

        ps = con.prepareStatement(countSql);
        rs = ps.executeQuery();

        if (rs.next()) {
            totalUsers = rs.getInt(1);
        }

        rs.close();
        ps.close();

        // Total admins
        String adminSql =
            "SELECT COUNT(*) FROM users WHERE role='admin'";

        ps = con.prepareStatement(adminSql);
        rs = ps.executeQuery();

        if (rs.next()) {
            totalAdmins = rs.getInt(1);
        }

        rs.close();
        ps.close();

        // Total customers
        String customerSql =
            "SELECT COUNT(*) FROM users WHERE role='customer'";

        ps = con.prepareStatement(customerSql);
        rs = ps.executeQuery();

        if (rs.next()) {
            totalCustomers = rs.getInt(1);
        }

        rs.close();
        ps.close();

    } catch (Exception e) {

        errorMessage = e.getMessage();

    } finally {

        try {
            if (rs != null) rs.close();
        } catch (Exception e) {}

        try {
            if (ps != null) ps.close();
        } catch (Exception e) {}

        try {
            if (con != null) con.close();
        } catch (Exception e) {}
    }
%>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Manage Users | QuickBite</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <link
        rel="stylesheet"
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
            z-index: 1000;
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

        .header {
            background: white;
            padding: 25px;
            border-radius: 15px;
            margin-bottom: 25px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.07);
        }

        .header h2 {
            font-weight: 700;
        }

        /* ================= STAT CARDS ================= */

        .stat-card {
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.07);
            height: 100%;
        }

        .stat-icon {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-size: 24px;
        }

        .green {
            background: #198754;
        }

        .red {
            background: #dc3545;
        }

        .blue {
            background: #0d6efd;
        }

        /* ================= USER TABLE ================= */

        .users-card {
            background: white;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.07);
        }

        .table thead th {
            background: #d1e7dd;
            color: #222;
            white-space: nowrap;
        }

        .table td,
        .table th {
            padding: 14px;
            vertical-align: middle;
        }

        .table tbody tr:hover {
            background: #f8f9fa;
        }

        .email {
            color: #0d6efd;
        }

        /* ================= RESPONSIVE ================= */

        @media(max-width: 900px) {

            .sidebar {
                width: 210px;
            }

            .main {
                margin-left: 210px;
                padding: 25px;
            }
        }

        @media(max-width: 650px) {

            .sidebar {
                position: relative;
                width: 100%;
                height: auto;
            }

            .main {
                margin-left: 0;
                padding: 20px;
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

    <a href="<%=request.getContextPath()%>/ManageOrdersServlet">
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

    <a href="<%=request.getContextPath()%>/LogoutServlet">
        <i class="fa-solid fa-right-from-bracket"></i>
        Logout
    </a>

</div>


<!-- ================= MAIN ================= -->

<div class="main">


    <!-- HEADER -->

    <div class="header">

        <h2>
            <i class="fa-solid fa-users text-success me-2"></i>
            Manage Users
        </h2>

        <p class="text-muted mb-0">
            View all registered customers and administrators.
        </p>

    </div>


    <!-- ================= STATISTICS ================= -->

    <div class="row g-4 mb-4">


        <!-- TOTAL USERS -->

        <div class="col-md-4">

            <div class="stat-card">

                <div class="d-flex align-items-center">

                    <div class="stat-icon green me-3">

                        <i class="fa-solid fa-users"></i>

                    </div>

                    <div>

                        <p class="text-muted mb-1">
                            Total Users
                        </p>

                        <h2 class="fw-bold mb-0">
                            <%=totalUsers%>
                        </h2>

                    </div>

                </div>

            </div>

        </div>


        <!-- CUSTOMERS -->

        <div class="col-md-4">

            <div class="stat-card">

                <div class="d-flex align-items-center">

                    <div class="stat-icon blue me-3">

                        <i class="fa-solid fa-user"></i>

                    </div>

                    <div>

                        <p class="text-muted mb-1">
                            Customers
                        </p>

                        <h2 class="fw-bold mb-0">
                            <%=totalCustomers%>
                        </h2>

                    </div>

                </div>

            </div>

        </div>


        <!-- ADMINS -->

        <div class="col-md-4">

            <div class="stat-card">

                <div class="d-flex align-items-center">

                    <div class="stat-icon red me-3">

                        <i class="fa-solid fa-user-shield"></i>

                    </div>

                    <div>

                        <p class="text-muted mb-1">
                            Administrators
                        </p>

                        <h2 class="fw-bold mb-0">
                            <%=totalAdmins%>
                        </h2>

                    </div>

                </div>

            </div>

        </div>

    </div>


    <!-- ================= DATABASE ERROR ================= -->

    <% if (errorMessage != null) { %>

        <div class="alert alert-danger">

            <strong>Database Error:</strong>

            <%=errorMessage%>

        </div>

    <% } %>


    <!-- ================= USERS TABLE ================= -->

    <div class="users-card">

        <div class="d-flex justify-content-between align-items-center mb-3">

            <div>

                <h4 class="mb-1">
                    Registered Users
                </h4>

                <p class="text-muted mb-0">
                    All users from the QuickBite system
                </p>

            </div>

            <span class="badge bg-success fs-6">

                <%=totalUsers%> Users

            </span>

        </div>


        <div class="table-responsive">

            <table class="table table-hover">

                <thead>

                    <tr>

                        <th>ID</th>

                        <th>Name</th>

                        <th>Email</th>

                        <th>Phone</th>

                        <th>Address</th>

                        <th>Role</th>

                        <th>Created At</th>

                    </tr>

                </thead>


                <tbody>

                <%

                    Connection tableCon = null;
                    PreparedStatement tablePs = null;
                    ResultSet tableRs = null;

                    boolean hasUsers = false;

                    try {

                        tableCon = DBConnection.getConnection();

                        String sql =
                            "SELECT user_id, full_name, email, phone, " +
                            "address, role, created_at " +
                            "FROM users ORDER BY user_id DESC";

                        tablePs =
                            tableCon.prepareStatement(sql);

                        tableRs =
                            tablePs.executeQuery();


                        while (tableRs.next()) {

                            hasUsers = true;

                %>

                    <tr>

                        <!-- ID -->

                        <td>

                            <strong>
                                #<%=tableRs.getInt("user_id")%>
                            </strong>

                        </td>


                        <!-- NAME -->

                        <td>

                            <strong>
                                <%=tableRs.getString("full_name") != null
                                    ? tableRs.getString("full_name")
                                    : "N/A"%>
                            </strong>

                        </td>


                        <!-- EMAIL -->

                        <td>

                            <span class="email">

                                <%=tableRs.getString("email") != null
                                    ? tableRs.getString("email")
                                    : "N/A"%>

                            </span>

                        </td>


                        <!-- PHONE -->

                        <td>

                            <%=tableRs.getString("phone") != null
                                ? tableRs.getString("phone")
                                : "N/A"%>

                        </td>


                        <!-- ADDRESS -->

                        <td>

                            <%=tableRs.getString("address") != null
                                ? tableRs.getString("address")
                                : "N/A"%>

                        </td>


                        <!-- ROLE -->

                        <td>

                            <%

                                String role =
                                    tableRs.getString("role");

                                if ("admin".equalsIgnoreCase(role)) {

                            %>

                                <span class="badge bg-danger">

                                    <i class="fa-solid fa-user-shield me-1"></i>

                                    Admin

                                </span>

                            <%

                                } else {

                            %>

                                <span class="badge bg-success">

                                    <i class="fa-solid fa-user me-1"></i>

                                    Customer

                                </span>

                            <%

                                }

                            %>

                        </td>


                        <!-- CREATED AT -->

                        <td>

                            <%=tableRs.getTimestamp("created_at") != null
                                ? tableRs.getTimestamp("created_at")
                                : "N/A"%>

                        </td>

                    </tr>


                <%

                        }

                    } catch (Exception e) {

                        if (errorMessage == null) {

                            errorMessage = e.getMessage();

                        }

                %>

                    <tr>

                        <td colspan="7"
                            class="text-center text-danger py-4">

                            Database Error:
                            <%=e.getMessage()%>

                        </td>

                    </tr>

                <%

                    } finally {

                        try {
                            if (tableRs != null)
                                tableRs.close();
                        } catch (Exception e) {}

                        try {
                            if (tablePs != null)
                                tablePs.close();
                        } catch (Exception e) {}

                        try {
                            if (tableCon != null)
                                tableCon.close();
                        } catch (Exception e) {}

                    }


                    if (!hasUsers) {

                %>

                    <tr>

                        <td colspan="7"
                            class="text-center py-5">

                            <i class="fa-solid fa-users fa-3x text-secondary mb-3"></i>

                            <h5>
                                No Users Found
                            </h5>

                            <p class="text-muted mb-0">
                                There are currently no registered users.
                            </p>

                        </td>

                    </tr>

                <%

                    }

                %>

                </tbody>

            </table>

        </div>

    </div>


    <!-- ================= FOOTER ================= -->

    <footer class="mt-5 bg-dark text-white py-4 rounded">

        <div class="text-center">

            <h5 class="fw-bold">
                QuickBite Smart Cafeteria
            </h5>

            <p class="mb-1">
                User Management Panel
            </p>

            <small>
                © 2026 QuickBite. All Rights Reserved.
            </small>

        </div>

    </footer>


</div>


<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>