<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.quickbite.model.Food"%>

<%
    if (session.getAttribute("role") == null ||
        !"admin".equals(session.getAttribute("role"))) {

        response.sendRedirect("adminLogin.jsp");
        return;
    }

    ArrayList<Food> foodList =
        (ArrayList<Food>) request.getAttribute("foodList");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Manage Food | QuickBite</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <style>

        body {
            background: #f4f7fb;
        }

        .sidebar {
            position: fixed;
            left: 0;
            top: 0;
            width: 250px;
            height: 100vh;
            background: #198754;
            padding-top: 25px;
        }

        .sidebar h2 {
            color: white;
            text-align: center;
            margin-bottom: 35px;
        }

        .sidebar a {
            display: block;
            color: white;
            text-decoration: none;
            padding: 15px 25px;
        }

        .sidebar a:hover {
            background: white;
            color: #198754;
        }

        .main {
            margin-left: 250px;
            padding: 35px;
        }

        .food-img {
            width: 70px;
            height: 70px;
            object-fit: cover;
            border-radius: 12px;
        }

    </style>

</head>

<body>

<div class="sidebar">

    <h2>QuickBite</h2>

    <a href="AdminDashboardServlet">
        <i class="fa-solid fa-house me-2"></i>
        Dashboard
    </a>

    <a href="ManageFoodServlet">
        <i class="fa-solid fa-burger me-2"></i>
        Manage Food
    </a>

    <a href="manageOrders.jsp">
        <i class="fa-solid fa-receipt me-2"></i>
        Orders
    </a>

    <a href="manageUsers.jsp">
        <i class="fa-solid fa-users me-2"></i>
        Users
    </a>

    <a href="salesReport.jsp">
        <i class="fa-solid fa-chart-line me-2"></i>
        Sales Report
    </a>

    <a href="LogoutServlet">
        <i class="fa-solid fa-right-from-bracket me-2"></i>
        Logout
    </a>

</div>


<div class="main">

    <div class="d-flex justify-content-between align-items-center mb-4">

        <div>

            <h2 class="fw-bold">
                Manage Food
            </h2>

            <p class="text-muted">
                Add and manage cafeteria food items.
            </p>

        </div>

        <button
            class="btn btn-success"
            data-bs-toggle="modal"
            data-bs-target="#addFoodModal">

            <i class="fa-solid fa-plus me-2"></i>
            Add Food

        </button>

    </div>


    <div class="card shadow border-0">

        <div class="card-body">

            <div class="table-responsive">

                <table class="table table-hover align-middle">

                    <thead class="table-success">

                    <tr>

                        <th>Image</th>
                        <th>Name</th>
                        <th>Category</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Status</th>
                        <th>Action</th>

                    </tr>

                    </thead>


                    <tbody>

                    <%
                        if (foodList != null &&
                            !foodList.isEmpty()) {

                            for (Food food : foodList) {
                    %>

                    <tr>

                        <td>

                            <img
                                src="<%= food.getImage() %>"
                                class="food-img"
                                alt="Food">

                        </td>

                        <td>
                            <strong>
                                <%= food.getFoodName() %>
                            </strong>
                        </td>

                        <td>
                            <%= food.getCategory() %>
                        </td>

                        <td>
                            <%= food.getDescription() %>
                        </td>

                        <td>
                            ৳ <%= food.getPrice() %>
                        </td>

                        <td>

                            <% if ("Available".equalsIgnoreCase(food.getStatus())) { %>

                                <span class="badge bg-success">
                                    Available
                                </span>

                            <% } else { %>

                                <span class="badge bg-secondary">
                                    <%= food.getStatus() %>
                                </span>

                            <% } %>

                        </td>

                        <td>

                            <a
                                href="DeleteFoodServlet?id=<%= food.getFoodId() %>"
                                class="btn btn-sm btn-danger"
                                onclick="return confirm('Are you sure you want to delete this food?');">

                                <i class="fa-solid fa-trash"></i>

                            </a>

                        </td>

                    </tr>

                    <%
                            }

                        } else {
                    %>

                    <tr>

                        <td colspan="7"
                            class="text-center py-5">

                            <i class="fa-solid fa-utensils fa-3x text-muted mb-3"></i>

                            <h5>
                                No Food Available
                            </h5>

                            <p class="text-muted">
                                Add your first food item.
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

    </div>

</div>


<!-- Add Food Modal -->

<div class="modal fade"
     id="addFoodModal"
     tabindex="-1">

    <div class="modal-dialog modal-lg">

        <div class="modal-content">

            <div class="modal-header bg-success text-white">

                <h5 class="modal-title">
                    <i class="fa-solid fa-plus me-2"></i>
                    Add New Food
                </h5>

                <button
                    type="button"
                    class="btn-close btn-close-white"
                    data-bs-dismiss="modal">
                </button>

            </div>


            <form action="AddFoodServlet"
                  method="post">

                <div class="modal-body">

                    <div class="row">

                        <div class="col-md-6 mb-3">

                            <label class="form-label">
                                Food Name
                            </label>

                            <input
                                type="text"
                                name="food_name"
                                class="form-control"
                                required>

                        </div>


                        <div class="col-md-6 mb-3">

                            <label class="form-label">
                                Category
                            </label>

                            <select
                                name="category"
                                class="form-select"
                                required>

                                <option value="">
                                    Select Category
                                </option>

                                <option value="Burger">
                                    Burger
                                </option>

                                <option value="Pizza">
                                    Pizza
                                </option>

                                <option value="Pasta">
                                    Pasta
                                </option>

                                <option value="Rice">
                                    Rice
                                </option>

                                <option value="Chicken">
                                    Chicken
                                </option>

                                <option value="Dessert">
                                    Dessert
                                </option>

                                <option value="Beverage">
                                    Beverage
                                </option>

                            </select>

                        </div>


                        <div class="col-md-12 mb-3">

                            <label class="form-label">
                                Description
                            </label>

                            <textarea
                                name="description"
                                class="form-control"
                                rows="3"
                                required></textarea>

                        </div>


                        <div class="col-md-6 mb-3">

                            <label class="form-label">
                                Price
                            </label>

                            <input
                                type="number"
                                name="price"
                                class="form-control"
                                step="0.01"
                                min="0"
                                required>

                        </div>


                        <div class="col-md-6 mb-3">

                            <label class="form-label">
                                Status
                            </label>

                            <select
                                name="status"
                                class="form-select"
                                required>

                                <option value="Available">
                                    Available
                                </option>

                                <option value="Unavailable">
                                    Unavailable
                                </option>

                            </select>

                        </div>


                        <div class="col-md-12 mb-3">

                            <label class="form-label">
                                Image URL
                            </label>

                            <input
                                type="url"
                                name="image"
                                class="form-control"
                                placeholder="https://..."
                                required>

                        </div>

                    </div>

                </div>


                <div class="modal-footer">

                    <button
                        type="button"
                        class="btn btn-secondary"
                        data-bs-dismiss="modal">

                        Cancel

                    </button>

                    <button
                        type="submit"
                        class="btn btn-success">

                        <i class="fa-solid fa-plus me-2"></i>
                        Add Food

                    </button>

                </div>

            </form>

        </div>

    </div>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>