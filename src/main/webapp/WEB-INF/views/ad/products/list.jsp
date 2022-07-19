<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AniShop</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--Liên kết đến font-awesome-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
	integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<base href="${pageContext.servletContext.contextPath}/" />

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
<!--Liên kết với fontawesome-->
<link rel="stylesheet" href="../fontawesome-free-5.15.4-web/css/all.css">
<link rel="stylesheet" href="/css/h1.css">


<!-- đuờng dẫn cơ sở để mọi đường link trong trang wed có thể tham chiếu tới -->
<base href="/Assignment_java5_shop/" />

<link rel="icon" href="images/sha.png" type="image/x-icon">

<style>
.form-control {
	border-radius: 15px;
	background: rgba(225, 225, 225, 0.4);
}

.container-fuild {
	position: relative;
}

.container-fuild>.videobg>video {
	width: 100%;
	position: absolute;
}

.container-fuild>.container>.row>.col-md-12>.card {
	position: relative;
	margin-top: 100px;
	background: rgba(0, 0, 0, 0.6);
}

.text {
	color: white;
}

.card {
	border-radius: 20px;
}

.form-search {
	padding-left: 750px;
}
    
</style>
</head>

<body>
	<div class="container-fuild">
		<div class="videobg">
			<video src="/videos/659080276.mp4" muted
				loop autoplay></video>
		</div>
		<div class="container">
			 <nav style="margin-top: 80px;">
      <ul class="mcd-menu">
        <li>
          <a href="/home" class="active">
            <i class="fa fa-home"></i>
            <strong>Quản lý</strong>
          </a>
        </li>
        <li>
          <a href="/products/admin/ql" >
            <i class="fa fa-edit"></i>
            <strong>Products</strong>
            <small>AniShop</small>
          </a>
        </li>
        <li>
          <a href="/admin/accounts">
            <i class="fa fa-gift"></i>
            <strong>Accounts</strong>
            <small>AniShop</small>
          </a>
        </li>
        <li>
          <a href="/admin/categories">
            <i class="fa fa-globe"></i>
            <strong>Categories</strong>
            <small>AniShop</small>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fa fa-comments-o"></i>
            <strong>Turnover</strong>
            <small>AniShop</small>
          </a>
        </li>
        <li>
          <a href="/products/home">
            <i class="fa fa-comments-o"></i>
            <strong>Home</strong>
            <small>AniShop</small>
          </a>
        </li>
      </ul>
    </nav>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"
		integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2"
		crossorigin="anonymous">
		
	</script>
	<%--     <c:if test="${not empty page.scriptUrl}"> --%>
	<%--     <jsp:include page="${page.scriptUrl}"></jsp:include>     --%>
	<%--     </c:if> --%>
</body>

</html>
