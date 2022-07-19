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
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
        integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<base href="${pageContext.servletContext.contextPath}/" />
	
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
<!--Liên kết với fontawesome-->
<link rel="stylesheet" href="../fontawesome-free-5.15.4-web/css/all.css">


<!-- đuờng dẫn cơ sở để mọi đường link trong trang wed có thể tham chiếu tới -->
<base href="/Assignment_java5_shop/" />

<link rel="icon" href="images/sha.png" type="image/x-icon">
<style>
@-webkit-keyframes my {
      0% {
        color: #F8CD0A;
      }

      50% {
        color: #fff;
      }

      100% {
        color: #F8CD0A;
      }
    }

    @-moz-keyframes my {
      0% {
        color: #F8CD0A;
      }

      50% {
        color: #fff;
      }

      100% {
        color: #F8CD0A;
      }
    }

    @-o-keyframes my {
      0% {
        color: #F8CD0A;
      }

      50% {
        color: #fff;
      }

      100% {
        color: #F8CD0A;
      }
    }

    @keyframes my {
      0% {
        color: #000000;
      }

      50% {
        color: #FFE4B5	;
      }

      100% {
        color: #000000;
      }
    }

    .test {
      font-size: 24px;
      font-weight: bold;
      -webkit-animation: my 800ms infinite;
      -moz-animation: my 800ms infinite;
      -o-animation: my 800ms infinite;
      animation: my 800ms infinite;
    }
</style>
</head>

<body>
	<div class="container"
		style="margin-top: 1px;">
		<header class="row text-center"> </header>
		<section class="row">
			<div class="col mt-4">
				<div class="card">
					<p class="test" style="text-align: center; background-color: #7CFC00	; border-radius: 90px; margin-top: 10px; margin-left: 20px; margin-right: 20px">list of Accounts</p>
					<div class="card-body">		
						<table class="table table-striped table-inverse" style="">
							<thead class="thead-inverse">
								<tr>
									<th>Username</th>
									<th>Password</th>
									<th>Admin</th>
									<th><a href="admin/accounts/add" class="btn btn-outline-dark">Add Account</a></th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="account" items="${accounts}">
									<td scope="row">${account.username}</td>
									<td>${account.password}</td>
									<td>${account.admin}</td>
									<c:if test="${sessionScope.admin==true}">
									<td>
		
										<a href="/admin/accounts/edit/${account.username}"
										class="btn btn-outline-danger"><i class="fas fa-edit"></i></a>
										
										<a href="/admin/accounts/delete/${account.username}"
										class="btn btn-outline-success"><i class="fas fa-recycle"></i></a>
									</td>
									</c:if>
									
								
							</tbody>
							</c:forEach>
						</table>
					</div>

				</div>

			</div>
		</section>
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