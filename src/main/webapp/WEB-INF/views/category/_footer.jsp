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
	<style>
        .new_footer_area {
            background: #fbfbfd;
        }


        .new_footer_top {
            padding: 120px 0px 270px;
            position: relative;
            overflow-x: hidden;
        }

        .new_footer_area .footer_bottom {
            padding-top: 5px;
            padding-bottom: 50px;
        }

        .footer_bottom {
            font-size: 14px;
            font-weight: 300;
            line-height: 20px;
            color: #7f88a6;
            padding: 27px 0px;
        }

        .new_footer_top .company_widget p {
            font-size: 16px;
            font-weight: 300;
            line-height: 28px;
            color: #6a7695;
            margin-bottom: 20px;
        }

        .new_footer_top .company_widget .f_subscribe_two .btn_get {
            border-width: 1px;
            margin-top: 20px;
        }

        .btn_get_two:hover {
            background: transparent;
            color: #5e2ced;
        }

        .btn_get:hover {
            color: #fff;
            background: #6754e2;
            border-color: #6754e2;
            -webkit-box-shadow: none;
            box-shadow: none;
        }

        a:hover,
        a:focus,
        .btn:hover,
        .btn:focus,
        button:hover,
        button:focus {
            text-decoration: none;
            outline: none;
        }



        .new_footer_top .f_widget.about-widget .f_list li a:hover {
            color: #5e2ced;
        }

        .new_footer_top .f_widget.about-widget .f_list li {
            margin-bottom: 11px;
        }

        .f_widget.about-widget .f_list li:last-child {
            margin-bottom: 0px;
        }

        .f_widget.about-widget .f_list li {
            margin-bottom: 15px;
        }

        .f_widget.about-widget .f_list {
            margin-bottom: 0px;
        }

        .new_footer_top .f_social_icon a {
            width: 44px;
            height: 44px;
            background: transparent;
            border: 1px solid #e2e2eb;
            padding-top:8px;
            font-size: 26px;
        }

        .f_social_icon a {
            width: 46px;
            height: 46px;
            border-radius: 50%;
            font-size: 10px;
            line-height: 45px;
            color: #858da8;
            display: inline-block;
            background: #ebeef5;
            text-align: center;
            -webkit-transition: all 0.2s linear;
            -o-transition: all 0.2s linear;
            transition: all 0.2s linear;
        }

        .ti-facebook:before {
            content: "\e741";
        }

        .ti-twitter-alt:before {
            content: "\e74b";
        }

        .ti-vimeo-alt:before {
            content: "\e74a";
        }

        .ti-pinterest:before {
            content: "\e731";
        }

        .btn_get_two {
            -webkit-box-shadow: none;
            box-shadow: none;
            background: #5e2ced;
            border-color: #5e2ced;
            color: #fff;
        }

        .btn_get_two:hover {
            background: transparent;
            color: #5e2ced;
        }

        .new_footer_top .f_social_icon a:hover {
            background: #5e2ced;
            border-color: #5e2ced;
            color: white;
        }

        .new_footer_top .f_social_icon a+a {
            margin-left: 2px;
        }

        .new_footer_top .f-title {
            margin-bottom: 30px;
            color: #263b5e;
        }

        .f_600 {
            font-weight: 600;
        }

        .f_size_18 {
            font-size: 18px;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            color: #4b505e;
        }

        .new_footer_top .f_widget.about-widget .f_list li a {
            color: #6a7695;
        }


        .new_footer_top .footer_bg {
            position: absolute;
            bottom: 0;
            background: url("http://droitthemes.com/html/saasland/img/seo/footer_bg.png") no-repeat scroll center 0;
            width: 100%;
            height: 266px;
        }

        .new_footer_top .footer_bg .footer_bg_one {
            background: url("https://1.bp.blogspot.com/-mvKUJFGEc-k/XclCOUSvCnI/AAAAAAAAUAE/jnBSf6Fe5_8tjjlKrunLBXwceSNvPcp3wCLcBGAsYHQ/s1600/volks.gif") no-repeat center center;
            width: 330px;
            height: 105px;
            background-size: 100%;
            position: absolute;
            bottom: 0;
            left: 30%;
            -webkit-animation: myfirst 22s linear infinite;
            animation: myfirst 22s linear infinite;
        }

        .new_footer_top .footer_bg .footer_bg_two {
            background: url("https://1.bp.blogspot.com/-hjgfxUW1o1g/Xck--XOdlxI/AAAAAAAAT_4/JWYFJl83usgRFMvRfoKkSDGd--_Sv04UQCLcBGAsYHQ/s1600/cyclist.gif") no-repeat center center;
            width: 88px;
            height: 100px;
            background-size: 100%;
            bottom: 0;
            left: 38%;
            position: absolute;
            -webkit-animation: myfirst 30s linear infinite;
            animation: myfirst 30s linear infinite;
        }



        @-moz-keyframes myfirst {
            0% {
                left: -25%;
            }

            100% {
                left: 100%;
            }
        }

        @-webkit-keyframes myfirst {
            0% {
                left: -25%;
            }

            100% {
                left: 100%;
            }
        }

        @keyframes myfirst {
            0% {
                left: -25%;
            }

            100% {
                left: 100%;
            }
        }
	</style>
</head>
<body>
	<footer class="new_footer_area bg_color">
			<div class="new_footer_top">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 col-md-6">
							<div class="f_widget about-widget pl_70 wow fadeInLeft"
								data-wow-delay="0.4s"
								style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInLeft;">
								<h3 class="f-title f_600 t_color f_size_18">FullName:</h3>
								<ul class="list-unstyled f_list">
									<li><a href="#">Dương Hải Đăng</a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="f_widget about-widget pl_70 wow fadeInLeft"
								data-wow-delay="0.6s"
								style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInLeft;">
								<h3 class="f-title f_600 t_color f_size_18">Email</h3>
								<ul class="list-unstyled f_list">
									<li><a href="#">dangdhps16394@fpt.edu.vn</a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="f_widget social-widget pl_70 wow fadeInLeft"
								data-wow-delay="0.8s"
								style="visibility: visible; animation-delay: 0.8s; animation-name: fadeInLeft;">
								<h3 class="f-title f_600 t_color f_size_18">Team Solutions</h3>
								<div class="f_social_icon">
									<a ><i class="bi bi-facebook"></i></a> <a><i
										class="bi bi-twitter"></i></a> <a><i class="bi bi-youtube"></i></a>
									<a><i class="bi bi-twitter"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="footer_bg">
					<div class="footer_bg_one"></div>
					<div class="footer_bg_two"></div>
				</div>
			</div>
		</footer>
	</div>

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