<%@page import="model.bean.Phim"%>
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
	<%
	Phim p = (Phim) request.getAttribute("phim");
	String theLoaiPhim = (String) request.getAttribute("theloai");
	%>
	<div class="row">

		<div class="col-md-6 col-sm-12">
			<img class="img-fluid details-img" width="450" height="498"
				src="<%=p.getLinkAnh()%>" alt="Ảnh phim: <%=p.getTenPhim()%>"
				style="margin-bottom: 20px">
			<div class="mt-3 d-flex justify-content-center">
				<form class="add-inputs" method="post" action="Admin">
					<button type="submit" class="btn btn-primary btn-lg">BACK</button>
				</form>
			</div>
		</div>
		<div class="col-md-6 col-sm-12 description-container">
			<div class="main-description">
				<h3>
					Tên phim
					<%=p.getTenPhim()%></h3>

				<p class="movie-title mt-4 mb-1">Mô tả phim:</p>
				<p class="movie-description mb-4"><%=p.getMoTa()%></p>
				<p class="movie-thoi-luong">
					Thời lượng :
					<%=p.getThoiLuong()%></p>
				<p class="movie-quoc-gia">
					Quốc gia :
					<%=p.getQuocGia()%></p>
				<p class="movie-do-tuoi">
					Độ tuổi :
					<%=p.getDoTuoi()%>
					tuổi
				</p>
				<p class="movie-dao-dien">
					Đạo diễn :
					<%=p.getDaoDien()%></p>
				<p class="movie-ngay-khoi-chieu">
					Ngày khởi chiếu :
					<%=p.getNgayKhoiChieu()%></p>
				<p class="movie-dien-vien">
					Diễn viên :
					<%=p.getDienVien()%></p>
				<p class="movie-the-loai">
					Thể loại :
					<%=theLoaiPhim%></p>
				<iframe width="465" height="300"
					src="https://www.youtube.com/embed/<%=p.getLinkTrailer()%>"
					title="Trailer phim <%=p.getTenPhim()%>" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<div style="clear: both"></div>

			</div>

		</div>
	</div>
	<!-- End row -->
</div>