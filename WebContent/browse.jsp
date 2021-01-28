<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modal.Product" %>
<%@ page import="java.util.List" %>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of all Products</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="./navbar.jsp" />
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10">
				<h2 class="my-3 text-center">List of all Products</h2>
				<table class="table table-hover">
				<thead>
				<tr>
					<th>Name</th>
					<th>Price</th>
					
				</tr>
				</thead>
				<tbody>
				<%
					List<Product> products = (List<Product>) request.getAttribute("products");
					String dataStr = "";
					for(int i =0; i< products.size(); i++) {
						
						Product p = products.get(i);
						dataStr += "<tr>";

						dataStr += "<td>";
						dataStr += p.getName();
						dataStr += "</td>";

						dataStr += "<td>";
						dataStr += p.getPrice();
						dataStr += "</td>";
						
						dataStr += "<tr>";
					}
					out.println(dataStr);
				%>
				</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>