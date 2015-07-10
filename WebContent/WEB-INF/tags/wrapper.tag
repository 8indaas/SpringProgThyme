<%@tag description="Simple Wrapper Tag" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cp"
	value="${pageContext.request.servletContext.contextPath}"
	scope="request">
</c:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="${cp}/resources/css/jquery.dataTables_themeroller.css">
<link rel="stylesheet" type="text/css"
	href="${cp}/resources/css/jquery.dataTables.min.css">

</head>
<body>
	<jsp:doBody />
</body>
</html>