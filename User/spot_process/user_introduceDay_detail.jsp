<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- /*
* Template Name: Tour
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="favicon.png">

<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/owl.carousel.min.css">
<link rel="stylesheet" href="../../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../../css/jquery.fancybox.min.css">
<link rel="stylesheet" href="../../fonts/icomoon/style.css">
<link rel="stylesheet" href="../../fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="../../css/daterangepicker.css">
<link rel="stylesheet" href="../../css/aos.css">
<link rel="stylesheet" href="../../css/style.css">

<title>고양 시티투어</title>
</head>

<body>


	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>
	<nav class="site-nav">
		<div class="container">
			<div class="site-navigation">
				<a href="../main/index.jsp" class="logo m-0">고양<span
					class="text-primary">.</span></a>

				<ul
					class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-center">
					<li class="active"><a href="../main/index.jsp">home</a></li>
					<li><a
						href="../reservation_process/user_reservation_course.jsp">투어예약</a></li>
					<li><a href="user_introduceTour.jsp">관광지소개</a></li>
					<li><a href="../review_process/user_review.jsp">관광지후기</a></li>
					<li><a href="../mypage_process/user_mypage_inner.jsp">마이페이지</a></li>
				</ul>
				<ul
					class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
					<li></li>
					<li style="font-size: 5px; font-weight: bold;"><a
						href="../login_process/user_signIn.jsp">로그인</a></li>
					<li style="font-size: 5px; font-weight: bold;"><a
						href="../login_process/user_signUp.jsp">회원가입</a></li>
				</ul>

				<a href="#"
					class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none light"
					data-toggle="collapse" data-target="#main-navbar"> <span></span>
				</a>

			</div>
		</div>
	</nav>

	<div class="hero">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 mx-auto text-center">
					<div class="intro-wrap">
						<h1 class="mb-0">중남미문화원</h1>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- 상단 투어 메뉴 -->
	<div class="untree_co-section">
		<ul class="list_sub_menu">
			<li class="_sub"><a href="user_introduceTour.jsp"> <span>시티
						투어 코스</span>
			</a></li>
			<li class="_sub"><a href="user_introduceDay.jsp"> <span>화요나들이</span>
			</a></li>
			<li class="_sub"><a href="user_introduceDay.jsp"> <span>수요나들이</span>
			</a></li>
			<li class="_sub"><a href="user_introduceDay.jsp"> <span
					class="menu_text">목요나들이</span>
			</a></li>
			<li class="_sub"><a href="user_introduceDay.jsp"> <span
					class="menu_text">금요나들이</span>
			</a></li>
			<li class="_sub"><a href="user_introduceDay.jsp"> <span>토요나들이</span>
			</a></li>
			<li class="_sub"><a href="user_introduceDay.jsp"> <span>일요나들이</span>
			</a></li>
		</ul>
	</div>
	<!-- 상단 투어 메뉴 끝 -->

	<!-- 대제목 -->
	<div class="container">
		<img src="../../images/bullet_Tues_sub_style_blue.png" alt=image>
		<p
			style="font-size: 20px; font-weight: bold; padding-top: 20px; margin-bottom: 0;">화요나들이
			(벽제)</p>
	</div>
	<!-- 대제목 끝 -->

	<!-- 라인 구분 선 -->
	<div class="container">
		<!-- <div class="col-lg-6 text-center"> -->
		<h2 class="section-sub-title text-center mb-3"></h2>
		<!-- </div> -->
	</div>
	<!-- 라인 구분 선 -->

	<!-- 소제목 -->
	<div class="container">
		<img src="../../images/bullet_Tues_sub_style_blue.png" alt=image>
		<p>
			<span style="color: #ba202a; font-weight: bold;">화요나들이</span><span>&nbsp;코스안내</span>
		</p>
	</div>
	<!-- 소제목 끝 -->

	<!-- MAP & LIST 영역 -->
	<div class="container">
		<div class="map_wrap">
			<div class="map_tab_wrap"
				style="background: url(../../images/map_tap.png) no-repeat center top;">
				<p class="map_tab_1">
					<a href="user_introduceDay.jsp"
						style="color: #fff; padding-left: 30px; background: transparent;">MAP으로
						보기</a>
				</p>
				<p class="map_tab_2">
					<a href="user_introduceDay_list.jsp"
						style="color: #444; padding-right: 10px; background: transparent;">LIST로
						보기</a>
				</p>
			</div>
			<div>
				<p
					style="font-size: 20px; font-weight: bold; padding: 20px 0 0 0; margin: 0;">중남미문화원
					소개</p>
				<h2 class="section-sub-title text-center mb-3"></h2>
			</div>
			<div
				style="text-align: center; padding-top: 20px; padding-bottom: 20px;">
				<img src="../../images/중남미문화원.jpg" width="300px">
			</div>
			<div style="padding-bottom: 80px;">
				<p style="font-weight: bold; font-size: 16px; text-align: center;">
					중남미문화원</p>
				<p style="font-size: 16px; padding: 0 80px 0 80px;">뼈 끝에 스며들어 가는
					열락의 소리다이것은 피어나기 전인 유소년에게서 구하지 못할 바이며 시들어 가는 노년에게서 구하지 못할 바이며 오직 우리
					청춘에서만 구할 수 있는 것이 다 청춘은 인생의 황금시대다 우리는 이 황금시대의 가치를</p>
			</div>
		</div>
	</div>
	<!-- MAP & LIST 영역 끝 -->

	<div class="site-footer">
		<div class="inner first">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-4">
						<div class="widget">
							<p
								style="font-size: 20px; font-weight: bold; color: red; font-style: inherit;">매주
								월요일은 정기 휴무입니다.</p>
							<p style="font-size: 60px; font-weight: bold;">Goyan Tour</p>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 " style="margin: 0 0 0 auto">
						<div class="widget">
							<h3 class="heading">고양시티투어</h3>
							<ul class="list-unstyled quick-info links">
								<li class="email"><a href="#">goyang@com</a></li>
								<li class="phone"><a href="#">010-1234-5678</a></li>
								<li class="address"><a href="#">경기도 고양시 일산동구 장항동</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="inner dark">
			<div class="container">
				<div class="row text-center">
					<div class="col-md-8 mb-3 mb-md-0 mx-auto">
						<p>
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							. All Rights Reserved. &mdash; Designed with love by <a
								href="https://untree.co" class="link-highlight">Untree.co</a>
							<!-- License information: https://untree.co/license/ -->
						</p>
					</div>

				</div>
			</div>
		</div>
	</div>

	<div id="overlayer"></div>
	<div class="loader">
		<div class="spinner-border" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>

	<script src="../../js/jquery-3.4.1.min.js"></script>
	<script src="../../js/popper.min.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<script src="../../js/owl.carousel.min.js"></script>
	<script src="../../js/jquery.animateNumber.min.js"></script>
	<script src="../../js/jquery.waypoints.min.js"></script>
	<script src="../../js/jquery.fancybox.min.js"></script>
	<script src="../../js/aos.js"></script>
	<script src="../../js/moment.min.js"></script>
	<script src="../../js/daterangepicker.js"></script>

	<script src="../../js/typed.js"></script>

	<script src="../../js/custom.js"></script>

</body>

</html>