<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap,java.util.ArrayList"%>
<%@ page import="vo.Member, vo.Goods"%>
<%
	Member loginMember = (Member) session.getAttribute("loginMember");
ArrayList<Goods> goodsList = (ArrayList<Goods>) request.getAttribute("goodsList");
int cnt = 0;
%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- title image -->

<!-- reset -->
<link rel="stylesheet"
	href="https://meyerweb.com/eric/tools/css/reset/reset.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
<!-- text -->
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<!-- css origin -->
<link rel="stylesheet" href="css/style.css" />
<title>컴퓨터 홈 쇼핑 사이트</title>
</head>
<body>
	<!-- 2020-12-02 haesu -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="header">

		<button class="navbar-toggler navbar-toggler__nohide" type="button"
			data-toggle="collapse" data-target="#navbarNavDropdown"
			aria-controls="navbarNavDropdown" aria-expanded="true"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon navbar-toggler__nohide"></span>
		</button>

		<ul>
			<li><a></a></li>
		</ul>
		<div class="collapse navbar-collapse mr-4" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">컴퓨터부품</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">

						<a class="dropdown-item" href="goodsList.do?kind=cpu">CPU</a> <a
							class="dropdown-item" href="goodsList.do?kind=cooler">쿨러/튜닝</a> <a
							class="dropdown-item" href="goodsList.do?kind=board">메인보드</a> <a
							class="dropdown-item" href="goodsList.do?kind=memory">메모리</a> <a
							class="dropdown-item" href="goodsList.do?kind=card">그래픽카드</a> <a
							class="dropdown-item" href="goodsList.do?kind=ssd">SSd</a> <a
							class="dropdown-item" href="goodsList.do?kind=hard">하드디스크</a> <a
							class="dropdown-item" href="goodsList.do?kind=disc">외장HDD/SSD</a>
						<a class="dropdown-item" href="goodsList.do?kind=case">케이스</a> <a
							class="dropdown-item" href="goodsList.do?kind=power">파워</a> <a
							class="dropdown-item" href="goodsList.do?kind=keyboard">키보드</a> <a
							class="dropdown-item" href="goodsList.do?kind=mouse">마우스</a> <a
							class="dropdown-item" href="goodsList.do?kind=odd">ODD</a> <a
							class="dropdown-item" href="goodsList.do?kind=moniter">모니터</a> <a
							class="dropdown-item" href="goodsList.do?kind=soft">소프트웨어</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 조립PC </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">사장 추천 조립PC</a> <a
							class="dropdown-item" href="#">유저 추천 조립PC</a> <a
							class="dropdown-item" href="#">컴퓨터 부품 회사 추천 조립PC</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 브랜드PC </a>
					<div class="dropdown-menu "
						aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">삼성전자</a> <a
							class="dropdown-item" href="#">HP</a> <a class="dropdown-item"
							href="#">LG전자</a> <a class="dropdown-item" href="#">레노버</a> <a
							class="dropdown-item" href="#">DELL</a> <a class="dropdown-item"
							href="#">ASUS</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 커뮤니티 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">컴퓨터 리뷰 커뮤니티</a> <a
							class="dropdown-item" href="#">컴퓨터 추천 커뮤니티</a>
					</div></li>
			</ul>
		</div>
		<form class="form-inline">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
		</form>
	</nav>
	<!-- end -->

	<!-- help  haesu  2020-12-02 -->
	<section class="container__size" id="home">
		<div class=" w-100 ">
			<div id="carouselExampleControls"
				class="carousel slide w-100 container__center " data-ride="carousel">
				<div class="carousel-inner w-100 ">
					<div class="carousel-item active w-100">
						<img src="img/picture1.jpg" class="d-block w-100" alt="..."
							style="height: 400px">
					</div>
					<div class="carousel-item w-100">
						<img src="img/picture2.jpg" class="d-block w-100" alt="..."
							style="height: 400px">
					</div>
					<div class="carousel-item w-100">
						<img src="img/picture3.jpg" class="d-block w-100" alt="..."
							style="height: 400px">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleControls"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</section>
	<!-- help end -->
	<%for(int i = 0;i < goodsList.size();i++){ %>
	<div class="startLine text-center">
		<p class="startLine__text"><%=goodsList.get(i).getKind() %></p>
	</div>
	<%if(i == i){ %>
	<% break;} %>
	<%} %>
	<br>
	<div class="d-flex justify-content-center ">
		<%
			for (int i = 0; i < goodsList.size(); i++) {
		%>
		<div>
			<%
				for (int j = 0; j <= 2; j++) {
					cnt=i+j;
			%>

			<div class="card goods__card-size " style="width: 18rem;">
				<img src="./img/<%=goodsList.get(cnt).getImage()%>"
					class="card-img-top" alt="...">
				<div class="card-body">
					<p class="card-text">
						상품명:
						<%=goodsList.get(cnt).getName()%><br /> 가격:
						<%=goodsList.get(cnt).getPrice()%><br />
					</p>
				</div>
			</div>
			<%
				}
			%>
		</div>
		<%
			}
		%>
	</div>


	<!-- 2020-12-02 haesu -->
	<div class="controller">
		<%
			if (loginMember == null) {
		%>
		<div class="controller__menu">
			<button type="button" class="btn btn-primary btn-sm btn-block"
				data-toggle="modal" data-target="#loginModal">로그인</button>
		</div>
		<!-- 회원가입 modal만들기 -->
		<div class="controller__menu">
			<button type="button" class="btn btn-primary btn-sm btn-block"
				data-toggle="modal" data-target="#joinModal">회원가입</button>
		</div>

		<%
			} else {
		%>
		<div class="controller__menu">
			<h6>
				<%=loginMember.getId()%>님 환영합니다.
			</h6>
		</div>
		<div class="controller__menu">
			<button type="button" class="btn btn-primary btn-sm btn-block"
				onclick="location.href='logout.do'">로그아웃</button>
		</div>
		<div class="controller__menu">
			<button type="button" class="btn btn-primary btn-sm btn-block"
				data-toggle="modal" data-target="#profileModal">프로필</button>
		</div>
		<%
			}
		%>

		<div class="controller__menu">
			<a class="btn btn-primary btn-sm btn-block " href="goodsListCart.do">장바구니</a>
		</div>
		<div class="controller__menu ">
			<span class="text-center">최근본상품</span>
			<div></div>
		</div>
	</div>

	<footer class="text-center bg-dark text-white">
		<div class="footer-above">
			<div class="container pt-4">
				<div class="row">
					<div class="footer-col col-md-4">
						<h3 style="color: white;">위치</h3>
						<p>
							영남기술교육원<br />대구광역시 달서구
						</p>
					</div>
					<div class="footer-col col-md-4">
						<h3 style="color: white;">소셜 미디어</h3>
						<a href="#" class="btn btn-light m-2"><img
							src="img/facebook.svg"></a> <a href="#"
							class="btn btn-light m-2"><img src="img/youtube.svg"></a> <a
							href="#" class="btn btn-light m-2"><img src="img/twitter.svg"></a>
						<a href="#" class="btn btn-light m-2"><img
							src="img/twitch.svg"></a> <a href="#" class="btn btn-light m-2"><img
							src="img/instagram.svg"></a>
					</div>
					<div class="footer-col col-md-4">
						<h3 style="color: white;">개발자 한마디</h3>
						<p>언제든지 연락주세요!!</p>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-below pb-4">
			<div class="container text-center">
				<div>Copyright &copy; JP 2020. All Right Reserved.</div>
			</div>
		</div>
	</footer>
	<!-- end -->

	<!-- Login Modal  2020-12-03 haesu-->

	<div class="modal fade" id="loginModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">회원가입</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="loginPro.do" method="post">
						<div class="form-group">
							<label for="id">ID</label> <input type="text"
								class="form-control" id="id" aria-describedby="emailHelp"
								name="id">
						</div>
						<div class="form-group">
							<label for="passwd">Password</label> <input type="password"
								class="form-control" id="passwd" name="passwd">
						</div>
						<button type="submit" class="btn btn-primary">로그인</button>
						<button type="button" class="btn btn-primary"
							id="loginModalJoinBtn">회원가입</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">취소</button>
					</form>
				</div>

			</div>
		</div>
	</div>

	<!-- Join Modal -->
	<div class="modal fade" id="joinModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">회원가입</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="joinPro.do" method="post">
						<div class="form-group">
							<input type="text" class="form-control" name="id"
								placeholder="아이디" maxlength="20" required="required"
								autocomplete="off" />
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="passwd"
								placeholder="비밀번호" maxlength="20" required="required"
								autocomplete="off" />
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="name"
								placeholder="이름" maxlength="20" required="required"
								autocomplete="off" />
						</div>
						<div class="form-group">
							<input type="text" id="sample4_postcode" placeholder="우편번호"
								class="form-control" name="addr1" required="required"
								autocomplete="off"> <input type="button"
								onclick="sample4_execDaumPostcode()" value="우편번호 찾기"
								class="form-control"><input type="text"
								id="sample4_roadAddress" placeholder="도로명주소"
								class="form-control" name="addr2" required="required"
								autocomplete="off"> <input class="form-control"
								type="text" id="sample4_detailAddress" placeholder="상세주소"
								name="addr3" required="required" autocomplete="off">
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="age"
								placeholder="나이" maxlength="20" required="required"
								autocomplete="off" />
						</div>
						<div class="form-group">
							<div class="btn-group" data-toggle="buttons">
								<label class="btn btn-primary active"> <input
									type="radio" class="d-none" name="gender" autocomplete="off"
									value='M' checked="checked" />남자
								</label> <label class="btn btn-primary"> <input type="radio"
									class="d-none" name="gender" autocomplete="off" value='F' />여자
								</label>
							</div>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="이메일" maxlength="20" required="required"
								autocomplete="no" />
						</div>


						<!-- input타입 button은 value 값을 줘야함 -->
						<button type="submit" class="btn btn-primary form-control">가입</button>
					</form>
				</div>

			</div>
		</div>
	</div>








	<!-- Optional JavaScript -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
	<script src="js/header.js"></script>
	<script src="js/main.js"></script>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="js/addr.js"></script>
</body>
</html>




