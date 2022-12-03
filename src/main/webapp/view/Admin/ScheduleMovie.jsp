<%@page import="model.dao.LichChieuDAO"%>
<%@page import="model.bean.LichChieuDetail"%>
<%@page import="model.bean.LichChieu"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.PhongChieu"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!-- Start header section -->
<jsp:include page="header.jsp" flush="true" />

<style>
html {
	font-size: 90%;
}

body {
	background: #212423;
	color: white;
	font-family: "manrope", sans-serif;
}

p {
	color: #9CBBC7;
	margin: 0;
	transition: all .3s;
	display: inline-flex;
	border-radius: .5rem;
	padding: .7rem 1rem;
	box-shadow: inset 0 0 0 1px currentcolor;
	display: flex;
	align-items: center; &:: before { content : "->";
	color: #9CBBC7;
	font-size: 0;
	transition: all .3s;
}

&
:hover {
	padding: .7rem 1.4rem;
	background: #FFF1;
	text-align: center;
	color: white;
	font-variation-settings: 'wght' 700; &:: before { font-size : 1rem;
	margin-left: -.5rem;
	margin-inline-end: .3rem;
}

}
}
.body-schedule-movie {
	margin-top: 20px;
}

.select-show-schedule-movie {
	margin-top: 50px;
}

.ol-schedule-movie {
	margin: 0;
	counter-reset: movie;
	list-style-type: none;
	padding-inline-start: 0rem;
}

.ol-schedule-movie li {
	display: flex;
	align-items: center;
	flex-wrap: wrap;
	line-height: 2rem;
	gap: 1rem;
	padding: 1rem;
	padding-inline-start: 2rem;
	&:
	hover
	{
	h2
	{
	color
	:
	white;
}

}
padding-block-end: 1.2rem ; &:not(:first-child) {
	border-top: 1px dotted #FFF2;
}

h2 {
	transition: all .3s .1s;
	display: flex;
	counter-increment: movie;
	margin: .5rem 0 .5rem;
	flex-grow: 1;
	flex-basis: 100%;
	color: #9CBBC7; &: after { content : counter( movie);
	margin-inline-end: .4rem;
	order: -1;
}

&
::before {
	content: '::';
	font-variation-settings: 'wght' 100;
	margin-inline-end: .4rem;
}

}
}
.riga {
	background: #FFF1;
	padding: 20px;
	margin-bottom: 20px;
}
</style>
<div class="select-show-schedule-movie">
	<div class="col-sm-12 col-lg-12 riga box-variants">
		<div class="form-group">
			<label for="coloreVariante" class="col-xs-12 control-label">select
				room</label>
			<form method="get" action="Admin">
				<div class="col-xs-12 ">
					<select data-selectprod-id="138"
						class="form-control selectprodvariants " name="tenphong">
						<%
						List<PhongChieu> listPC = (ArrayList<PhongChieu>) request.getAttribute("listphongchieu");
						PhongChieu pcfist = listPC.get(1);
						listPC.remove(1);
						%>
						<option selected value="<%=pcfist.getIdPhong()%>"><%=pcfist.getTenPhong()%></option>
						<%
						for (PhongChieu i : listPC) {
						%>
						<option value="<%=i.getIdPhong()%>"><%=i.getTenPhong()%>
						</option>
						<%
						}
						%>
					</select>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
		</div>

		<div class="container col-sm-12 col-lg-14">
			<label for="coloreVariante" class="col-xs-12 control-label">Select
				date</label>

			<!-- Date Picker -->
			<div class="form-group mb-4">
				<div class="datepicker date input-group">
					<input type="text" name="chonngay" value="2022-11-30"
						class="form-control" id="fecha1">
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


		<div class="col-xs-12">
			<hr>
			<button type="submit" class="btn btn-primary btn-duplicate"
				name="LichChieu" value="Show">Show</button>
		</div>
		</form>
	</div>
</div>
<%
if (request.getAttribute("listlichchieudetail") != null) {
	List<LichChieuDetail> listLichChieu = (ArrayList<LichChieuDetail>) request.getAttribute("listlichchieudetail");
%>
<div class="body-schedule-movie">
	<ol class="ol-schedule-movie">
		<%
		List<String> listTenPhim = (ArrayList<String>) request.getAttribute("listTenPhimSearch");
		for (String i : listTenPhim) {
		%>
		<li>
			<h2><%=i%>
			</h2> <%
 for (LichChieuDetail j : listLichChieu) {
 	if (j.getTenPhim().equals(i)) {
 %>
			<p><%=j.getGioChieu().toString()%></p> <%}}}}
 %>
		</li>
	</ol>
</div>
<script>
	$(function() {
		$('.datepicker').datepicker({
			language : "es",
			autoclose : true,
			format : "yyyy-mm-dd"
		});
	});
</script>