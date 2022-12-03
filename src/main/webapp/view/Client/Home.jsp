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
    background-color: #f8f9fa;
    color: black;
}
  </style>
   <jsp:include page="Header.jsp" flush="true" />
  <div class="row">
    <div class="col-sm-2 m-5">
      <div class="list-group" id="list-tab" role="tablist" style="margin-top: -20px">
        <h6>Danh Mục</h6>
           <% ArrayList<TheLoai> theLoaiArray = (ArrayList<TheLoai>)request.getAttribute("theloais");
           int checkTheLoai = -1;
           if(request.getAttribute("idTheLoai") != null)
           checkTheLoai = (Integer)request.getAttribute("idTheLoai");
               for(int i = 0; i < theLoaiArray.size();++i){
                   
           %>
        <a class="list-group-item <%if(checkTheLoai ==theLoaiArray.get(i).getIdTheLoai() ){ out.println("active"); request.setAttribute("idTheLoai",checkTheLoai);} %>" data-toggle="list" href="Home?idTheLoai=<%= theLoaiArray.get(i).getIdTheLoai() %>" role="tab" name="<%= theLoaiArray.get(i).getIdTheLoai() %>"
          aria-controls="home"><%= theLoaiArray.get(i).getTenTheLoai()%></a>
               <%} %>
      </div>
    </div>
    <div class="col-sm-9">
      <div class="container d-flex mt-4 ml-4">
        <div class="row" id="search-bar">
          <form class="form-inline" action ="Home" method="GET">
            <label class="sr-only" for="inlineFormInputName2">Name</label>
            <input type="text" class="form-control mb-2 mr-sm-2" id="search" placeholder="search name ..."
              name="txtSearch" />
            <button type="submit" class="btn btn-primary mb-2" value="<%=checkTheLoai%>" <%if(checkTheLoai != -1 ) out.print("name="+"idTheLoai"); %> >
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
                <img src="<%= phimArray.get(i).getLinkAnh() %>" alt="" class="card-img-top w-100 p-2" height = "300"/>
                <div class="card-body">
                  <div class="card-title">
                    <h3><%= phimArray.get(i).getTenPhim() %></h3>
                  </div>
                  <div class="d-flex justify-content-between">
                    <p class="card-text"><%= phimArray.get(i).getNgayKhoiChieu() %></p>
                    <p class="card-text mr-2 text-success"><%= phimArray.get(i).getThoiLuong() %></p>
                  </div>
                  <div class="d-flex justify-content-between">
                  <form method="get" action="Home" >
                    <button type="submit" name ="idPhim"  class="btn btn-primary" value ="<%= phimArray.get(i).getIdPhim()%>">
                      Chi Tiết
                    </button></form>
                    <form method="get" action="DatVe">
                    <button type="submit" name="idPhim" class="btn btn-success" value ="<%= phimArray.get(i).getIdPhim()%>">
                      Đặt Vé
                    </button></form>
                  </div>
                </div>
              </div>
            </div>
           
                   <%} %>





         </div>
        </div>
      </div>





   </div>
  </div>
   <jsp:include page="Footer.jsp" flush="true" />
  <!-- Modal -->