<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.TheLoai"%>
<%@page import="model.bean.Phim"%>
<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!-- Start header section -->
<jsp:include page="header.jsp" flush="true" />

<style>
.body-add-movie {
	margin-top: 80px;
}
</style>

<div class="container body-add-movie">
	<form action="Admin" method="post">
		<%
		Phim p = (Phim) request.getAttribute("phim");
		%>
		<h2>Form update movie</h2>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="first">Tên phim</label> <input type="text"
						class="form-control" placeholder="" id="first" name="tenphim"
						value=<%=p.getTenPhim()%> disabled>
				</div>
			</div>
			<!--  col-md-6   -->

			<div class="col-md-6">
				<div class="form-group">
					<label for="last">Thời lượng</label> <input type="text"
						class="form-control" placeholder="" id="last" name="thơiluong"
						value=<%=p.getThoiLuong()%>>
				</div>
			</div>
			<!--  col-md-6   -->
		</div>


		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="company">Nhà sản xuất</label> <input type="text"
						class="form-control" placeholder="" id="company" name="nhasanxuat"
						value=<%=p.getNhaSanXuat()%> disabled>
				</div>


			</div>
			<!--  col-md-6   -->

			<div class="col-md-6">

				<div class="form-group">
					<label for="phone">Độ tuổi</label> <input type="tel"
						class="form-control" id="phone" placeholder="" name="dotuoi"
						value=<%=p.getDoTuoi()%>>
				</div>
			</div>
			<!--  col-md-6   -->
		</div>
		<!--  row   -->


		<div class="row">
			<div class="col-md-6">

				<div class="form-group">
					<label for="email">Đạo diễn</label> <input type="text"
						class="form-control" id="email" placeholder="" name="daodien"
						value=<%=p.getDaoDien()%> disabled>
				</div>
			</div>
			<!--  col-md-6   -->

			<div class="col-md-6">
				<label for="fecha1">Ngày khởi chiếu</label>
				<div class="form-group mb-4">
					<div class="datepicker date input-group">
						<input type="text" placeholder="Choose Date" class="form-control"
							id="fecha1" name="ngaykhoichieu"
							value=<%=p.getNgayKhoiChieu().toString()%>>
						<div class="input-group-append">
							<span class="input-group-text"><i class="fa fa-calendar"></i></span>
						</div>
					</div>
				</div>
			</div>
			<!--  col-md-6   -->
		</div>
		<!--  row   -->


		<div class="row">
			<div class="col-md-6">

				<div class="form-group">
					<label for="email">Link trailer</label> <input type="text"
						class="form-control" id="email" placeholder="" name="linktrailer"
						value=<%=p.getLinkTrailer()%>>
				</div>
			</div>
			<!--  col-md-6   -->

			<div class="col-md-6">
				<label for="fecha1">Ngày kết thúc</label>
				<div class="form-group mb-4">
					<div class="datepicker date input-group">
						<input type="text" placeholder="Choose Date" class="form-control"
							id="fecha1" name="ngayketthuc"
							value=<%=p.getNgayKetThuc().toString()%>>
						<div class="input-group-append">
							<span class="input-group-text"><i class="fa fa-calendar"></i></span>
						</div>
					</div>
				</div>
			</div>
			<!--  col-md-6   -->
		</div>
		<!--  row   -->

		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="company">Link Ảnh</label> <input type="text"
						class="form-control" placeholder="" id="company" name="linkanh"
						value=<%=p.getLinkAnh()%>>
				</div>


			</div>
			<!--  col-md-6   -->

			<div class="col-md-6">
				<div class="form-group">
					<h6>Thể loại</h6>
					<select class="custom-select" id="gender2" name="theloai">
						<%
						String tlPhim = (String) request.getAttribute("theloai");
						int idTLP = 1;
						List<TheLoai> listTL = (ArrayList<TheLoai>) request.getAttribute("listtheloai");
						for(TheLoai i : listTL){
							if(i.getTenTheLoai().equals(tlPhim)){
								idTLP = i.getIdTheLoai();
							}
						}
						%>
						
						<option selected value="<%= idTLP %>"><%=tlPhim%></option>
						<%
						if (listTL != null) {
							for (TheLoai i : listTL) {
						%>
						<option value="<%=i.getIdTheLoai()%>"><%=i.getTenTheLoai()%></option>
						<%
						}
						}
						%>
					</select>
				</div>
			</div>
			<!--  col-md-6   -->
		</div>
		<!--  row   -->

		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="company1">Diễn viên</label>
					<textarea type="text" class="form-control" placeholder=""
						id="company1" name="dienvien"><%= p.getDienVien()%></textarea>
				</div>


			</div>
			<!--  col-md-6   -->

			<div class="col-md-6">

				<div class="form-group">
					<label for="company2">Mô tả phim</label>
					<textarea type="text" class="form-control" placeholder=""
						id="company2" name="motaphim"><%= p.getMoTa() %></textarea>
				</div>
			</div>
			<!--  col-md-6   -->
		</div>
		<!--  row   -->

		<button type="submit" class="btn btn-primary" name="update" value ="<%= p.getIdPhim()%>">Cập nhật</button>
	</form>
</div>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<!-- Datepicker -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script>
	$(function() {
		$('.datepicker').datepicker({
			language : "es",
			autoclose : true,
			format : "yyyy-mm-dd"
		});
	});
</script>