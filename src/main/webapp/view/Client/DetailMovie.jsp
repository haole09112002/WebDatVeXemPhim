<%@page language="java" contentType="text/html; charset=utf-8"
pageEncoding="UTF-8"%>
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
  <div class="row">
    <div class="col-md-6 col-sm-12">
      <img
        class="img-fluid details-img"
        src="https://parade.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkwNTgxMjkxNjk3NDQ4ODI4/marveldisney.jpg"
        alt="img"
        style=" width:100%;
        height: 300px;
        object-fit: fill;"
      />
      <iframe  height="300" src="https://www.youtube.com/embed/TcMBFSGVi1c" title="HTTP Status 404 - /sample/servlet/Sample:The requested resource is not available." frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"  style="width:100%; margin: 17px 0px;"allowfullscreen></iframe>
    </div>
    <div class="col-md-6 col-sm-12 description-container">
      <div class="main-description">
        <h3>Tên Phim : Avengers: Endgame</h3>
        <p class="movie-price">Giá vé: $19</p>

        <p class="movie-title mt-4 mb-1">Mô Tả</p>
        <p class="movie-description mb-4">
          Avengers: Hồi kết (tựa gốc tiếng Anh: Avengers: Endgame) là phim điện
          ảnh siêu anh hùng Mỹ ra mắt năm 2019, do Marvel Studios sản xuất và
          Walt Disney Studios Motion Pictures phân phối độc quyền tại thị trường
          Bắc Mỹ. Phim là phần thứ tư của loạt phim Avengers, sau Biệt đội siêu
          anh hùng (2012), Avengers: Đế chế Ultron (2015) và Avengers: Cuộc
          chiến vô cực (2018), đồng thời cũng là phim điện ảnh thứ 22 của Vũ trụ
          Điện ảnh Marvel (MCU).
        </p>
        <div class="d-flex justify-content-between">
                <p class="movie-thoi-luong d-inline-block">Thời lượng : 90 phút</p>
                <p class="movie-the-loai d-inline-block">Thể loại : Siêu anh hùng</p>
        </div>
        <div class="d-flex justify-content-between">
            <p class="movie-dao-dien d-inline-block">Đạo diễn : Anthony Russo, Joe Russo</p>
            <p class="movie-do-tuoi d-inline-block">Độ tuổi : 20 tuổi</p>
        </div>
        <div class="d-flex justify-content-between">
            <p class="movie-ngay-khoi-chieu d-inline-block">
                Ngày khởi chiếu : 22 tháng 4 năm 2019
              </p>
            <p class="movie-quoc-gia d-inline-block">Quốc gia : Mỹ</p>
         </div>
        <p class="movie-dien-vien">
          Diễn viên : Robert Downey Jr. Chris Evans Mark Ruffalo Chris Hemsworth
          Scarlett Johansson Jeremy Renner Don Cheadle Paul Rudd Brie Larson
          Karen Gillan Danai Gurira Benedict Wong Jon Favreau Bradley Cooper
          Gwyneth Paltrow Chadwick Boseman Letitia Wright Josh Brolin
        </p>
        <div class="mt-3 d-flex justify-content-center">
            <form class="add-inputs" method="post">
              <button
                name="add_to_cart"
                type="submit"
                class="btn btn-primary btn-lg"
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
