<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:wrapper>
	<h3>jquery datatable sample</h3>
	<h4>Persons count: ${fn:length(persons)}</h4>
	<table id="table_id">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Location</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${persons}" var="person" varStatus="status">
				<tr>
					<td>${person.id}</td>
					<td>${person.name}</td>
					<td>${person.location}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<script src="${cp}/resources/js/jquery.js"></script>
	<script src="${cp}/resources/js/jquery.dataTables.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#table_id').dataTable();
		});
	</script>
</t:wrapper>