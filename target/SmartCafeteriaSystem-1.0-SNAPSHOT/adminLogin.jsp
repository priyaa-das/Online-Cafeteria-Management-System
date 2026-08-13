<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin Login | QuickBite</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <style>

        *{
            box-sizing:border-box;
            font-family:Arial, sans-serif;
        }

        body{
            margin:0;
            min-height:100vh;
            background:linear-gradient(135deg,#198754,#28a745);
        }

        .login-card{
            border:none;
            border-radius:22px;
        }

        .admin-icon{
            color:#198754;
        }

        .form-control{
            border-radius:12px;
            padding:12px;
        }

        .login-btn{
            border-radius:12px;
            padding:12px;
            font-weight:600;
        }

        .home-btn{
            border-radius:12px;
            padding:11px;
        }

    </style>

</head>

<body>

<div class="container">

    <div class="row justify-content-center align-items-center min-vh-100">

        <div class="col-md-5 col-lg-4">

            <div class="card login-card shadow-lg">

                <div class="card-body p-5">

                    <!-- ICON -->

                    <div class="text-center mb-4">

                        <i class="fa-solid fa-user-shield fa-4x admin-icon"></i>

                        <h2 class="mt-3 fw-bold">
                            Admin Login
                        </h2>

                        <p class="text-muted">
                            Login to QuickBite Admin Panel
                        </p>

                    </div>


                    <!-- LOGIN FORM -->

                    <form action="AdminLoginServlet" method="post">

                        <!-- EMAIL -->

                        <div class="mb-3">

                            <label class="form-label fw-semibold">
                                Admin Email
                            </label>

                            <input
                                type="email"
                                name="email"
                                class="form-control"
                                placeholder="Enter admin email"
                                required>

                        </div>


                        <!-- PASSWORD -->

                        <div class="mb-4">

                            <label class="form-label fw-semibold">
                                Password
                            </label>

                            <input
                                type="password"
                                name="password"
                                class="form-control"
                                placeholder="Enter password"
                                required>

                        </div>


                        <!-- LOGIN BUTTON -->

                        <button
                            type="submit"
                            class="btn btn-success login-btn w-100">

                            <i class="fa-solid fa-right-to-bracket me-2"></i>

                            Login

                        </button>


                        <!-- ERROR MESSAGE -->

                        <%

                            String error = request.getParameter("error");

                            if ("1".equals(error)) {

                        %>

                        <div class="alert alert-danger text-center mt-3">

                            <i class="fa-solid fa-circle-exclamation me-2"></i>

                            Invalid Email or Password!

                        </div>

                        <%

                            }

                        %>


                        <!-- BACK TO HOME -->

                        <div class="text-center mt-4">

                            <a href="index.html"
                               class="btn btn-outline-success home-btn w-100">

                                <i class="fa-solid fa-house me-2"></i>

                                Back to Home

                            </a>

                        </div>

                    </form>

                </div>

            </div>

        </div>

    </div>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>