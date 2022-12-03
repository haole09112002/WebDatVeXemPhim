<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.ArrayList" %>
<%@page language="java" import="model.bean.Phim" %>
<!-- Start header section -->
<jsp:include page="Header.jsp" flush="true" />
<style>
  * {
    box-sizing: border-box;
  }



 .body-container {
    margin-top: 60px;
  }



 .description-container {
    position: relative;
    height: 80%;
  }





 .main-description h3 {
    font-size: 2rem;
  }



 .add-inputs,
  .add-inputs input {
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
    Phim phim = (Phim)request.getAttribute("phim");
%>
  <div class="row">
    <div class="col-md-6 col-sm-12">
      <img
        class="img-fluid details-img"
        src="<%= phim.getLinkAnh() %>"
        alt="img"
        style=" width:100%;
        height: 300px;
        object-fit: fill;"
      />
      <iframe  height="300" src="https://www.youtube.com/embed/<%= phim.getLinkTrailer() %>" title="HTTP Status 404 - /sample/servlet/Sample:The requested resource is not available." frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"  style="width:100%; margin: 17px 0px;"allowfullscreen></iframe>
    </div>
    <div class="col-md-6 col-sm-12 description-container">
      <div class="main-description">
        <h3>Tên Phim : <%= phim.getTenPhim() %></h3>
        <p class="movie-price">Giá vé: 19$</p>



       <p class="movie-title mt-4 mb-1">Mô Tả</p>
        <p class="movie-description mb-4">
          <%= phim.getMoTa() %>
        </p>
        <div class="d-flex justify-content-between">
                <p class="movie-thoi-luong d-inline-block">Thời lượng : <%= phim.getThoiLuong() %> phút</p>
                <p class="movie-the-loai d-inline-block">Thể loại : <%= phim.getIdTheLoai() %></p>
        </div>
        <div class="d-flex justify-content-between">
            <p class="movie-dao-dien d-inline-block">Đạo diễn : <%= phim.getDaoDien() %></p>
            <p class="movie-do-tuoi d-inline-block">Độ tuổi : <%= phim.getDoTuoi() %> tuổi</p>
        </div>
        <div class="d-flex justify-content-between">
            <p class="movie-ngay-khoi-chieu d-inline-block">
                Ngày khởi chiếu : <%= phim.getNgayKhoiChieu() %>
              </p>
            <p class="movie-quoc-gia d-inline-block">Quốc gia : <%= phim.getQuocGia() %></p>
         </div>
        <p class="movie-dien-vien">
          Diễn viên : <%= phim.getDienVien() %>
        </p>
        <div class="mt-3 d-flex justify-content-center">
            <form class="add-inputs" method="get">
              <button
                name="add_to_cart"
                type="submit"
                class="btn btn-primary btn-lg"
                value = "<%-- <%= phim.get(0).getIdPhim() %> --%>"
              >
                MUA VÉ
              </button>
            </form>
          </div>
        <div style="clear: both"></div>
      </div>
    </div>
  </div>
  <!-- End row -->
</div>
<jsp:include page="Footer.jsp" flush="true" />