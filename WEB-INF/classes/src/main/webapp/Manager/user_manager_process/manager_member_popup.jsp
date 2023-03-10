<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="../../favicon.png">

<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="../../css/owl.carousel.min.css">
<link rel="stylesheet" href="../../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../../css/jquery.fancybox.min.css">
<link rel="stylesheet" href="../../fonts/icomoon/style.css">
<link rel="stylesheet" href="../../fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="../../css/daterangepicker.css">
<link rel="stylesheet" href="../../css/aos.css">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<style type="text/css">

</style>

<title>관리자화면-회원관리</title>
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
					<li><a href="manager_member_popup.jsp">회원관리</a></li>
					<li><a href="../tour_manager_process/manager_tour_manager.jsp">투어관리</a></li>
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
						<h1 class="mb-0">회원 관리</h1>
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
			style="font-size: 20px; font-weight: bold; padding-top: 20px; margin-bottom: 0;">회원 관리</p>
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
<!-- 			<div style="font-size: 20px; margin: 50px 0px 20px 0px; border-bottom: 1px solid #333; padding-bottom: 10px;">회원관리</div> -->
		
			<div style="display: flex; justify-content: center; margin: 20px;">
				<div style="display: flex; align-items: center;
				flex-direction: column; background-color: #f0f6f9; width: 350px; height: 150px;">
					<div style="padding-top: 25px; padding-bottom: 15px">총 회원 수</div>
					<div><span style="font-size: 40px; font-weight: bold;">5</span><span style="padding-left: 5px">명</span></div>
				</div>
			</div>
			
			<div>
				<div style="display: flex; justify-content: end; margin-bottom: 5px">
					<select>
						<option>선택</option>
						<option>이름</option>
						<option>아이디</option>
						<option>가입일자</option>
					</select>
					<input type="text" placeholder="내용을 입력해주세요.">
					<input type="button" value="검색" class="mainBtn">
				</div>
				<table class="member" style="width: 100%">
					<tr>
						<th>이름</th>
						<th>아이디</th>
						<th>가입일자</th>
						<th>상세보기</th>
					</tr>
					<tr>
						<td>김소현</td>
						<td>thgus7772</td>
						<td>2022-09-15</td>
						<td><input type="button" value="상세보기" onclick="showPopup(true,'popup')" class="mainBtn button222"></td>
					</tr>
					<tr>
						<td>김소현</td>
						<td>thgus7772</td>
						<td>2022-09-15</td>
						<td><input type="button" value="상세보기" class="mainBtn button222"></td>
					</tr>
					<tr>
						<td>김소현</td>
						<td>thgus7772</td>
						<td>2022-09-15</td>
						<td><input type="button" value="상세보기" class="mainBtn button222"></td>
					</tr>
					<tr>
						<td>김소현</td>
						<td>thgus7772</td>
						<td>2022-09-15</td>
						<td><input type="button" value="상세보기" class="mainBtn button222"></td>
					</tr>
					<tr>
						<td>김소현</td>
						<td>thgus7772</td>
						<td>2022-09-15</td>
						<td><input type="button" value="상세보기" class="mainBtn button222"></td>
					</tr>
					<tr>
						<td>김소현</td>
						<td>thgus7772</td>
						<td>2022-09-15</td>
						<td><input type="button" value="상세보기" class="mainBtn button222"></td>
					</tr>
				</table>
			</div>
			
			<div style="margin: 20px 0px 20px; display: flex; justify-content: center; width: 100%; height: 32px;">
				<input class="pagination" type="button" value="<">
				<input class="pagination pageNow" type="button" value="1">
				<input class="pagination" type="button" value=">">
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
	
	<!-- 팝업창 : menager_member_detail -->
	<div id="popup" class="hide popup">
	  <div class="content">
	      <div style="width: 800px;">
			<div style="font-weight: bold; font-size: 15px; width: 783px; height: 40px; padding-left: 15px;
			display: flex; align-items: center; background-color: #f0f6f9; border: 1px solid #ddd; margin-bottom: 5px">회원 상세</div>
			
			<div style="width: 800px">
				<table class="member" style="width: 100%">
					<tr>
						<th>이름</th>
						<td>김도희</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>irrooee@mail.com</td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>doheekim</td>
					</tr>
					<tr>
						<th>가입일자</th>
						<td>2022-09-09</td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td>010-1234-5678</td>
					</tr>
					<tr>
						<th>우편번호</th>
						<td>12345</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>서울특별시 강남구 역삼동</td>
					</tr>
					<tr>
						<th>관심코스</th>
						<td>화요나들이</td>
					</tr>
				</table>
			</div>
			
			<div style="display: flex; align-items: center; justify-content: center; margin-top: 10px;">
				<input type="button" value="확인" class="mainBtn" onclick="showPopup(true,'popup2')">
				<input type="button" value="삭제" class="mainBtn" onclick="closePopup('popup')">
			</div>
			</div>
	  </div>
	</div>
	
	<!-- 팝업창 : manager_member_delete -->
	<div id="popup2" class="hide popup">
		<div class="content">
			<div style="width: 412px;">
				<div style="font-size: 10px; width: 400px; height: 30px; padding-left: 10px;
				display: flex; align-items: center; background-color: #f0f6f9; border: 1px solid #ddd; margin-bottom: 5px">회원 강제탈퇴 확인</div>
				
				<div style="background-color: #f0f6f9;">
					<div style="font-size: 16px; display: flex; justify-content: center; 
					align-items: center; height: 70px ;background-color: #f0f6f9;">해당 회원을 강제탈퇴 하시겠습니까?</div>
					
					<div style="display: flex; align-items: center; justify-content: center; padding-bottom: 10px;">
						<input type="button" value="삭제" class="mainBtn" onclick="showPopup(true,'popup3')">
						<input type="button" value="취소" class="mainBtn" onclick="closePopup('popup2')">
					</div>
				</div>
			</div>
	  </div>
	</div>
	
	<!-- 팝업창 : manager_member_delete2 -->
	<div id="popup3" class="hide popup">
	  <div class="content">
	    <div style="width: 412px;">
			<div style="font-size: 10px; width: 400px; height: 30px; padding-left: 10px;
			display: flex; align-items: center; background-color: #f0f6f9; border: 1px solid #ddd; margin-bottom: 5px">회원 강제탈퇴 확인</div>
			
			<div style="background-color: #f0f6f9;display: flex;flex-direction: column;align-items: center;height: 280px;">
				<div style="font-size: 16px; background-color: #f0f6f9; padding: 15px;">회원 강제탈퇴 사유를 작성하세요.</div>
				<textarea rows="10" cols="50"></textarea>
				<div style="display: flex; align-items: center; justify-content: center; padding: 20px;">
					<input type="button" value="확인" class="mainBtn" onclick="showPopup(true,'popup4')">
					<input type="button" value="취소" class="mainBtn" onclick="closePopup('popup3')">
				</div>
			</div>
		</div>
	  </div>
	</div>
	
	<!-- 팝업창 : manager_member_delete3 -->
	<div id="popup4" class="hide popup">
	  <div class="content">
		<div style="width: 412px;">
			<div style="font-size: 10px; width: 400px; height: 30px; padding-left: 10px;
			display: flex; align-items: center; background-color: #f0f6f9; border: 1px solid #ddd; margin-bottom: 5px">회원 강제탈퇴 확인</div>
			
			<div style="background-color: #f0f6f9;">
				<div style="font-size: 16px; display: flex; justify-content: center; 
				align-items: center; height: 70px ;background-color: #f0f6f9;">해당 회원이 강제탈퇴 되었습니다.</div>
				
				<div style="display: flex; align-items: center; justify-content: center; padding-bottom: 10px;">
					<input type="button" value="확인" class="mainBtn" onclick="closePopup('popup4')">
				</div>
			</div>
		</div>
	  </div>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="../../js/popper.min.js"></script>
	<script src="../../js/owl.carousel.min.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<script src="../../js/jquery.animateNumber.min.js"></script>
	<script src="../../js/jquery.waypoints.min.js"></script>
	<script src="../../js/jquery.fancybox.min.js"></script>
	<script src="../../js/aos.js"></script>
	<script src="../../js/moment.min.js"></script>
	<script src="../../js/daterangepicker.js"></script>

	<script src="../../js/typed.js"></script>

	<script src="../../js/custom.js"></script>
	
	<!-- 수정 -->
	<script type="text/javascript">
		function showPopup(hasFilter,id) {
			const popup = document.querySelector("#"+id);
			
			if(id=='popup3'){
				document.querySelector('#popup2').classList.add('hide');
			}else if(id=='popup4'){
				document.querySelector('#popup3').classList.add('hide');
			}
			
			if (hasFilter) {
				popup.classList.add('has-filter');
			} else {
				popup.classList.remove('has-filter');
			}
				
			popup.classList.remove('hide');
		}
		
		function closePopup(id) {
			const popup = document.querySelector("#"+id);
			
			switch (id) {
			case 'popup4':
				document.querySelector('#popup3').classList.add('hide');
				document.querySelector('#popup').classList.add('hide');
			case 'popup3':
				document.querySelector('#popup2').classList.add('hide');
			}
			popup.classList.add('hide');
		}
		
	</script>

</body>

</html>
