<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("role") == null ||
        !"admin".equals(session.getAttribute("role"))) {

        response.sendRedirect("adminLogin.jsp");
        return;
    }

    Double totalSales =
        (Double) request.getAttribute("totalSales");

    Integer totalOrders =
        (Integer) request.getAttribute("totalOrders");

    Integer completedOrders =
        (Integer) request.getAttribute("completedOrders");

    String dateLabels =
        (String) request.getAttribute("dateLabels");

    String dateValues =
        (String) request.getAttribute("dateValues");

    Integer pending =
        (Integer) request.getAttribute("pending");

    Integer accepted =
        (Integer) request.getAttribute("accepted");

    Integer preparing =
        (Integer) request.getAttribute("preparing");

    Integer completed =
        (Integer) request.getAttribute("completed");

    Integer cancelled =
        (Integer) request.getAttribute("cancelled");

    Integer cash =
        (Integer) request.getAttribute("cash");

    Integer online =
        (Integer) request.getAttribute("online");

    if (totalSales == null) totalSales = 0.0;
    if (totalOrders == null) totalOrders = 0;
    if (completedOrders == null) completedOrders = 0;

    if (dateLabels == null) dateLabels = "";
    if (dateValues == null) dateValues = "";

    if (pending == null) pending = 0;
    if (accepted == null) accepted = 0;
    if (preparing == null) preparing = 0;
    if (completed == null) completed = 0;
    if (cancelled == null) cancelled = 0;

    if (cash == null) cash = 0;
    if (online == null) online = 0;
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Sales Report | QuickBite</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>

* {
    box-sizing: border-box;
}

body {
    margin: 0;
    background: #f4f7fb;
    font-family: Arial, sans-serif;
}

/* Sidebar */

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
}

.sidebar a:hover {

    background: white;

    color: #198754;
}

.sidebar i {

    width: 25px;

    margin-right: 8px;
}

/* Main */

.main {

    margin-left: 260px;

    padding: 40px;
}

/* Header */

.header {

    background: white;

    padding: 25px;

    border-radius: 15px;

    margin-bottom: 25px;

    box-shadow:
        0 5px 20px rgba(0,0,0,.07);
}

/* Summary cards */

.summary-card {

    background: white;

    padding: 25px;

    border-radius: 15px;

    box-shadow:
        0 5px 20px rgba(0,0,0,.07);

    text-align: center;
}

.summary-icon {

    width: 60px;
    height: 60px;

    border-radius: 50%;

    display: flex;

    align-items: center;

    justify-content: center;

    margin: auto;

    font-size: 25px;

    color: white;
}

/* Graph cards */

.graph-card {

    background: white;

    padding: 25px;

    border-radius: 15px;

    box-shadow:
        0 5px 20px rgba(0,0,0,.07);

    margin-top: 25px;
}

.graph-container {

    position: relative;

    height: 350px;
}

</style>

</head>

<body>


<!-- SIDEBAR -->

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

    <a href="<%=request.getContextPath()%>/ManageOrdersServlet">

        <i class="fa-solid fa-receipt"></i>

        Orders

    </a>

    <a href="manageUsers.jsp">

        <i class="fa-solid fa-users"></i>

        Users

    </a>

    <a href="<%=request.getContextPath()%>/SalesReportServlet">

        <i class="fa-solid fa-chart-line"></i>

        Sales Report

    </a>

    <a href="<%=request.getContextPath()%>/LogoutServlet">

        <i class="fa-solid fa-right-from-bracket"></i>

        Logout

    </a>

</div>


<!-- MAIN -->

