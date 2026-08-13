<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.quickbite.DBConnection"%>

<%
if(session.getAttribute("userId")==null){
    response.sendRedirect("login.jsp");
    return;
}

int userId=(Integer)session.getAttribute("userId");

String name="";
String email="";
String phone="";
String address="";

Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;

try{

con=DBConnection.getConnection();

ps=con.prepareStatement("SELECT * FROM users WHERE user_id=?");

ps.setInt(1,userId);

rs=ps.executeQuery();

if(rs.next()){

name=rs.getString("full_name");
email=rs.getString("email");
phone=rs.getString("phone");
address=rs.getString("address");

}

}catch(Exception e){

e.printStackTrace();

}
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>My Profile | QuickBite</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

<style>

body{

background:#f5f7fb;

font-family:Poppins,sans-serif;

}

.card{

border:none;

border-radius:18px;

}

.header{

background:#198754;

color:white;

padding:25px;

border-radius:18px 18px 0 0;

}

.form-control{

height:48px;

}

.btn-success{

height:48px;

font-weight:600;

}

</style>

</head>

<body>

<div class="container py-5">

<div class="row justify-content-center">

<div class="col-lg-7">

<div class="card shadow">

<div class="header">

<h2 class="mb-0">

My Profile

</h2>

</div>

<div class="card-body p-4">

<form action="UpdateProfileServlet" method="post">

<div class="mb-3">

<label class="form-label">

Full Name

</label>

<input
type="text"
name="name"
class="form-control"
value="<%=name%>"
required>

</div>

<div class="mb-3">

<label class="form-label">

Email

</label>

<input
type="email"
name="email"
class="form-control"
value="<%=email%>"
required>

</div>

<div class="mb-3">

<label class="form-label">

Phone

</label>

<input
type="text"
name="phone"
class="form-control"
value="<%=phone%>"
required>

</div>

<div class="mb-3">

<label class="form-label">

Address

</label>

<input
type="text"
name="address"
class="form-control"
value="<%=address%>"
required>

</div>

<div class="mb-3">

<label class="form-label">

New Password

</label>

<input
type="password"
name="password"
class="form-control"
placeholder="Leave blank if unchanged">

</div>

<div class="d-grid">

<button
type="submit"
class="btn btn-success">

Save Changes

</button>

</div>

<br>

<div class="text-center">

<a href="dashboard.jsp"
class="btn btn-secondary">

Back Dashboard

</a>

</div>

</form>

</div>

</div>

</div>

</div>

</div>

</body>

</html>