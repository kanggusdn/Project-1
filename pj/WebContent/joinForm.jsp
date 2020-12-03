<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
if (id != null) {
	response.sendRedirect("index.html");
}
%>
<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />

<title>JSP 게시판</title>
</head>
<body>
	<div class="container pt-3">
		<div class="row">
			<div class="col-lg-4 offset-lg-4">
				<div class="jumbotron pt-5">
					<form action="joinPro.do" method="post">
						<h3 class="text-center pb-2">회원가입</h3>
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
							<input type="text" id="sample4_postcode" placeholder="우편번호" class="form-control" name = "addr1">
							<input type="button" onclick="sample4_execDaumPostcode()"
								value="우편번호 찾기" class="form-control"><input type="text"
								id="sample4_roadAddress" placeholder="도로명주소" class="form-control" name = "addr2"> 
							 <input class="form-control"	type="text" id="sample4_detailAddress" placeholder="상세주소" name = "addr3">
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="age"
								placeholder="나이" maxlength="20" required="required"
								autocomplete="off" />
						</div>
						<div class="form-group text-center">
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


	<!-- Option 2: jQuery, Popper.js, and Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src = "js/addr.js"></script>
</body>
</html>