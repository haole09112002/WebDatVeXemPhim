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
	<form>
		<h2>Form update movie</h2>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="first">Tên phim</label> <input type="text"
						class="form-control" placeholder="" id="first" name="tenphim">
				</div>
			</div>
			<!--  col-md-6   -->

			<div class="col-md-6">
				<div class="form-group">
					<label for="last">Thời lượng</label> <input type="text"
						class="form-control" placeholder="" id="last" name="thơiluong">
				</div>
			</div>
			<!--  col-md-6   -->
		</div>


		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="company">Nhà sản xuất</label> <input type="text"
						class="form-control" placeholder="" id="company" name="nhasanxuat">
				</div>


			</div>
			<!--  col-md-6   -->

			<div class="col-md-6">

				<div class="form-group">
					<label for="phone">Độ tuổi</label> <input type="tel"
						class="form-control" id="phone" placeholder="" name="dotuoi">
				</div>
			</div>
			<!--  col-md-6   -->
		</div>
		<!--  row   -->


		<div class="row">
			<div class="col-md-6">

				<div class="form-group">
					<label for="email">Đạo diễn</label> <input type="text"
						class="form-control" id="email" placeholder="" name="daodien">
				</div>
			</div>
			<!--  col-md-6   -->

			<div class="col-md-6">
				<label for="fecha1">Ngày khởi chiếu</label>
				<div class="form-group mb-4">
					<div class="datepicker date input-group">
						<input type="text" placeholder="Choose Date" class="form-control"
							id="fecha1" name="ngaykhoichieu">
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
						class="form-control" id="email" placeholder="" name="linktrailer">
				</div>
			</div>
			<!--  col-md-6   -->

			<div class="col-md-6">
				<label for="fecha1">Ngày kết thúc</label>
				<div class="form-group mb-4">
					<div class="datepicker date input-group">
						<input type="text" placeholder="Choose Date" class="form-control"
							id="fecha1" name="ngayketthuc">
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
						class="form-control" placeholder="" id="company" name="linkanh">
				</div>


			</div>
			<!--  col-md-6   -->

			<div class="col-md-6">

				<div class="form-group">
					<h6>Thể loại</h6>
					<select class="custom-select" id="gender2" name="theloai">
						<option selected>Choose...</option>
						<option value="1">Male</option>
						<option value="2">Female</option>
					</select>
				</div>
			</div>
			<!--  col-md-6   -->
		</div>
		<!--  row   -->
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="company1">Diễn viên</label> <textarea type="text"
						class="form-control" placeholder="" id="company1" name="dienvien"></textarea>
				</div>


			</div>
			<!--  col-md-6   -->

			<div class="col-md-6">

				<div class="form-group">
					<label for="company2">Mô tả phim</label> <textarea type="text"
						class="form-control" placeholder="" id="company2" name="dienvien"></textarea>
				</div>
			</div>
			<!--  col-md-6   -->
		</div>
		<!--  row   -->

		<button type="submit" class="btn btn-primary">Submit</button>
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
			format : "dd/mm/yyyy"
		});
	});
</script>