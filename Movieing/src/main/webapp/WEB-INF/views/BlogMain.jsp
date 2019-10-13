<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
body {
	padding-top: 100px;
}

.movieImage {
	width: 120px;
	height: 180px;
}
</style>



<div class="container">

	<div class="row" style="padding-top: 20px">
		<!-- 왼쪽 마이피드 -->
		<div class="col-sm-7 blog-main">

			<!-- 프로필 -->
			<div class="jumbotron">
				<div class="row">
					<!-- 프로필 사진 -->
					<div class="col-sm-3" align="center">
						<img width="100" height="100" alt="user"
							src="<c:url value='/resources/img/user.png'/>" />
						<h5 style="padding-top: 20px">Road-dong</h5>
						<div class="row">
							<div class="col-sm-6">
								<a href="#"><span
									style="font-weight: bold; color: black; font-size: 0.9em">팔로워
										25 </span></a>
							</div>
							<div class="col-sm-6">
								<a href="#"><span
									style="font-weight: bold; color: black; font-size: 0.9em">팔로잉
										43 </span></a>
							</div>
						</div>
						<br>
						<button type="button" class="btn btn-danger">무빙프렌즈</button>
					</div>
					<!-- 프로필 활동내역 -->
					<div class="col-sm-9">
						<p align="right" style="padding-bottom: 20px">
							<a class="btn btn-dark btn-sm" href="#" role="button">마이페이지</a>
						</p>
						<div class="row"
							style="padding-top: 20px; padding-bottom: 20px; background-color: white; border-radius: 10px 10px 10px 10px;">
							<div class="col-sm-3" align="center">
								<a href="#"><span style="font-weight: bold">별점<br>
										451
								</span></a>
							</div>
							<div class="col-sm-3" align="center"
								style="border-left-width: 2px; border-left-style: solid; border-left-color: #a8a5a5">
								<a href="#"><span style="font-weight: bold">리뷰<br>
										47
								</span></a>
							</div>
							<div class="col-sm-3" align="center"
								style="border-left-width: 2px; border-left-style: solid; border-left-color: #a8a5a5">
								<a href="#"><span style="font-weight: bold">좋아요<br>
										25
								</span></a>
							</div>
							<div class="col-sm-3" align="center"
								style="border-left-width: 2px; border-left-style: solid; border-left-color: #a8a5a5">
								<a href="#"><span style="font-weight: bold">보고싶어요<br>
										91
								</span></a>
							</div>
						</div>




					</div>
				</div>

			</div>
			<div class="card border-secondary mb-3" style="max-width: 50rem;">
				<div class="card-header">
					겟아웃을 보고싶어요에 추가했어요!&nbsp;&nbsp;<span
						style="color: #a8a5a5; font-size: 0.3em">2시간 전</span>
				</div>

			</div>
			<div class="card border-secondary mb-3" style="max-width: 200rem;">
				<div class="card-header">
					토이스토리4에 리뷰를 남겼어요!&nbsp;&nbsp;<span
						style="color: #a8a5a5; font-size: 0.3em">1일 전</span>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col-sm-3" align="center">
							<img class="movieImage"
								src="../../resources/img/movie/toystoryMain.jpg" alt="포스터" />
						</div>
						<div class="col-sm-9">
							<h4 class="card-title">토이스토리4</h4>
							<span class="badge badge-pill badge-danger">★4.5</span>
							<p class="card-text">토이스토리를 봤다. 너무 재밌었다. 너무 재밌었고, 너무 재밌어서 너무
								재밌을 뻔했다. 너무 재밌는 영화였다.</p>
							<a href="#"><span
								style="font-weight: bold; color: #db147b; font-size: 0.9em">좋아요
									25 </span></a>&nbsp;&nbsp;&nbsp; <a href="#"><span
								style="font-weight: bold; color: #db147b; font-size: 0.9em">댓글
									4 </span></a>
						</div>
					</div>
				</div>
			</div>





		</div>
		<!-- /.blog-main -->
		<!-- 가운데 분계선 -->
		<div
			style="border-left-width: 1px; border-left-style: solid; border-left-color: #a8a5a5"></div>
		<!-- 여기서부터 오른쪽 취향분석 -->
		<div class="col-sm-4 col-sm-offset-1 blog-sidebar">
			<div class="sidebar-module sidebar-module-inset"
				style="padding-top: 60px">
				<h3 align="center">홍길동님의 취향은?</h3>
				<p align="right">
					<a href="#" style="color: #a8a5a5">더 평가하러 가기</a>
				</p>
				<hr class="my-3">
				<p align="center" style="font-size: 1em">무빙과 함께한지 164일째!</p>
				<hr class="my-3">
				<h5>별점분포</h5>
				<p align="center" style="font-size: 0.8em">
					<em>별점이 한결같은 소나무 타입</em>
				</p>
				##여기에 별점막대그래프...##
				<hr class="my-3">
				<h5>선호태그</h5>
				##여기에 선호태그들...##
				<hr class="my-3">
				<h5>선호배우</h5>
				##여기에 선호배우...##
				<hr class="my-3">
				<h5>선호감독</h5>
				##여기에 선호감독...##
				<hr class="my-3">
				<h5>선호장르</h5>
				##여기에 선호장르...##
				<hr class="my-3">
				<h5>영화감상시간</h5>
				<h6 align="center" style="color: #db147b">1046시간</h6>
				<p align="center" style="font-size: 0.8em">
					<em>영화를 정말 사랑하시네요!</em>
				</p>


			</div>
		</div>
		<!-- /.blog-sidebar -->

	</div>
	<!-- /.row -->

</div>
<!-- /.container -->


