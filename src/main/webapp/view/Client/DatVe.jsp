

<%@page import="model.bean.GhePhongChieu"%>
<%@page import="model.bean.Phim"%>
<%@page import="model.bean.PhongChieu"%>
<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.Date"%>
<%@page language="java" import="java.util.ArrayList"%>
<%@page language="java" import="model.bean.LichChieu"%>
<%@page language="java" import="model.bean.GioChieu"%>
<%@page language="java" import="model.bean.PhongChieu"%>

<!-- Start header section -->
<jsp:include page="Header.jsp" flush="true" />


<style>

/* start NgayChieu */
.btn-block {
	display: block;
	width: 100%;
}

.btn-group {
	position: relative;
	display: inline-flex;
	vertical-align: middle;
}

.btn-group-vertical>.btn, .btn-group>.btn {
	position: relative;
	flex: 1 1 auto;
}
/* end NgayChieu */
/* start GioChieu */
.fixP {
	color: black;
	margin: 0;
	transition: all 0.3s;
	display: inline-flex;
	border-radius: 0.5rem;
	padding: 0.7rem 1rem;
	box-shadow: inset 0 0 0 1px currentcolor;
	display: flex;
	align-items: center;
}

.fixP::before {
	content: "->";
	color: black;
	font-size: 0;
	transition: all 0.3s;
}

.fixP:hover {
	padding: 0.7rem 1.4rem;
	background: #fff1;
	text-align: center;
	color: black;
	font-variation-settings: "wght" 700;
	cursor: pointer;
}

.fixWrap {
	margin: 0;
	counter-reset: movie;
	list-style-type: none;
	padding-inline-start: 0rem;
}

.fixDate {
	display: flex;
	align-items: center;
	flex-wrap: wrap;
	gap: 1rem;
	padding: 1rem;
	justify-content: center;
}

.fixTitle {
	transition: all 0.3s 0.1s;
	display: flex;
	counter-increment: movie;
	justify-content: center;
	margin: 0.5rem 0 0.5rem;
	flex-grow: 1;
	flex-basis: 100%;
	color: #9cbbc7;
}

/* end GioChieu */
.btn-light:not(:disabled):not(.disabled).active, .btn-light:not(:disabled):not(.disabled):active,
	.show>.btn-light.dropdown-toggle {
	color: #283e59;
	background-color: #c7d6ec;
	border-color: #bdcfe9;
}
/* start book seat */
*, *:before, *:after {
	box-sizing: border-box;
}

.theatre {
	margin: 20px auto;
	width: 100%;
	max-width: 350px;
	border-radius: 5px;
	background-color: #fff;
	padding: 20px 10px;
	box-shadow: 0px 0px 17px -4px #000;
}

.screen-side {
	text-align: center;
}

.screen-side .screen {
	height: 25px;
	margin: 0 20px;
	border-radius: 50%;
	box-shadow: 0px -3px 0px 1px #ccc;
	color: #ccc;
}

.screen-side .select-text {
	color: #969696;
}

.exit {
	position: relative;
	height: 50px;
}

.exit:before, .exit:after {
	content: "EXIT";
	font-size: 16px;
	line-height: 18px;
	padding: 0px 10px;
	font-family: "Arial Narrow", Arial, sans-serif;
	display: block;
	position: absolute;
	background: #81c784;
	color: white;
	top: 50%;
	transform: translate(0, -50%);
}

.exit:before {
	left: 0;
}

.exit:after {
	right: 0;
}

.fixeSeat {
	list-style: none;
	padding: 0;
	margin: 4px;
}

.seats {
	display: flex;
	flex-direction: row;
	flex-wrap: nowrap;
	justify-content: flex-start;
	margin-left: -30px;
}

.seat {
	display: flex;
	flex: 0 0 25.28571%;
	padding: 5px;
	position: relative;
}

.seat:nth-child(3) {
	margin-right: 14.28571%;
}

.seat input[type="checkbox"] {
	position: absolute;
	opacity: 0;
}

.seat input[type="checkbox"]:checked+label {
	background: #bada55;
	-webkit-animation-name: rubberBand;
	animation-name: rubberBand;
	animation-duration: 300ms;
	animation-fill-mode: both;
}

.seat input[type="checkbox"]:disabled+label {
	background: #ddd;
	text-indent: -9999px;
	overflow: hidden;
}

