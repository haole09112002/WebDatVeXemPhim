<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../../assets/css/app.css" />
    <link
      rel="stylesheet"
      href="../../assets/icon/themify-icons/themify-icons.css"
    />
    <title>Document</title>
    <style>
      .hover-a {
        font-weight: 400;
      }
      .hover-a::after {
        content: "";
        height: 3px;
        width: 0;
        background-color: tomato;
        position: absolute;
        bottom: 0px;
        left: 0;
        transition: all 0.5s ease-in-out;
      }
      .hover-a:hover::after {
        width: 50%;
        transform: translateX(100%);
      }
    </style>
  </head>
  <!-- navigation -->
  <div class="container">
      <nav class="navbar navbar-light bg-light">
        <div> 
        <a class="navbar-brand position-relative hover-a" href="">HOME</a>
        <a class="navbar-brand position-relative hover-a" href="">BUY TICKETS</a>
        </div>
        <a class="navbar-brand position-relative hover-a" href="Login">
        </a>
        </nav>
  </div>
</html>
