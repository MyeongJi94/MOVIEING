<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous"> -->


<!-- css파일 -->
<link href="<c:url value='/resources/css/blogMainLayout.css'/>"
	rel="stylesheet" type="text/css">

<style>
body {
	padding-top: 100px;
}

.movieImage {
	width: 120px;
	height: 180px;
}
/* 원형이미지들 */
.radiusImg {
	width: 65px;
	height: 65px;
	/* background-image:url("배경이미지경로"); */
	border-radius: 150px; /* 레이어 반크기만큼 반경을 잡기*/
	display: table-cell;
	vertical-align: middle;
	color: #ffffff;
	font-weight: bold;
	text-align: center;
}
/* 배우감독이름 스팬 */
.actorSpan {
	font-size: 1.2em;
	font-weight: bold;
	line-height: 65px; . actorSpan { font-size : 1.2em;
	font-weight: bold;
	line-height: 65px;
}
/* 필모그램 스팬 */
.filmoSpan {
	line-height: 65px;
}
/* 배우 스팬 */
.actorForm {
	padding-bottom: 20px;;
}

<<<<<<<
HEAD /* 필모그램 스팬 */    
.filmoSpan {
	line-height: 65px;
}

/* 배우 스팬 */
.actorForm {
	padding-bottom: 20px;; . genreSpan { color : #37C2AD;
	font-weight: bold;
	font-size: 1.2em;
}

.genreSpan {
	color: #37C2AD;
	font-weight: bold;
	font-size: 1.2em;
}
</style>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'bar' ]
	});
	google.charts.setOnLoadCallback(drawStuff);
	function drawStuff() {
		var data = new google.visualization.arrayToDataTable([ [ '', '' ],
				[ "0", 15 ], [ "", 1 ], [ "1", 12 ], [ "", 10 ], [ '2', 3 ],
				[ '', 20 ], [ '3', 7 ], [ '', 3 ], [ '4', 15 ], [ '', 5 ],
				[ '5', 2 ] ]);
		var options = {
			width : 270,
			legend : {
				position : 'none'
			},
			bar : {
				groupWidth : "90%"
			}
		};
		var chart = new google.charts.Bar(document.getElementById('chart'));
		// Convert the Classic options to Material options...
		chart.draw(data, google.charts.Bar.convertOptions(options));
	};
