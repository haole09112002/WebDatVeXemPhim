<%@page language="java" contentType="text/html; charset=utf-8"
pageEncoding="UTF-8" %>
<!-- Start header section -->
<link rel="stylesheet" href="../../assets/css/app.css">
<link rel="stylesheet" href="../../assets/icon/themify-icons/themify-icons.css">
<jsp:include page="Header.jsp" flush="true" />



<div class="container mt-4">
  <div class="row">
    <div class="col-md-12">
      <h2 class="text-center">Đặt Vé Trực Tuyến</h2>
      <div class="btn-group btn-block mb-3" id="dates">
        <a class="btn btn-light text-muted date active" data-date="2022-12-02">
          "1/12"
          <br />
          <span class="small text-nowrap">Th 12</span>
        </a>
        <a class="btn btn-light text-muted date" data-date="2022-12-03">
          "1/12"
          <br />
          <span class="small text-nowrap">Th 12</span>
        </a>
        <a class="btn btn-light text-muted date" data-date="2022-12-04">
          "1/12"
          <br />
          <span class="small text-nowrap">Th 12</span>
        </a>
        <a class="btn btn-light text-muted date" data-date="2022-12-05">
          "1/12"
          <br />
          <span class="small text-nowrap">Th 12</span>
        </a>
        <a class="btn btn-light text-muted date" data-date="2022-12-06">
          "1/12"
          <br />
          <span class="small text-nowrap">Th 12</span>
        </a>
        <a class="btn btn-light text-muted date" data-date="2022-12-07">
          "1/12"
          <br />
          <span class="small text-nowrap">Th 12</span>
        </a>
      </div>
    </div>
  </div>
  <ol class="fixWrap">
    <li class="fixDate">
      <h2 class="fixTitle">Giờ Chiếu</h2>
      <p class="fixP">15:30</p>
      <p class="fixP">18:45</p>
    </li>
  </ol>
  <div class="row">
    <!-- start form input info -->
    <div class="col-md-8">
        <div class="container">
            <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-12 col-xs-12 edit_information">
                <form action=""  method="POST">	
                    <h3 class="text-center">Edit Personal Information</h3>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label class="profile_details_text">First Name:</label>
                                <input type="text" name="first_name" class="form-control" value="" required >
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label class="profile_details_text">Last Name: </label>
                                <input type="text" name="last_name" class="form-control" value="" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <label class="profile_details_text">Email Address:</label>
                                <input type="email" name="email" class="form-control" value="" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <label class="profile_details_text">Mobile Number:</label>
                                <input type="tel" name="phone" class="form-control" value="" required pattern=[0-9]{10}>
                                
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <label class="profile_details_text">Date Of Birth:</label>
                                <input type="date" name="birthday" class="form-control" value="" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <label class="profile_details_text">Gender:</label>
                                <select name="gender" class="form-control" value="" required>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <label class="profile_details_text">Nationality:</label>
                                <input type="text" name="nationality" class="form-control" value="" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <label class="profile_details_text">Monthly Income:</label>
                                <input type="text" name="monthly_income" class="form-control" value="" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 submit">
                            <div class="form-group">
                                <input type="submit" class="btn btn-success" value="Submit">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- end form input info -->
    <div class="col-md-4">
        
        <!-- start book seat -->
<div class="theatre">
    <div class="screen-side">
      <div class="screen">Màn hình</div>
      <h3 class="select-text">Vui lòng chọn ghế</h3>
    </div>
    <div class="exit exit--front">
    </div>
    <ol class="cabin">
      <li class="row row--1">
        <ol class="seats" type="A">
          <li class="seat">
            <input type="checkbox" id="1A" />
            <label for="1A">1A</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="1B" />
            <label for="1B">1B</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="1C" />
            <label for="1C">1C</label>
          </li>
          <li class="seat">
            <input type="checkbox" disabled id="1D" />
            <label for="1D">Occupied</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="1E" />
            <label for="1E">1E</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="1F" />
            <label for="1F">1F</label>
          </li>
        </ol>
      </li>
      <li class="row row--2">
        <ol class="seats" type="A">
          <li class="seat">
            <input type="checkbox" id="2A" />
            <label for="2A">2A</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="2B" />
            <label for="2B">2B</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="2C" />
            <label for="2C">2C</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="2D" />
            <label for="2D">2D</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="2E" />
            <label for="2E">2E</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="2F" />
            <label for="2F">2F</label>
          </li>
        </ol>
      </li>
      <li class="row row--3">
        <ol class="seats" type="A">
          <li class="seat">
            <input type="checkbox" id="3A" />
            <label for="3A">3A</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="3B" />
            <label for="3B">3B</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="3C" />
            <label for="3C">3C</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="3D" />
            <label for="3D">3D</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="3E" />
            <label for="3E">3E</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="3F" />
            <label for="3F">3F</label>
          </li>
        </ol>
      </li>
      <li class="row row--4">
        <ol class="seats" type="A">
          <li class="seat">
            <input type="checkbox" id="4A" />
            <label for="4A">4A</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="4B" />
            <label for="4B">4B</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="4C" />
            <label for="4C">4C</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="4D" />
            <label for="4D">4D</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="4E" />
            <label for="4E">4E</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="4F" />
            <label for="4F">4F</label>
          </li>
        </ol>
      </li>
      <li class="row row--5">
        <ol class="seats" type="A">
          <li class="seat">
            <input type="checkbox" id="5A" />
            <label for="5A">5A</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="5B" />
            <label for="5B">5B</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="5C" />
            <label for="5C">5C</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="5D" />
            <label for="5D">5D</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="5E" />
            <label for="5E">5E</label>
          </li>
          <li class="seat">
            <input type="checkbox" id="5F" />
            <label for="5F">5F</label>
          </li>
        </ol>
      </li>
      </li>
    </ol>
    <div class="exit exit--back">
    </div>
  </div>
  <!-- end book seat -->
    </div>
  </div>
</div>
<jsp:include page="Footer.jsp" flush="true" />