<div class="main">


    <!-- HEADER -->

    <div class="header">

        <h2>

            <i class="fa-solid fa-chart-line text-success me-2"></i>

            Sales Report

        </h2>

        <p class="text-muted mb-0">

            Quick overview of QuickBite sales and orders.

        </p>

    </div>


    <!-- SUMMARY -->

    <div class="row g-4">


        <!-- Sales -->

        <div class="col-md-4">

            <div class="summary-card">

                <div class="summary-icon bg-success mb-3">

                    <i class="fa-solid fa-money-bill-wave"></i>

                </div>

                <h6 class="text-muted">

                    Total Sales

                </h6>

                <h2 class="fw-bold text-success">

                    ৳ <%=String.format("%.2f", totalSales)%>

                </h2>

            </div>

        </div>


        <!-- Orders -->

        <div class="col-md-4">

            <div class="summary-card">

                <div class="summary-icon bg-primary mb-3">

                    <i class="fa-solid fa-receipt"></i>

                </div>

                <h6 class="text-muted">

                    Total Orders

                </h6>

                <h2 class="fw-bold text-primary">

                    <%=totalOrders%>

                </h2>

            </div>

        </div>


        <!-- Completed -->

        <div class="col-md-4">

            <div class="summary-card">

                <div class="summary-icon bg-warning mb-3">

                    <i class="fa-solid fa-check"></i>

                </div>

                <h6 class="text-muted">

                    Completed Orders

                </h6>

                <h2 class="fw-bold text-warning">

                    <%=completedOrders%>

                </h2>

            </div>

        </div>

    </div>


    <!-- GRAPH 1 -->

    <div class="graph-card">

        <h5 class="fw-bold mb-4">

            Sales by Date

        </h5>

        <div class="graph-container">

            <canvas id="salesChart"></canvas>

        </div>

    </div>


    <!-- GRAPH 2 -->

    <div class="graph-card">

        <h5 class="fw-bold mb-4">

            Orders by Status

        </h5>

        <div class="graph-container">

            <canvas id="statusChart"></canvas>

        </div>

    </div>


    <!-- GRAPH 3 -->

    <div class="graph-card">

        <h5 class="fw-bold mb-4">

            Payment Methods

        </h5>

        <div class="graph-container">

            <canvas id="paymentChart"></canvas>

        </div>

    </div>


</div>


<script>

/* ================================
   GRAPH 1 - SALES BY DATE
================================ */

const salesLabels = [
    <%=dateLabels%>
];

const salesValues = [
    <%=dateValues%>
];

new Chart(
    document.getElementById("salesChart"),
    {

        type: "line",

        data: {

            labels: salesLabels,

            datasets: [

                {

                    label: "Sales (৳)",

                    data: salesValues,

                    borderWidth: 3,

                    tension: 0.3,

                    fill: false

                }

            ]
        },

        options: {

            responsive: true,

            maintainAspectRatio: false,

            scales: {

                y: {

                    beginAtZero: true

                }

            }

        }

    }
);


/* ================================
   GRAPH 2 - ORDER STATUS
================================ */

new Chart(

    document.getElementById("statusChart"),

    {

        type: "bar",

        data: {

            labels: [

                "Pending",

                "Accepted",

                "Preparing",

                "Completed",

                "Cancelled"

            ],

            datasets: [

                {

                    label: "Orders",

                    data: [

                        <%=pending%>,

                        <%=accepted%>,

                        <%=preparing%>,

                        <%=completed%>,

                        <%=cancelled%>

                    ],

                    borderWidth: 1

                }

            ]

        },

        options: {

            responsive: true,

            maintainAspectRatio: false,

            scales: {

                y: {

                    beginAtZero: true,

                    ticks: {

                        stepSize: 1

                    }

                }

            }

        }

    }

);


/* ================================
   GRAPH 3 - PAYMENT METHOD
================================ */

new Chart(

    document.getElementById("paymentChart"),

    {

        type: "doughnut",

        data: {

            labels: [

                "Cash",

                "Online"

            ],

            datasets: [

                {

                    data: [

                        <%=cash%>,

                        <%=online%>

                    ],

                    borderWidth: 1

                }

            ]

        },

        options: {

            responsive: true,

            maintainAspectRatio: false

        }

    }

);

</script>


</body>

</html>