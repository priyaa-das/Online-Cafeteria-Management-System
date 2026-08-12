<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register | QuickBite</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

    <div class="row justify-content-center">

        <div class="col-md-6">

            <div class="card shadow">

                <div class="card-header text-center bg-success text-white">
                    <h3>Create Account</h3>
                </div>

                <div class="card-body">

                    <form action="RegisterServlet" method="post">

                        <div class="mb-3">
                            <label>Full Name</label>
                            <input type="text" class="form-control" name="fullname" required>
                        </div>

                        <div class="mb-3">
                            <label>Email</label>
                            <input type="email" class="form-control" name="email" required>
                        </div>

                        <div class="mb-3">
                            <label>Phone</label>
                            <input type="text" class="form-control" name="phone" required>
                        </div>
<div class="mb-3">
    <label>Address</label>
    <textarea class="form-control"
              name="address"
              rows="3"
              placeholder="Enter your address"
              required></textarea>
</div>
                        <div class="mb-3">
                            <label>Password</label>
                            <input type="password" class="form-control" name="password" required>
                        </div>

                        <div class="mb-3">
                            <label>Confirm Password</label>
                            <input type="password" class="form-control" name="confirmPassword" required>
                        </div>

                        <button type="submit" class="btn btn-success w-100">
                            Create Account
                        </button>

                    </form>

                </div>

            </div>

        </div>

    </div>

</div>

</body>
</html>