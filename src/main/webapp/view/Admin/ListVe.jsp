<%@page import="model.bean.VeDetail"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.Phim"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!-- Start header section -->
<jsp:include page="header.jsp" flush="true" />

<style>
.body-container {
	margin-top: 60px;
}

h1 {
	font-size: 30px;
}
/*Table Style One*/
.table .table-header {
	background: #FEC107;
	color: #333;
}

.table .table-header .cell {
	padding: 20px;
}

@media screen and (max-width: 640px) {
	table {
		overflow-x: auto;
		display: block;
	}
	.table .table-header .cell {
		padding: 20px 5px;
	}
}
</style>

<div class="container body-container">
	<h1>Danh sách vé</h1>
	<form action="Admin" method="get">
		<div class="form-group d-flex ">
			<button type="submit" class="btn btn-primary btn-duplicate"
				name="DanhSachVeTimKiem" value="search">Tìm kiếm</button>
			<input type="text" style="margin-left: 20px;"
				placeholder="Số điện thoại..." class="form-control" placeholder=""
				id="last" name="sodienthoai">
	</form>
</div>
<div class="row">
	<div class="col-md-12">
		<table class="table">
			<tr class="table-header">
				<th class="cell">ID</th>
				<th class="cell">Tên khách hàng</th>
				<th class="cell">Số điện thoại</th>
				<th class="cell">Phòng chiếu</th>
				<th class="cell">Giờ chiếu</th>
				<th class="cell">Ngày chiếu</th>
				<th class="cell">Tên ghế</th>
			</tr>
			<%
			List<VeDetail> veDetails = (ArrayList<VeDetail>) request.getAttribute("vedetails");
			if (veDetails != null) {
				for (VeDetail v : veDetails) {
			%>
			<tr class="active">
				<td><%=v.getIdVe()%></td>
				<td><%=v.getTenKhachHang()%></td>
				<td><%=v.getSoDienThoai()%></td>
				<td><%=v.getTenPhongChieu()%></td>
				<td><%=v.getGioChieu().toString()%></td>
				<td><%=v.getNgayChieu().toString()%></td>
				<td><%=v.getTenGhe()%></td>
			</tr>
			<%
			}
			}
			%>
		</table>
	</div>
</div>
<form action="Admin" method="get">
		<div class="form-group d-flex ">
			<button type="submit" class="btn btn-primary btn-duplicate"
				name="DanhSachVeTimKiem" value="all"> Show all</button>
	</form>
</div>