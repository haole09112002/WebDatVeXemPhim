<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.Phim"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%  
		List<Phim> phims = (ArrayList<Phim>) request.getAttribute("phims");
		if(phims != null)
		{
			for(Phim p : phims)
			out.print(p.getTenPhim());
		}
			%>
		
		
		
	

</body>
</html>