<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<style type="text/css">
.header-container{
	position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1;
}
</style>
<title>Document</title>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light header-container">
		<a class="navbar-brand" href="#">Home Page</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="./ListPhim.jsp">Movie<span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="./ScheduleMovie.jsp">Showtimes</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="./CreateScheduleMovie.jsp">Create Showtimes</a>
				</li>
			</ul>
		</div>
	</nav>