</script>


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
								<a href="#followModal" data-toggle="modal"><span
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
						<!--  
						<button type="button" class="btn btn-danger" onclick='<c:url value="/Movieing/Blog/MovindFriends.mov"/>'>무빙프렌즈</button>
						-->
						<a class="btn btn-danger"
							href="<c:url value='/Movieing/Blog/MovieingFriends.mov'/>">무빙프렌즈</a>
					</div>

					<!-- 프로필 활동내역 -->
					<div class="col-sm-9">
						<p align="right" style="padding-bottom: 20px">
							<a class="btn btn-dark btn-sm" href="#" role="button">마이페이지</a>
						</p>
						<div class="row"
							style="padding-top: 20px; padding-bottom: 20px; background-color: white; border-radius: 10px 10px 10px 10px;">
							<div class="col-sm-3" align="center">
								<a href="<c:url value='/Movieing/Blog/MyActivity.mov?page=star'/>"><span
									style="font-weight: bold">별점<br> 451
								</span></a>
							</div>
							<div class="col-sm-3" align="center"
								style="border-left-width: 2px; border-left-style: solid; border-left-color: #a8a5a5">
								<a href="<c:url value='/Movieing/Blog/MyActivity.mov'/>"><span style="font-weight: bold">리뷰<br>
										47
								</span></a>
							</div>
							<div class="col-sm-3" align="center"
								style="border-left-width: 2px; border-left-style: solid; border-left-color: #a8a5a5">
								<a href="<c:url value='/Movieing/Blog/MyActivity.mov'/>"><span style="font-weight: bold">좋아요<br>
										25
								</span></a>
							</div>
							<div class="col-sm-3" align="center"
								style="border-left-width: 2px; border-left-style: solid; border-left-color: #a8a5a5">
								<a href="<c:url value='/Movieing/Blog/MyActivity.mov'/>"><span style="font-weight: bold">보고싶어요<br>
										91
								</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 피드컨텐츠 시작 -->
			<!-- 1.한줄컨텐츠(보고싶어요,별점,좋아요) -->
			<div class="card border-secondary mb-3" style="max-width: 50rem;">
				<div class="card-header">
					겟아웃을 보고싶어요에 추가했어요!&nbsp;&nbsp;<span
						style="color: #a8a5a5; font-size: 0.3em">2시간 전</span>
				</div>
			</div>
			<!-- 2.여러줄컨텐츠(리뷰) -->
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
		<!-- 왼쪽 마이피드끝-->

		<!-- 가운데 분계선 -->
		<div
			style="border-left-width: 1px; border-left-style: solid; border-left-color: #a8a5a5"></div>

		<!-- 여기서부터 오른쪽 취향분석 시작 -->
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
				<div id="chart"
					style="width: 500px; height: 170px; padding-left: 50px"></div>
				<hr class="my-3">
				<h5>선호태그</h5>
				##여기에 선호태그들...##
				<hr class="my-3">
				<h5>선호배우</h5>
				<div class="row actorForm">
					<div class="col-sm-3">
						<img class="radiusImg" alt="배우사진"
							src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
					</div>
					<div class="col-sm-6">
						<span class="actorSpan">염정아</span>
					</div>
					<div class="col-sm-3">
						<span class="filmoSpan">25편</span>
					</div>
				</div>

				<div class="row actorForm">
					<div class="col-sm-3">
						<img class="radiusImg" alt="배우사진"
							src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
					</div>
					<div class="col-sm-6">
						<span class="actorSpan">김선아</span>
					</div>
					<div class="col-sm-3">
						<span class="filmoSpan">25편</span>
					</div>
				</div>

				<div class="row actorForm">
					<div class="col-sm-3">
						<img class="radiusImg" alt="배우사진"
							src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
					</div>
					<div class="col-sm-6">
						<span class="actorSpan">손예진</span>
					</div>
					<div class="col-sm-3">
						<span class="filmoSpan">25편</span>
					</div>
				</div>
				<hr class="my-3">
				<h5>선호감독</h5>
				<div class="row actorForm">
					<div class="col-sm-3">
						<img class="radiusImg" alt="감독사진"
							src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
					</div>
					<div class="col-sm-6">
						<span class="actorSpan">염정아</span>
					</div>
					<div class="col-sm-3">
						<span class="filmoSpan">25편</span>
					</div>
				</div>
				<div class="row actorForm">
					<div class="col-sm-3">
						<img class="radiusImg" alt="감독사진"
							src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
					</div>
					<div class="col-sm-6">
						<span class="actorSpan">김선아</span>
					</div>
					<div class="col-sm-3">
						<span class="filmoSpan">25편</span>
					</div>
				</div>
				<div class="row actorForm">
					<div class="col-sm-3">
						<img class="radiusImg" alt="감독사진"
							src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
					</div>
					<div class="col-sm-6">
						<span class="actorSpan">손예진</span>
					</div>
					<div class="col-sm-3">
						<span class="filmoSpan">25편</span>
					</div>
				</div>
				<hr class="my-3">
				<h5>선호장르</h5>
				<p align="center" style="font-size: 0.8em">
					<em>영화에서 주로 반전과 공포를 찾는 사람</em>
				</p>
				<div class="row" align="center"
					style="padding-left: 30px; padding-right: 30px">
					<div class="col-md-4">
						<a href="#"><span class="genreSpan">스릴러</span></a>
					</div>
					<div class="col-md-4">
						<a href="#"><span class="genreSpan">공포</span></a>
					</div>
					<div class="col-md-4">
						<a href="#"><span class="genreSpan">액션</span></a>
					</div>
				</div>

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
</div>

<!--div class=row끝 -->


<!--컨테이너 끝 ---->

