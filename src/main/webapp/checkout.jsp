<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Checkout</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<script>

function paymentOption(){

    var method=document.getElementById("payment").value;

    if(method=="bKash" || method=="Nagad"){

        document.getElementById("trx").style.display="block";

    }else{

        document.getElementById("trx").style.display="none";

    }

}

</script>

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-7">

<div class="card shadow">

<div class="card-header bg-success text-white">

<h3>Checkout</h3>

</div>

<div class="card-body">

<form action="CheckoutServlet" method="post">

<div class="mb-3">

<label>Delivery Address</label>

<textarea
class="form-control"
name="address"
required></textarea>

</div>

<div class="mb-3">

<label>Payment Method</label>

<select
class="form-control"
id="payment"
name="payment"
onchange="paymentOption()">

<option value="Cash">Cash on Delivery</option>

<option value="bKash">bKash</option>

<option value="Nagad">Nagad</option>

</select>

</div>

<div
id="trx"
style="display:none;">

<div class="alert alert-success">

<b>bKash / Nagad Merchant</b>

<br>

01712-345678

</div>

<label>Transaction ID</label>

<input
type="text"
name="trxid"
class="form-control">

</div>

<br>

<button
class="btn btn-success w-100">

Place Order

</button>

</form>

</div>

</div>

</div>

</div>

</div>

</body>

</html>