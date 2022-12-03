<%@page import="model.bean.GioChieu"%>
<%@page import="model.bean.PhongChieu"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.Phim"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!-- Start header section -->
<jsp:include page="header.jsp" flush="true" />

<style>
.riga {
	background: #cbb;
	padding: 20px;
	margin-bottom: 20px;
}

.box-variants {
	margin-top: 55px;
}
</style>
<form method="post" action="Admin">
	<div class="col-sm-12 col-lg-12 riga box-variants">
		<div class="container col-sm-12 col-lg-14">
			<!-- Date Picker -->
			<div class="form-group mb-4">
				<div class="datepicker date input-group">
					<input type="text" value="2022-11-30" class="form-control"
						id="fecha1" name="chonngay">
					<div class="input-group-append">
						<span class="input-group-text"><i class="fa fa-calendar"></i></span>
					</div>
				</div>
			</div>
			<!-- // Date Picker -->
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

		<div class="form-group">
			<label for="coloreVariante" class="col-xs-12 control-label">Chọn
				phim</label>
			<%
			if (request.getAttribute("phims") != null) {
				List<Phim> phims = (ArrayList<Phim>) request.getAttribute("phims");
				Phim fistPhim = phims.get(1);
				phims.remove(1);
			%>

			<div class="col-xs-12 ">
				<select data-selectprod-id="138"
					class="form-control selectprodvariants  " name="idphim">
					<option selected value="<%=fistPhim.getIdPhim()%>"><%=fistPhim.getTenPhim()%></option>
					<%
					for (Phim i : phims) {
					%>
					<option value="<%=i.getIdPhim()%>">
						<%=i.getTenPhim()%></option>
					<%
					}
					%>
				</select>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
		<%
		}
		%>
		<div class="form-group">
			<label for="" class="col-xs-12 control-label">Chọn phòng</label>

			<%
			if (request.getAttribute("phongchieus") != null) {
				List<PhongChieu> phongChieus = (ArrayList<PhongChieu>) request.getAttribute("phongchieus");
				PhongChieu fistPhongChieu = phongChieus.get(1);
				phongChieus.remove(1);
			%>

			<div class="col-xs-12 ">
				<select data-selectprod-id="153"
					class="form-control selectprodmaterials " name="idphong">
					<option selected value="<%=fistPhongChieu.getIdPhong()%>">
						<%=fistPhongChieu.getTenPhong()%></option>
					<%
					for (PhongChieu i : phongChieus) {
					%>
					<option value="<%=i.getIdPhong()%>">
						<%=i.getTenPhong()%></option>
					<%
					}
					%>
				</select>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
		<%
		}
		%>
		<%
		if (request.getAttribute("giochieus") != null) {
			List<GioChieu> gioChieus = (ArrayList<GioChieu>) request.getAttribute("giochieus");
			GioChieu fistGioChieu = gioChieus.get(1);
			gioChieus.remove(1);
		%>
		<div class="form-group">
			<label for="" class="col-xs-12 control-label">Chọn giờ chiếu</label>
			<div class="col-xs-12 ">
				<select data-selectprod-id="153"
					class="form-control selectprodmaterials " name="idgiochieu">
					<option selected value="<%=fistGioChieu.getIdGioChieu()%>">
						<%=fistGioChieu.getGioChieu().toString()%></option>
					<%
					for (GioChieu i : gioChieus) {
					%>
					<option value="<%=i.getIdGioChieu()%>">
						<%=i.getGioChieu()%></option>
					<%
					}
					%>
				</select>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
		<%
		}
		%>
		<div class="form-group">
			<label for="first">Giá</label> <input type="text"
				class="form-control" placeholder="" id="first" name="gia">
		</div>
		<div class="col-xs-12">
			<hr>
			<button type="submit" class="btn btn-primary btn-duplicate"
				name="TaoLichChieu" value="Add">Thêm mới</button>
		</div>
	</div>
</form>