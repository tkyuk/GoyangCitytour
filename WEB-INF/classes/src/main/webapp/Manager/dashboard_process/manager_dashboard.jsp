<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Map"%>
<%@page import="kr.co.goyang.manager.dao.TourDashBoardDAO"%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- Option 1: Bootstrap Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
	google.load('visualization', '1', {
		packages : [ 'corechart' ]
	});
	
</script>

<%
String manageName=(String)session.getAttribute("id");
System.out.println(session.getAttribute("id")+"?????? ?????????????????????.");
%>
<!-- ????????? ??????????????? ???????????? -->
<script type="text/javascript">
$(function(){
	var Msess=<%=manageName%>
	if(Msess==null){
		alert("????????? ????????????.");
		location.href="../login_manager/manager_signIn.jsp";
	}
});

function logOut(){
	<%
		session.removeAttribute("id");
	%>
	location.href="manager_dashboard.jsp";
}
</script>
<!--???????????? ?????? -->
<script type="text/javascript">
	
	var tour=[];
	var reserCnt=[];
	var tour2=[];
	var spotsCnt=[];
	
	<% 
	TourDashBoardDAO tdbDAO=TourDashBoardDAO.getInstance();

	Map<String, Integer> reserMap=tdbDAO.selectStatiReserva();
	Map<String, Integer> spotsMap=tdbDAO.selectStatiSpots();
	
	for( int i=0;i<reserMap.size();i++ ){%>
	    tour.push('<%=reserMap.keySet().toArray()[i]%>');
	    reserCnt.push(<%=reserMap.values().toArray()[i] %>);
	     
   <%}
	for( int i=0;i<spotsMap.size();i++ ){%>
	tour2.push('<%=spotsMap.keySet().toArray()[i]%>');
	spotsCnt.push(<%=spotsMap.values().toArray()[i] %>);
   
   
   
	<%}%>  
	

	function drawVisualization(mapvalues) {
						
		var data=new google.visualization.DataTable();
		data.addColumn('string', '????????????');
		data.addColumn('number', '????????????');
		
		for(var i=0;i<tour.length;i++){
			arr = [tour[i],reserCnt[i]];
			data.addRow(arr);
		}
		
		
		var data2=new google.visualization.DataTable();
		data2.addColumn('string', '????????????');
		data2.addColumn('number', '????????????');
		
		for(var i=0;i<tour2.length;i++){
			arr2 = [tour2[i],spotsCnt[i]];
			data2.addRow(arr2);
		}
					

		var options = {
			title : '????????????',
			vAxis : {
				title : "???"
			},
			hAxis : {
				title : "??????"
			},
			seriesType : "bars",
			series : {
				5 : {
					type : "line"
				}
			}
		};

		var options2 = {
			title : '???????????????',
			vAxis : {
				title : "???"
			},
			hAxis : {
				title : "??????"
			},
			seriesType : "bars",
			series : {
				5 : {
					type : "line"
				}
			}
		};

		var chart = new google.visualization.ComboChart(document
				.getElementById('reser'));
		var chart2 = new google.visualization.ComboChart(document
				.getElementById('tourist'));

		chart.draw(data, options);
		chart2.draw(data2, options2);
	}
	google.setOnLoadCallback(drawVisualization);
</script>

<title>???????????????-????????????</title>
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
				<a href="manager_dashboard.jsp" class="logo m-0">??????<span
					class="text-primary">.</span></a>

				<ul
					class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-center">
					<li class="active"><a href="manager_dashboard.jsp">dash board</a></li>
					<li><a href="../user_manager_process/manager_member_popup.jsp">????????????</a></li>
					<li><a href="../tour_manager_process/manager_tour_manager.jsp">????????????</a></li>
					<li><a href="../reservation_manager_process/manager_reservation.jsp">????????????</a></li>
					<li><a href="../spot_manager_process/manager_spot_list.jsp">????????? ??????</a></li>
					<li><a href="../review_manager_process/manager_review.jsp">????????????</a></li>
				</ul>

				<ul
					class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
					<li></li>
					<li style="font-size: 5px; font-weight: bold;"><a
						href="#void" onclick="logOut()">????????????&nbsp;&nbsp;&nbsp;<%=manageName %>????????????</a>
						</li>
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
						<h1 class="mb-0">Dash Board</h1>
						<!-- <p class="text-white">???????????? ????????????.</p> -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<% //????????? ??????
	
	int[] get = tdbDAO.selectStatiUser();
	int reviewCnt = tdbDAO.selectStatiReview();
	int tourCnt=tdbDAO.selectStatiTour();
	
	
	%>
	<div class="untree_co-section">
		<div class="container">
			<h3 class=" text-center mb-3">??? dash board ???</h3>
			<div class="row" id="review" style="width: 1250px; height: 650px;">
			
				<%
				Date now = new Date();
				SimpleDateFormat sdf = new SimpleDateFormat("MM");
				String nowMonth = sdf.format(now); // ?????? ??? ?????????
				%>
				<table style="width: 1200px; height: 600px; margin: auto;">
					<tr style="height: 40px; text-align: left;">
						<th style="width: 130px">??? ????????????</th>
						<th style="font-size: 11px; width: 270px">*<%=nowMonth %>?????????</th>
						<th style="width: 130px">??? ????????????</th>
						<th style="font-size: 11px; width: 270px">*<%=nowMonth %>?????????</th>
						<th style="width: 130px">??? ???????????????</th>
						<th style="font-size: 11px; width: 270px">*????????? ????????? ??????</th>
					</tr>
					<tr>
						<td colspan="2"><div class="info">
								<div
									style="width: 200px; height: 160px; font-size: 20px; position: absolute; top: 50%; left: 50%; margin: -80px 0 0 -100px;">
									????????? ????????????<br>
									<meter min="0" max="10" value="<%=get[0] %>"></meter>
									<%=get[0] %>???<br> <br> ????????? ????????????<br>
									<meter min="0" max="10" value="<%=get[1] %>"></meter>
									<%=get[1] %>???<br>
								</div>
							</div></td>
						<td colspan="2" rowspan="4"><div class="binfo" id="reser"></div></td>
						<td colspan="2" rowspan="4"><div class="binfo" id="tourist"></div></td>
					</tr>
					<tr style="height: 40px; text-align: left;">
						<th colspan="2">??? ?????? ????????????/????????????</th>

					</tr>
					<tr>
						<td colspan="2"><div class="info">
								<table border="1"
									style="width: 300px; height: 80px; position: absolute; top: 50%; left: 50%; margin: -40px 0 0 -150px;">
									<tr style="background-color: #C0D7E9">
										<th>?????? ?????????</th>
										<th>????????????</th>
									</tr>
									<tr style="background-color: #F7F8F9">
										<td><%=reviewCnt %>???</td>
										<td><%=tourCnt %>??????</td>
									</tr>
								</table>
							</div></td>
					</tr>
				</table>

			</div>
		</div>
	</div>


	<div class="site-footer">
		<div class="inner first">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-4">
						<div class="widget">
							<p
								style="font-size: 20px; font-weight: bold; color: red; font-style: inherit;">??????
								???????????? ?????? ???????????????.</p>
							<p style="font-size: 60px; font-weight: bold;">Goyan Tour</p>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 " style="margin: 0 0 0 auto">
						<div class="widget">
							<h3 class="heading">??????????????????</h3>
							<ul class="list-unstyled quick-info links">
								<li class="email"><a href="#">goyang@com</a></li>
								<li class="phone"><a href="#">010-1234-5678</a></li>
								<li class="address"><a href="#">????????? ????????? ???????????? ?????????</a></li>
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