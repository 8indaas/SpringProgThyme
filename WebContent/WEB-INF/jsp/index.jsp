<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request"> </c:set>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script src="${cp}/resources/js/jquery.js"></script>
<script src="${cp}/resources/js/jquery.dataTables.min.js"></script>

<!-- <script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script> -->

<script type="text/javascript">
	$(document).ready(function() {
		$('#table_id').dataTable({
			"bProcessing" : true,
			"sAjaxSource" : '../examples_support/json_source.txt'
		});
	});
</script>
</head>
<body>
	<h3>jquery datatable sample</h3>
	<table id="table_id">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Location</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Row 1 Data 1</td>
				<td>Row 1 Data 2</td>
				<td>etc</td>
			</tr>
			<tr>
				<td>Row 2 Data 1</td>
				<td>Row 2 Data 2</td>
				<td>etc</td>
			</tr>
		</tbody>
	</table>
</body>
</html>