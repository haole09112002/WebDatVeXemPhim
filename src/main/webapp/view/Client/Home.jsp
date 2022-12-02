<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@page language="java" import="java.util.ArrayList" %>
<%@page language="java" import="model.bean.TheLoai" %>
<%@page language="java" import="model.bean.Phim" %>

  <!-- Start header section -->
  <style>
    .product_view .modal-dialog {
      max-width: 800px;
      width: 100%;
    }

    .pre-cost {
      text-decoration: line-through;
      color: #a5a5a5;
    }

    .space-ten {
      padding: 10px 0;
    }

    .card:hover {
      box-shadow: 20px 20px 80px -44px #000;
      transition: .5s ease-in-out;
      cursor: pointer;
    }

    .list-group-item:hover {
    background-color: #007bff;
    color: white;
}
  </style>
   <jsp:include page="Header.jsp" flush="true" />
  <div class="row">
    <div class="col-sm-2 m-5">
      <div class="list-group" id="list-tab" role="tablist" style="margin-top: -20px">
        <h6>Danh Mục</h6>
   		<% ArrayList<TheLoai> theLoaiArray = (ArrayList<TheLoai>)request.getAttribute("theloais");
   			for(int i = 0; i < theLoaiArray.size();++i){
   				
   		%>
        <a class="list-group-item" data-toggle="list" href="../controller/HomeController.java?idTheLoai=<%= theLoaiArray.get(i).getIdTheLoai() %>" role="tab" name="<%= theLoaiArray.get(i).getIdTheLoai() %>"
          aria-controls="home"><%= theLoaiArray.get(i).getTenTheLoai()%></a>
   			<%} %>
      </div>
    </div>
    <div class="col-sm-9">
      <div class="container d-flex mt-4 ml-4">
        <div class="row" id="search-bar">
          <form class="form-inline">
            <label class="sr-only" for="inlineFormInputName2">Name</label>
            <input type="text" class="form-control mb-2 mr-sm-2" id="search" placeholder="search name ..."
              name="txtSearch" />
            <button type="submit" class="btn btn-primary mb-2" id="submit-search">
              Search
            </button>
          </form>
        </div>
      </div>
      <div class="container d-flex mb-5">
        <div class="container product-list">
          <div class="row">
     <% ArrayList<Phim> phimArray = (ArrayList<Phim>)request.getAttribute("phims");
   						for(int i = 0; i < phimArray.size();++i){
   				
   		%>
            <div class="col-md-4 md-5 pb-3">
              <div class="card">
                <img src="https://movie-list.alphacamp.io/posters/c9XxwwhPHdaImA2f1WEfEsbhaFB.jpg" alt="" class="card-img-top w-100 p-2" height = "300"/>
                <div class="card-body">
                  <div class="card-title">
                    <h3><%= phimArray.get(i).getTenPhim() %></h3>
                  </div>
                  <div class="d-flex justify-content-between">
                    <p class="card-text"><%= phimArray.get(i).getNgayKhoiChieu() %></p>
                    <p class="card-text mr-2 text-success"><%= phimArray.get(i).getThoiLuong() %></p>
                  </div>
                  <div class="d-flex justify-content-between">
                    <button type="button" data-target="#product_view" data-toggle="modal" class="btn btn-primary">
                      Chi Tiết
                    </button>
                    <button type="button" data-target="#" data-toggle="modal" class="btn btn-success">
                      Đặt Vé
                    </button>
                  </div>
                </div>
              </div>
            </div>
   				<%} %>



          </div>
        </div>
      </div>



      <div class="modal fade product_view" id="product_view">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h3 class="modal-title">Thông Tin Sản Phẩm</h3>
            </div>
            <div class="modal-body">
              <div class="row">
                <div class="col-md-6">
                  <h4>Product Id: <span>51526</span></h4>
                  <div class="rating">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    (10 reviews)
                  </div>
      
                  <div class="btn-ground">
                    <button type="button" class="btn btn-primary">
                      <span class="glyphicon glyphicon-shopping-cart"></span> Add To
                      Cart
                    </button>
                    <button type="button" class="btn btn-primary">
                      <span class="glyphicon glyphicon-heart"></span> Add To Wishlist
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>


    </div>
  </div>
   <jsp:include page="Footer.jsp" flush="true" />
  <!-- Modal -->