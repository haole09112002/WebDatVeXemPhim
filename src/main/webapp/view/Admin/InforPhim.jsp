<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!-- Start header section -->
<jsp:include page="header.jsp" flush="true" />
<style>
* {
	box-sizing: border-box;
}

.body-container {
	margin-top: 120px;
}

.description-container {
	position: relative;
	height: 80%;
}

.main-description {
	position: absolute;
	top: 320px;
	-webkit-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
}

.main-description h3 {
	font-size: 2rem;
}

.add-inputs, .add-inputs input {
	float: left;
	margin-right: 10px;
	margin-bottom: 2px;
}

.add-inputs button {
	border-radius: 0;
}

.add-inputs input {
	height: 48px;
	width: 65px;
	border-radius: 0;
}

.movie-title {
	font-size: 1.1rem;
	font-weight: bold;
}

.movie-price {
	font-size: 1.8rem;
}
</style>

<div class="container body-container">

	<div class="row">

		<div class="col-md-6 col-sm-12">
			<img class="img-fluid details-img"
				src="https://parade.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkwNTgxMjkxNjk3NDQ4ODI4/marveldisney.jpg"
				alt="img">
			<div class="mt-3 d-flex justify-content-center">
			<form class="add-inputs" method="post">
				<button name="add_to_cart" type="submit"
					class="btn btn-primary btn-lg">BACK</button>
			</form>
			</div>
		</div>
		<div class="col-md-6 col-sm-12 description-container">
			<div class="main-description">
				<h3>Name : Avengers: Endgame</h3>
				<p class="movie-price">Price : $1199.00</p>

				<p class="movie-title mt-4 mb-1">About this movie</p>
				<p class="movie-description mb-4">Avengers: Hồi kết (tựa gốc
					tiếng Anh: Avengers: Endgame) là phim điện ảnh siêu anh hùng Mỹ ra
					mắt năm 2019, do Marvel Studios sản xuất và Walt Disney Studios
					Motion Pictures phân phối độc quyền tại thị trường Bắc Mỹ. Phim là
					phần thứ tư của loạt phim Avengers, sau Biệt đội siêu anh hùng
					(2012), Avengers: Đế chế Ultron (2015) và Avengers: Cuộc chiến vô
					cực (2018), đồng thời cũng là phim điện ảnh thứ 22 của Vũ trụ Điện
					ảnh Marvel (MCU).</p>
				<p class="movie-thoi-luong">Thời lượng : 90 phút</p>
				<p class="movie-quoc-gia">Quốc gia : Mỹ</p>
				<p class="movie-do-tuoi">Độ tuổi : 20 tuổi</p>
				<p class="movie-dao-dien">Đạo diễn : Anthony Russo, Joe Russo</p>
				<p class="movie-ngay-khoi-chieu">Ngày khởi chiếu : 22 tháng 4
					năm 2019</p>
				<p class="movie-link-trailer">Link trailer : TcMBFSGVi1c</p>
				<p class="movie-dien-vien">Diễn viên : Robert Downey Jr. Chris
					Evans Mark Ruffalo Chris Hemsworth Scarlett Johansson Jeremy Renner
					Don Cheadle Paul Rudd Brie Larson Karen Gillan Danai Gurira
					Benedict Wong Jon Favreau Bradley Cooper Gwyneth Paltrow Chadwick
					Boseman Letitia Wright Josh Brolin</p>
				<p class="movie-the-loai">Thể loại : Siêu anh hùng</p>
				<div style="clear: both"></div>

			</div>

		</div>
	</div>
	<!-- End row -->
</div>