.seat input[type="checkbox"]:disabled+label:after {
	content: "X";
	text-indent: 0;
	position: absolute;
	top: 4px;
	left: 50%;
	transform: translate(-50%, 0%);
}

.seat input[type="checkbox"]:disabled+label:hover {
	box-shadow: none;
	cursor: not-allowed;
}

.seat label {
	display: block;
	position: relative;
	width: 100%;
	text-align: center;
	font-size: 14px;
	font-weight: bold;
	line-height: 1.5rem;
	padding: 4px 0;
	color: #fff;
	background: #26a69a;
	border-radius: 2px;
	animation-duration: 300ms;
	animation-fill-mode: both;
	transition-duration: 300ms;
}

.seat label:hover {
	cursor: pointer;
	box-shadow: 0px 0 7px 3px #ccc;
}

@
-webkit-keyframes rubberBand { 0% {
	-webkit-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
}

30
%
{
-webkit-transform
:
scale3d(
1.25
,
0.75
,
1
);
transform
:
scale3d(
1.25
,
0.75
,
1
);
}
40
%
{
-webkit-transform
:
scale3d(
0.75
,
1.25
,
1
);
transform
:
scale3d(
0.75
,
1.25
,
1
);
}
50
%
{
-webkit-transform
:
scale3d(
1.15
,
0.85
,
1
);
transform
:
scale3d(
1.15
,
0.85
,
1
);
}
65
%
{
-webkit-transform
:
scale3d(
0.95
,
1.05
,
1
);
transform
:
scale3d(
0.95
,
1.05
,
1
);
}
75
%
{
-webkit-transform
:
scale3d(
1.05
,
0.95
,
1
);
transform
:
scale3d(
1.05
,
0.95
,
1
);
}
100
%
{
-webkit-transform
:
scale3d(
1
,
1
,
1
);
transform
:
scale3d(
1
,
1
,
1
);
}
}
@
keyframes rubberBand { 0% {
	-webkit-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
}

30
%
{
-webkit-transform
:
scale3d(
1.25
,
0.75
,
1
);
transform
:
scale3d(
1.25
,
0.75
,
1
);
}
40
%
{
-webkit-transform
:
scale3d(
0.75
,
1.25
,
1
);
transform
:
scale3d(
0.75
,
1.25
,
1
);
}
50
%
{
-webkit-transform
:
scale3d(
1.15
,
0.85
,
1
);
transform
:
scale3d(
1.15
,
0.85
,
1
);
}
65
%
{
-webkit-transform
:
scale3d(
0.95
,
1.05
,
1
);
transform
:
scale3d(
0.95
,
1.05
,
1
);
}
75
%
{
-webkit-transform
:
scale3d(
1.05
,
0.95
,
1
);
transform
:
scale3d(
1.05
,
0.95
,
1
);
}
100
%
{
-webkit-transform
:
scale3d(
1
,
1
,
1
);
transform
:
scale3d(
1
,
1
,
1
);
}
}
.rubberBand {
	-webkit-animation-name: rubberBand;
	animation-name: rubberBand;
}
/* end book seat */
.fixHeading {
	text-transform: uppercase;
	background-image: linear-gradient(to right top, #ffff34, #ffc812, #ff8f2f, #ff554d,
		#eb1267);
	background-size: 20% auto;
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	font-family: 'Poppins', sans-serif;
	font-size: 30px;
	animation: gradientAnim 7.5s ease alternate infinite;
}

@
keyframes gradientAnim {to { background-position:100%top;
	
}
}
</style>

<div class="container mt-4">
	<div class="row">
		<div class="col-md-12">
			<h2 class="fixHeading text-center">Mua Vé Trực Tuyến</h2>
			<div class="btn-group btn-block mb-3" id="dates">
				<%
				if (request.getAttribute("msg") != null)
				{
					out.print(request.getAttribute("msg").toString());
				}
				ArrayList<Date> ngayChieuArray = (ArrayList<Date>) request.getAttribute("ngayChieus");
				ArrayList<PhongChieu> phongChieuArray = (ArrayList<PhongChieu>) request.getAttribute("phongChieus");
				ArrayList<GioChieu> gioChieuArray = (ArrayList<GioChieu>) request.getAttribute("gioChieus");
				ArrayList<GhePhongChieu> ghes = new ArrayList<GhePhongChieu>();
				ghes =	(ArrayList<GhePhongChieu>) request.getAttribute("ghes");
				ArrayList<GhePhongChieu> ghesDaDat = (ArrayList<GhePhongChieu>) request.getAttribute("ghesDaDat");
				Phim phim = (Phim) request.getAttribute("phim");
				int lichChieu =0;
				if(request.getAttribute("idlichChieu")!=null)
					lichChieu = (Integer) request.getAttribute("idlichChieu");
				Date date = ngayChieuArray.get(0);
				if (request.getAttribute("date") != null)
					date = (Date) request.getAttribute("date");
				int idPhongChieu = 0;
				if (phongChieuArray != null && !phongChieuArray.isEmpty())
					idPhongChieu = phongChieuArray.get(0).getIdPhong();
				if (request.getAttribute("idPhongChieu") != null)
					idPhongChieu = (Integer) request.getAttribute("idPhongChieu");
				int idGioChieu = 0;
				if (request.getAttribute("idGioChieu") != null)
					idGioChieu = (Integer) request.getAttribute("idGioChieu");
				for (int i = 0; i < ngayChieuArray.size(); ++i) {
				%>
				<a class="btn btn-light text-muted date" data-date="2022-12-02"
					href="DatVe?idPhim=<%=phim.getIdPhim()%>&ngay=<%=ngayChieuArray.get(i)%>">
					<%=ngayChieuArray.get(i).toString()%> <br /> <span
					class="small text-nowrap">Th 12</span>
				</a>
				<%
				}
				%>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<ol class="fixWrap">
				<li class="fixDate">
					<h2 class="fixTitle">Phòng</h2> <%
 if (!phongChieuArray.isEmpty())
 	for (int i = 0; i < phongChieuArray.size(); i++) {
 %> <a
					class="fixP"
					href="DatVe?idPhim=<%=phim.getIdPhim()%>&idPhongChieu=<%=phongChieuArray.get(i).getIdPhong()%>&ngay=<%=date%>"><%=phongChieuArray.get(i).getTenPhong()%></a>
					<%
					}
					else {
					%>
					<p class="fixP">Rong</p> <%
 }
 %>
				</li>
			</ol>
		</div>
		<div class="col-md-6">
			<ol class="fixWrap">
				<li class="fixDate">
					<h2 class="fixTitle">Giờ chiếu</h2> <%
 if (gioChieuArray != null)
 	for (int i = 0; i < gioChieuArray.size(); i++) {
 %> <a
					class="fixP"
					href="DatVe?idPhim=<%=phim.getIdPhim()%>&idGioChieu=<%=gioChieuArray.get(i).getIdGioChieu()%>&idPhongChieu=<%=idPhongChieu%>&ngay=<%=date%>"><%=gioChieuArray.get(i).getGioChieu()%></a>
					<%
					}
					else {
					%>
					<p class="fixP">Rong</p> <%
 }
 %>
				</li>
			</ol>
		</div>
	</div>
	<div class="row mt-4">
		<!-- start form input info -->
		<div class="col-md-6">
			<div class="col-lg-12 edit_information">
				<form action="DatVe?idLichChieu=27" method="get" name="lich" >
					<h3 class="text-center" style="color: #9cbbc7">Thông Tin Giao Dịch</h3>
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="form-group">
								<label class="profile_details_text" for="name">From:</label> <input
									type="text" name="ten" id="name" class="form-control"
									value="" required placeholder="Nhập đầy đủ họ tên..." />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="form-group">
								<label class="profile_details_text" for="phone">To:									Thoại:</label> <input type="tel" name="phone" id="phone"
									class="form-control" value=""
									placeholder="Nhập số điện thoại..." required
									pattern="[0-9]{10}" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="form-group">
								<label class="profile_details_text" for="movie">Dữ liệu:								Phim:</label> <input type="text" name="tenPhim" id="movie" 
									class="form-control" value="<%=phim.getTenPhim() %>" readonly />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="form-group">
								<label class="profile_details_text" for="seatSelect">Ghế
									Đã Đặt:</label> <input type="text" name="ghe" id="seatSelect"
									class="form-control" value="" readonly required />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="form-group">
								<label class="profile_details_text" for="total">Thành
									tiền:</label> <input type="text" name="total" id="total"
									class="form-control" value="0" readonly />
							</div>
						</div>
					</div>
					<!-- <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <div class="form-group">
                    <label class="profile_details_text">Email Address:</label>
                    <input type="email" name="email" class="form-control" value="" required>
                  </div>
                </div>
              </div> -->
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 submit">
							<div class="form-group">
								<button type="submit" class="btn btn-success" value ="<%=lichChieu %>" name = "idLichChieu" style="padding: 7px 228px" >Đặt vé</button>
									
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- end form input info -->
		<div class="col-md-6">
			<!-- start book seat -->
			<div class="theatre">
				<div class="screen-side">
					<div class="screen">Màn hình</div>
					<h3 class="select-text">Vui lòng chọn ghế</h3>
				</div>
				<div class="exit exit--front"></div>
				<ol class="cabin">
					<li class="row row--1">
						<ol class="seats" type="A">
					<%
					if(ghes != null)
					{
					for (int i = 0; i < 6; i++) {
					%>
					
							<li class="seat">
							<input type="checkbox"
								id="<%=ghes.get(i).getIdGhe()%>"
								class="checkSeat" value="<%=ghes.get(i).getIdGhe()%>" /> 
								<label for="<%=ghes.get(i).getIdGhe()%>"><%=ghes.get(i).getTenGhe()%></label>
							</li>
					<%}%>	
					</ol>
					</li>
					<li class="row row--2">
						<ol class="seats" type="A">
					<%
					for (int i = 6; i < 12; i++) {
					%>
					
							<li class="seat"><input type="checkbox" id="<%=ghes.get(i).getIdGhe()%>"
								class="checkSeat" value="<%=ghes.get(i).getIdGhe()%>" /> 
								<label for="<%=ghes.get(i).getIdGhe()%>"><%=ghes.get(i).getTenGhe()%></label>
							</li>
					
					<%}%>	
					</ol>
					</li>
					<li class="row row--3">
						<ol class="seats" type="A">
					<%
					for (int i = 12; i < 18; i++) {
					%>
					
							<li class="seat"><input type="checkbox" id="<%=ghes.get(i).getIdGhe()%>"
								class="checkSeat" value="<%=ghes.get(i).getIdGhe()%>" /> 
								<label for="<%=ghes.get(i).getIdGhe()%>"><%=ghes.get(i).getTenGhe()%></label>
							</li>
					
					<%}%>	
					</ol>
					</li>
					<li class="row row--4">
						<ol class="seats" type="A">
					<%
					for (int i = 18; i < 24; i++) {
					%>
					
							<li class="seat"><input type="checkbox" id="<%=ghes.get(i).getIdGhe()%>"
								class="checkSeat" value="<%=ghes.get(i).getIdGhe()%>" /> 
								<label for="<%=ghes.get(i).getIdGhe()%>"><%=ghes.get(i).getTenGhe()%></label>
							</li>
					
					<%}%>	
					</ol>
					</li>
					<li class="row row--5">
						<ol class="seats" type="A">
					<%
					for (int i = 24; i < 30; i++) {
					%>
							<li class="seat"><input type="checkbox" id="<%=ghes.get(i).getIdGhe()%>"
								class="checkSeat" value="<%=ghes.get(i).getIdGhe()%>" /> 
								<label for="<%=ghes.get(i).getIdGhe()%>"><%=ghes.get(i).getTenGhe()%></label>
							</li>
					<%}}%>
						
					</ol>
					</li>

				

				</ol>
				<div class="exit exit--back"></div>
			</div>
			<!-- end book seat -->
		</div>
	</div>
</div>
<script>
      const container =  document.querySelector('.cabin');
      const seats = document.querySelectorAll('.row .seat .checkSeat');
      const total = document.getElementById('total');
      const movieSelect = document.querySelector('.checkSeat');
      function updateSelectedCount() {
        const selectedSeats = document.querySelectorAll('.row .seat input[type="checkbox"]:checked');
          var seatList = []
         for(var i = 0; i<selectedSeats.length;i++){
         seatList.push(selectedSeats[i].value)
          }
          
          document.getElementById("seatSelect").value = seatList;
        const selectedSeatsCount = selectedSeats.length;
          document.getElementById("total").value = selectedSeatsCount * 50000;
      }
      movieSelect.addEventListener('change', e => {
        updateSelectedCount();
      })
      container.addEventListener('click', e => {
      if(e.target.classList.contains('checkSeat')) {
    updateSelectedCount();
  }
})
  </script>
<jsp:include page="Footer.jsp" flush="true" />