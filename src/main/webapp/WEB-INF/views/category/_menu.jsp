<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">
<head>
<title>Title</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">

		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="/products/home"><td><img img
					src="/images/logo.png" width="70px" height="60px"
					style="border-radius: 20px"></td> Shop</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link"
						href="admin/categories/lh"><i class="bi bi-card-heading"></i>
							Giới thiệu</a></li>

					
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-expanded="false"> <i
							class="bi bi-person-bounding-box"></i> Tài Khoản
					</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="admin/accounts/dk">Đăng kí</a>
							<c:if test="${sessionScope.login!=1}">
								<a class="dropdown-item" href="alogin">Đăng Nhập</a>
							</c:if>
							<c:if test="${sessionScope.login==1}">
								<a class="dropdown-item" href="alogin">Đăng Xuất</a>
							</c:if>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Quên mật khẩu</a> <a
								class="dropdown-item" href="#">Cập nhật tài khoản</a>

						</div></li>
					<li class="nav-item"><a class="nav-link"
						href="/products/cartview"><i class="bi bi-basket2"></i> Giỏ
							hàng</a></li>

					<c:if test="${sessionScope.admin==true}">
						<li class="nav-item"><a class="nav-link" href="/home"><i
								class="bi bi-columns-gap"></i> Manage</a></li>
					</c:if>

				</ul>
			</div>
			<form action="/products/home" method="get">
						<div class="form-inline mt-2 ml-3" >
							<div class="form-group col-md-4">
								<select id="inputState" name="name"
									onchange="this.form.submit()" style="width: 200px; color: #708090	; background-color: #FFF8DC;"; 
									class="form-control">
									<option value="">Sản phẩm</option>
									<option value="">All</option>
									<option value="mô hình">Mô hình</option>
									<option value="poster">Poster</option>

								</select>
							</div>
						</div>
					</form>
			
		</nav>
		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
			integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
			integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
			crossorigin="anonymous"></script>
</body>
</html>