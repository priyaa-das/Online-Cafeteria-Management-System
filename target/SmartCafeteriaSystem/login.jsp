<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>User Login | QuickBite</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <link rel="stylesheet" href="style.css">

</head>

<body class="bg-light">

<div class="container">

    <div class="row justify-content-center align-items-center vh-100">

        <div class="col-md-5">

            <div class="card shadow-lg border-0 rounded-4">

                <div class="card-body p-5">

                    <div class="text-center mb-4">

                        <i class="fa-solid fa-user fa-4x text-success"></i>

                        <h2 class="mt-3">User Login</h2>

                        <p class="text-muted">
                            Login to your QuickBite Account
                        </p>

                    </div>

                    <!-- Success Message -->

                    <%
                        String success = request.getParameter("success");

                        if(success != null){
                    %>

                    <div class="alert alert-success text-center">

                        Registration Successful! Please Login.

                    </div>

                    <%
                        }
                    %>

                    <!-- Error Message -->

                    <%
                        String error = request.getParameter("error");

                        if(error != null){
                    %>

                    <div class="alert alert-danger text-center">

                        Invalid Email or Password!

                    </div>

                    <%
                        }
                    %>

                    <!-- Login Form -->

                    <form action="LoginServlet" method="post">

                        <div class="mb-3">

                            <label class="form-label">
                                Email
                            </label>

                            <input
                                type="email"
                                name="email"
                                class="form-control"
                                placeholder="Enter Email"
                                required>

                        </div>

                        <div class="mb-4">

                            <label class="form-label">
                                Password
                            </label>

                            <input
                                type="password"
                                name="password"
                                class="form-control"
                                placeholder="Enter Password"
                                required>

                        </div>

                        <button
                            type="submit"
                            class="btn btn-success w-100">

                            Login

                        </button>

                    </form>

                    <div class="text-center mt-3">

                        <a href="register.jsp">

                            Don't have an account? Sign Up

                        </a>

                    </div>

                    <div class="text-center mt-3">

                        <a href="index.html"
                           class="btn btn-outline-success w-100">

                            <i class="fa-solid fa-house"></i>

                            Back to Home

                        </a>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>