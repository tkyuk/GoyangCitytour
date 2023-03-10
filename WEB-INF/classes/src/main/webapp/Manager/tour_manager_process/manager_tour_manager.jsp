<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<style type="text/css">

</style>

<title>관리자화면-투어관리</title>
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
				<a href="../dashboard_process/manager_dashboard.jsp" class="logo m-0">고양<span
					class="text-primary">.</span></a>

				<ul
					class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-center">
					<li class="active"><a href="../dashboard_process/manager_dashboard.jsp">dash board</a></li>
					<li><a href="../user_manager_process/manager_member_popup.jsp">회원관리</a></li>
					<li><a href="manager_tour_manager.jsp">투어관리</a></li>
					<li><a href="../reservation_manager_process/manager_reservation.jsp">예약관리</a></li>
					<li><a href="../spot_manager_process/manager_spot_list.jsp">관광지 관리</a></li>
					<li><a href="../review_manager_process/manager_review.jsp">후기관리</a></li>
				</ul>

				<ul
					class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
					<li></li>
					<li style="font-size: 5px; font-weight: bold;"><a
						href="../login_manager/manager_signIn.jsp">로그아웃</a></li>
				</ul>
				
				<a href="#"
					class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none light"
					data-toggle="collapse" data-target="#main-navbar"> <span></span>
				</a>

			</div>
		</div>
	</nav>


	<div class="hero hero-inner">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 mx-auto text-center">
					<div class="intro-wrap">
						<h1 class="mb-0">관리자 화면</h1>
						<!-- <p class="text-white">로그인을 해주세요.</p> -->
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!--  여기사이에 구상하시면 됩니다!!! -->
	
	<!-- 대제목 -->
	<div class="container" style="margin-top: 20px;">
		<img src="../../images/bullet_Tues_sub_style_green.png" alt=image>
		<p
			style="font-size: 20px; font-weight: bold; padding-top: 20px; margin-bottom: 0;">투어 정보 관리</p>
	</div>
	<!-- 대제목 끝 -->

	<!-- 라인 구분 선 -->
	<div class="container">
		<!-- <div class="col-lg-6 text-center"> -->
		<h2 class="section-sub-title text-center mb-3"></h2>
		<!-- </div> -->
	</div>
	<!-- 라인 구분 선 끝-->
	
	<div class="container">
		<form>
			<!-- <div style="font-size: 20px; margin: 50px 0px 10px 0px">투어 정보 관리</div>
			<hr> -->
		
			<div>
				<div style="display: flex; justify-content: end; margin-bottom: 5px; margin-top: 20px;">
					<select>
     					<option value="courseName" selected>코스명</option>
     					<option value="courseNum">코스번호</option>
    				</select>
					<input type="text" placeholder="내용을 입력하세요.">
					<input type="button" value="검색" class="mainBtn">
				</div>
				<table class="member" style="width: 100%">
					<tr>
						<th>코스번호</th>
						<th>코스명</th>
						<th>시간</th>
						<th>요금</th>
						<th></th>
					</tr>
					<tr>
						<td>01</td>
						<td>화요나들이(백제)</td>
						<td>10:00-16:00</td>
						<td>성인: 6,000원<br>기타:4,000원</td>
						<td><input type="button" value="상세보기" class="mainBtn" onclick="location.href='manager_tour_detail.jsp'"/></td>
					</tr>
					<tr>
						<td>02</td>
						<td>수요나들이(행주)</td>
						<td>10:00-16:00</td>
						<td>성인: 6,000원<br>기타:4,000원</td>
						<td><input type="button" value="상세보기" class="mainBtn"/></td>
					</tr>
					<tr>
						<td>03</td>
						<td>목요나들이(일산)</td>
						<td>10:00-16:00</td>
						<td>성인: 6,000원<br>기타:4,000원</td>
						<td><input type="button" value="상세보기" class="mainBtn"/></td>
					</tr>
					<tr>
						<td>04</td>
						<td>금요나들이(고양관광특구)</td>
						<td>10:00-16:00</td>
						<td>성인: 6,000원<br>기타:4,000원</td>
						<td><input type="button" value="상세보기" class="mainBtn"/></td>
					</tr>
					<tr>
						<td>05</td>
						<td>토요나들이(왕릉)</td>
						<td>10:00-16:00</td>
						<td>성인: 6,000원<br>기타:4,000원</td>
						<td><input type="button" value="상세보기" class="mainBtn"/></td>
					</tr>
					<tr>
						<td>06</td>
						<td>일요나들이(패밀리)</td>
						<td>10:00-16:00</td>
						<td>성인: 6,000원<br>기타:4,000원</td>
						<td><input type="button" value="상세보기" class="mainBtn"/></td>
					</tr>
				</table>
			</div>
			
			<div style="display: flex; justify-content: space-between; align-items: center;">
				<div></div>
				<div style="margin: 20px 0px 20px; display: flex; justify-content: center; height: 32px;">
					<input class="pagination" type="button" value="<">
					<input class="pagination pageNow" type="button" value="1">
					<input class="pagination" type="button" value=">">
				</div>
				
				<div>
					총 <span>6</span>건
				</div>
			</div>
			<div style="display: flex; justify-content: end; margin-bottom: 5px; margin-top: 20px;">
			  <input type="button" value="추가하기" class="mainBtn" onclick="location.href='manager_tour_add.jsp'"/>
			</div>
		</form>
	</div>


	<div class="site-footer">
		<div class="inner first">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-4" >
						<div class="widget">
							<p style="font-size: 20px;font-weight: bold; color: red;font-style:inherit;" >매주 월요일은 정기 휴무입니다.</p>
								<p style="font-size: 60px;font-weight: bold;">Goyang Tour</p>
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
							<script>document.write(new Date().getFullYear());</script>
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
