<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!-- Start header section -->
<jsp:include page="header.jsp" flush="true" />

<style>
.body-container{
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
	<h1>Danh sách phim</h1>
	<div class="row">
		<div class="col-md-12">
			<table class="table">
				<tr class="table-header">
					<th class="cell">S.no</th>
					<th class="cell">Tên phim</th>
					<th class="cell">Xem chi tiết</th>
					<th class="cell">Cập nhật</th>
					<th class="cell">Xóa</th>
				</tr>
				<tr class="active">
					<td>1</td>
					<td>Avenger:Ending</td>
					<td><a href=”″>Xem chi tiết</a></td>
					<td><a href=”″>Cập nhật</a></td>
					<td><a href=”″>Xóa</a></td>
				</tr>
				<tr>
					<td>2</td>
					<td>Gia đình phép thuật</td>
					<td><a href=”″>Xem chi tiết</a></td>
					<td><a href=”″>Cập nhật</a></td>
					<td><a href=”″>Xóa</a></td>
				</tr>
				<tr class="active">
					<td>3</td>
					<td>Tom and jerry</td>
					<td><a href=”″>Xem chi tiết</a></td>
					<td><a href=”″>Cập nhật</a></td>
					<td><a href=”″>Xóa</a></td>
				</tr>
				<tr>
					<td>4</td>
					<td>Bất ngờ chưa ông già</td>
					<td><a href=”″>Xem chi tiết</a></td>
					<td><a href=”″>Cập nhật</a></td>
					<td><a href=”″>Xóa</a></td>
				</tr>
				<tr class="active">
					<td>5</td>
					<td>Ôi thật bất ngờ</td>
					<td><a href=”″>Xem chi tiết</a></td>
					<td><a href=”″>Cập nhật</a></td>
					<td><a href=”″>Xóa</a></td>
				</tr>
			</table>
			<button class="btn btn-outline-secondary">Thêm phim</button>
		</div>
	</div>
</div>