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
				<%
				List<Phim> phims = (ArrayList<Phim>) request.getAttribute("phims");
				if (phims != null) {
					for (Phim p : phims) {
				%>
				<tr class="active">
					<td><%=p.getIdPhim()%></td>
					<td><%=p.getTenPhim()%></td>
					<td><a href="Admin?Xemchitiet:<%=p.getIdPhim()%>">Xem chi
							tiết</a></td>
					<td>
						<form action="Admin" method="get">
							<button type="submit" value="<%=p.getIdPhim()%>" name="capnhat">
								<i class="fa fa-wrench" aria-hidden="true"></i>
							</button>
						</form>
						</a>
					</td>
					<td><form action="Admin" method="post">
							<button type="submit" value="<%=p.getIdPhim()%>" name="delete">
								<i class="fa fa-trash" aria-hidden="true"></i>
							</button>
						</form></td>
				</tr>
				<%
				}
				}
				%>
			</table>
			<form action="Admin?Add:true" method="post">
				<button class="btn btn-outline-secondary" type="submit">Thêm
					phim</button>
			</form>
		</div>
	</div>
</div>