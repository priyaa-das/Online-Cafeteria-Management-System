<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <title>
        Admin Login
    </title>

    <link rel="stylesheet"
          href="style.css">

</head>

<body>

    <!-- Admin Login Container -->
    <div class="login-container">

        <!-- Heading -->
        <h1>
            Admin Login
        </h1>

        <!-- Description -->
        <p>
            Login to manage cafeteria system.
        </p>

        <!-- Login Form -->
        <form>

            <!-- Username -->
            <input type="text"
                   placeholder="Enter Admin Username">

            <!-- Password -->
            <input type="password"
                   placeholder="Enter Password">

            <!-- Login Button -->
            <a href="dashboard.jsp">

                <button type="button">

                    Login

                </button>

            </a>

        </form>

        <!-- Back Button -->
        <a href="index.html">

            <button class="back-btn"
                    type="button">

                Back To Home

            </button>

        </a>

    </div>

</body>
</html>