<!-- 모달시작 -->
<div class="modal" id="followModal">
	<div class="modal-dialog" role="document">

		<div class="modal-content" style="padding-bottom: 20px">
			<!-- 모달 클로즈 버튼 -->
			<div align="right" style="padding: 10px">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!-- 모달 헤더 -->
			<ul class="nav nav-pills nav-justified" role="tablist"
				style="padding-bottom: 20px">
				<li class="nav-item"><a class="nav-link active"
					href="#follower" data-toggle="pill" aria-controls="pills-follower"
					id="pills-follower-tab">팔로워</a></li>
				<li class="nav-item"><a class="nav-link" href="#following"
					data-toggle="pill" aria-controls="pills-following"
					id="pills-following-tab">팔로잉</a></li>
			</ul>

			<!-- 모달컨텐츠 -->
			<div class="tab-content" id="myTabContent"
				style="height: 477px; overflow-y: scroll; overflow-x: hidden;">
				<!-- 모달컨텐츠1.팔로워 -->
				<div class="tab-pane fade show active" id="follower" role="tabpanel"
					aria-labelledby="pills-follower-tab">
					<div class="row followForm">
						<div class="col-sm-3">
							<img class="radiusImg" alt="감독사진"
								src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
						</div>
						<div class="col-sm-7">
							<span class="actorSpan">손예진</span> <span class="followSpan">&nbsp;평가
								2566</span> <span class="followSpan">&nbsp;코멘트 457</span>
						</div>

						<!-- 스위치 : 스위치의 input-id와 label-for값이 같아야 스위치가 작동한다-->
						<div class="custom-control custom-switch col-sm-2">
							<input type="checkbox" class="custom-control-input" id="aSwitch1">
							<label class="custom-control-label" for="aSwitch1" style=""></label>
						</div>

					</div>
					<hr class="my-3" style="width: 450px">
					<div class="row followForm">
						<div class="col-sm-3">
							<img class="radiusImg" alt="감독사진"
								src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
						</div>
						<div class="col-sm-7">
							<span class="actorSpan">임수정</span> <span class="followSpan">&nbsp;평가
								2566</span> <span class="followSpan">&nbsp;코멘트 457</span>
						</div>

						<!-- 스위치 -->
						<div class="custom-control custom-switch col-sm-2">
							<input type="checkbox" class="custom-control-input" id="aSwitch2">
							<label class="custom-control-label" for="aSwitch2" style=""></label>
						</div>
					</div>
					<hr class="my-3" style="width: 450px">
					<div class="row followForm">
						<div class="col-sm-3">
							<img class="radiusImg" alt="감독사진"
								src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
						</div>
						<div class="col-sm-7">
							<span class="actorSpan">김민정</span> <span class="followSpan">&nbsp;평가
								2566</span> <span class="followSpan">&nbsp;코멘트 457</span>
						</div>

						<!-- 스위치 : 스위치의 input-id와 label-for값이 같아야 스위치가 작동한다-->
						<div class="custom-control custom-switch col-sm-2">
							<input type="checkbox" class="custom-control-input" id="aSwitch3">
							<label class="custom-control-label" for="aSwitch3" style=""></label>
						</div>

					</div>
					<!-- 모달 스크롤 테스팅 -->
					<hr class="my-3" style="width: 450px">
					<div class="row followForm">
						<div class="col-sm-3">
							<img class="radiusImg" alt="감독사진"
								src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
						</div>
						<div class="col-sm-7">
							<span class="actorSpan">김민정</span> <span class="followSpan">&nbsp;평가
								2566</span> <span class="followSpan">&nbsp;코멘트 457</span>
						</div>

						<!-- 스위치 : 스위치의 input-id와 label-for값이 같아야 스위치가 작동한다-->
						<div class="custom-control custom-switch col-sm-2">
							<input type="checkbox" class="custom-control-input" id="aSwitch3">
							<label class="custom-control-label" for="aSwitch3" style=""></label>
						</div>

					</div>
					<hr class="my-3" style="width: 450px">
					<div class="row followForm">
						<div class="col-sm-3">
							<img class="radiusImg" alt="감독사진"
								src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
						</div>
						<div class="col-sm-7">
							<span class="actorSpan">김민정</span> <span class="followSpan">&nbsp;평가
								2566</span> <span class="followSpan">&nbsp;코멘트 457</span>
						</div>

						<!-- 스위치 : 스위치의 input-id와 label-for값이 같아야 스위치가 작동한다-->
						<div class="custom-control custom-switch col-sm-2">
							<input type="checkbox" class="custom-control-input" id="aSwitch3">
							<label class="custom-control-label" for="aSwitch3" style=""></label>
						</div>

					</div>
					<hr class="my-3" style="width: 450px">
					<div class="row followForm">
						<div class="col-sm-3">
							<img class="radiusImg" alt="감독사진"
								src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
						</div>
						<div class="col-sm-7">
							<span class="actorSpan">김민정</span> <span class="followSpan">&nbsp;평가
								2566</span> <span class="followSpan">&nbsp;코멘트 457</span>
						</div>

						<!-- 스위치 : 스위치의 input-id와 label-for값이 같아야 스위치가 작동한다-->
						<div class="custom-control custom-switch col-sm-2">
							<input type="checkbox" class="custom-control-input" id="aSwitch3">
							<label class="custom-control-label" for="aSwitch3" style=""></label>
						</div>

					</div>
					<hr class="my-3" style="width: 450px">
					<div class="row followForm">
						<div class="col-sm-3">
							<img class="radiusImg" alt="감독사진"
								src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
						</div>
						<div class="col-sm-7">
							<span class="actorSpan">김민정</span> <span class="followSpan">&nbsp;평가
								2566</span> <span class="followSpan">&nbsp;코멘트 457</span>
						</div>

						<!-- 스위치 : 스위치의 input-id와 label-for값이 같아야 스위치가 작동한다-->
						<div class="custom-control custom-switch col-sm-2">
							<input type="checkbox" class="custom-control-input" id="aSwitch3">
							<label class="custom-control-label" for="aSwitch3" style=""></label>
						</div>

					</div>
					<hr class="my-3" style="width: 450px">
					<div class="row followForm">
						<div class="col-sm-3">
							<img class="radiusImg" alt="감독사진"
								src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
						</div>
						<div class="col-sm-7">
							<span class="actorSpan">김민정</span> <span class="followSpan">&nbsp;평가
								2566</span> <span class="followSpan">&nbsp;코멘트 457</span>
						</div>

						<!-- 스위치 : 스위치의 input-id와 label-for값이 같아야 스위치가 작동한다-->
						<div class="custom-control custom-switch col-sm-2">
							<input type="checkbox" class="custom-control-input" id="aSwitch3">
							<label class="custom-control-label" for="aSwitch3" style=""></label>
						</div>

					</div>
					<hr class="my-3" style="width: 450px">
					<div class="row followForm">
						<div class="col-sm-3">
							<img class="radiusImg" alt="감독사진"
								src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
						</div>
						<div class="col-sm-7">
							<span class="actorSpan">김민정</span> <span class="followSpan">&nbsp;평가
								2566</span> <span class="followSpan">&nbsp;코멘트 457</span>
						</div>

						<!-- 스위치 : 스위치의 input-id와 label-for값이 같아야 스위치가 작동한다-->
						<div class="custom-control custom-switch col-sm-2">
							<input type="checkbox" class="custom-control-input" id="aSwitch3">
							<label class="custom-control-label" for="aSwitch3" style=""></label>
						</div>

					</div>
					<hr class="my-3" style="width: 450px">
					<div class="row followForm">
						<div class="col-sm-3">
							<img class="radiusImg" alt="감독사진"
								src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
						</div>
						<div class="col-sm-7">
							<span class="actorSpan">김민정</span> <span class="followSpan">&nbsp;평가
								2566</span> <span class="followSpan">&nbsp;코멘트 457</span>
						</div>

						<!-- 스위치 : 스위치의 input-id와 label-for값이 같아야 스위치가 작동한다-->
						<div class="custom-control custom-switch col-sm-2">
							<input type="checkbox" class="custom-control-input" id="aSwitch3">
							<label class="custom-control-label" for="aSwitch3" style=""></label>
						</div>

					</div>
					<hr class="my-3" style="width: 450px">
					<div class="row followForm">
						<div class="col-sm-3">
							<img class="radiusImg" alt="감독사진"
								src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
						</div>
						<div class="col-sm-7">
							<span class="actorSpan">김민정</span> <span class="followSpan">&nbsp;평가
								2566</span> <span class="followSpan">&nbsp;코멘트 457</span>
						</div>

						<!-- 스위치 : 스위치의 input-id와 label-for값이 같아야 스위치가 작동한다-->
						<div class="custom-control custom-switch col-sm-2">
							<input type="checkbox" class="custom-control-input" id="aSwitch3">
							<label class="custom-control-label" for="aSwitch3" style=""></label>
						</div>

					</div>
					<!-- 모달 스크롤 테스팅 -->
				</div>

				<div class="tab-pane fade" id="following" role="tabpanel"
					aria-labelledby="pills-following-tab">
					<div class="row followForm">
						<div class="col-sm-3">
							<img class="radiusImg" alt="감독사진"
								src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
						</div>
						<div class="col-sm-7">
							<span class="actorSpan">김남주</span> <span class="followSpan">&nbsp;평가
								2566</span> <span class="followSpan">&nbsp;코멘트 457</span>
						</div>

						<!-- 스위치 -->
						<div class="custom-control custom-switch col-sm-2">
							<input type="checkbox" class="custom-control-input" id="bSwitch1">
							<label class="custom-control-label" for="bSwitch1" style=""></label>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<!-- 모달끝 -->
<script>
	/* $('#followModal').modal({
	
	 }); */
</script>