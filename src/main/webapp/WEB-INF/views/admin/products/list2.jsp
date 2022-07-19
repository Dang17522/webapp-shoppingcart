<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<style>
 

        .pricing .card {
            border: none;
            transition: all 0.2s;
            box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
        }

       

        

        /* Hover Effects on Card */

        @media (min-width: 992px) {
            .pricing .card:hover {
                margin-top: -.25rem;
                margin-bottom: .25rem;
                box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.3);
            }

            
        }
</style>
<body>
	<div class="row">
				<div class="col-5">
					<form action="/products/home" method="get">
						<div class="form-inline mt-2 ml-3">
							<label for="name" style="margin-right: 4px">Name</label> <input
								type="text" class="form-control" name="name" id="name"
								aria-describedby="helpId" placeholder="Name">
							<button class="btn btn-outline-primary ml-2">Search</button>



						</div>
					</form>
				</div>
				<div class="col-4 mt-2">
					<form class="d-flex justify-content-around"
						action="/products/search1" method="post">



						<div class="form-group col-md-4">
							<select id="inputState" name="min" onchange="this.form.submit()"
								style="width: 200px" class="form-control">
								<option value="1">All</option>
								<option value="2">100 - 200k</option>
								<option value="3">200 - 300k</option>
								<option value="4">Trên 500k</option>
								<option value="5">Dưới 100k</option>
							</select>
						</div>
						</li>
					</form>
				</div>
				<div class="col-1">
					<form class="d-flex justify-content-around mt-2"
						action="/products/search2" method="post">
						<div class="form-group col-md-4">
							<select name="type1" onchange="this.form.submit()"
								class="form-control" style="width: 200px">
								<option>Type</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
							</select>
						</div>
					</form>
				</div>
			</div>
	
	<div style="background-color: #ece5da; text-align: center;">
		<h2>Sản Phẩm</h2>
	</div>
	<section class="row" style="background-color: #FFEFD5; margin-left: 1px; margin-right: 1px">
		<article class="pricing col-9">
			<div class="row p-2">
				<c:forEach var="item" items="${items}">
					<div class="col-4 mt-2">

						<div class="card" style="width: 15rem;">
							<a href="/products/edit/${item.productid}"
								style="padding: 5px"> <img src="/images/${item.image}"
								class="card-img-top" alt="..." height="250px">
								<div class="card-body">
									<h5 class="card-title" style="text-align: center;">${item.name}</h5>
									<p class="card-text"
										style="text-align: center; font-size: 20px; color: red;">
										${item.unitprice} $</p>
									<a href="/products/addcart2/${item.productid}" class="btn btn-primary" style="margin-left: 35px;">Đặt
										hàng ngay</a> 
										 <a
										href="/products/addcart/${item.productid}"
										type="button" class="btn btn-outline-success mt-2"
										style="margin-left: 43px"> Thêm vào giỏ</a>
						</div>
						</a>
					</div>
			</div>




			</c:forEach>




			</div>
		</article>
		<aside class="col mt-3 mr-2" style="margin-right: 0px">
			<div class="accordion" id="accordionExample">
				<div class="card">
					<div class="card-header" id="headingOne">
						<h2 class="mb-0">
							<button class="btn btn-link btn-block text-left" type="button"
								data-toggle="collapse" data-target="#collapseOne"
								aria-expanded="true" aria-controls="collapseOne">Danh sách sản phẩm</button>
						</h2>
					</div>

					<div id="collapseOne" class="collapse show"
						aria-labelledby="headingOne" data-parent="#accordionExample">
						<div class="card-body">
							<c:forEach var="product" items="${items}">
								<ul style="list-style-type: none; text-align: left;">
									<a href="/products/edit/${product.productid}">${product.name}</a>
									<hr>
								</ul>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingTwo">
						<h2 class="mb-0">
							<button class="btn btn-link btn-block text-left collapsed"
								type="button" data-toggle="collapse" data-target="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo">Sản
								phẩm giảm giá</button>
						</h2>
					</div>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
						data-parent="#accordionExample">
						<div class="card-body">
							<ul style="list-style-type: none;">
								<a href="#">Mô hình nhân vật kirito</a>
								<hr>
								<a href="#">Mô hình Luffy gear 4 – one piece</a>
							</ul>
						</div>
					</div>
				</div>

			</div>
		</aside>
	</section>
	<form action="/products/home" method="get" >
		<br />
		<div class="row mt-4" style="margin-left: 20px; background-color: #FAFAD2; height: 60px">

			<button class="btn btn-outline-success" name="page" value="1"
				onchange="this.form.submit()"
				style="width: 60px; margin-left: 270px; height: 40px; margin-top: 12px"><<</button>

			<button class="btn btn-outline-danger" name="page"
				value="${productpage.number - 0}"
				style="width: 60px; margin-left: 20px;height: 40px; margin-top: 12px" onchange="this.form.submit()"><</button>

			<button class="btn btn-outline-warning" name="page"
				style="width: 60px; margin-left: 20px;height: 40px; margin-top: 12px" 
				value="${productpage.number + 2}" onchange="this.form.submit()">></button>

			<button class="btn btn-outline-info" name="page"
				style="width: 60px; margin-left: 20px;height: 40px; margin-top: 12px"
				value="${productpage.totalPages}" onchange="this.form.submit()">>></button>

			<!-- <div class="float-right ml-5">
				<a class="btn btn-outline-light" href="/admin/products/add"
					style="color: blue">Add Product</a>
			</div> -->
		</div>
	</form>
	
</body>
</html>