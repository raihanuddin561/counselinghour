<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../../../favicon.ico">

<title><tiles:getAsString name="title"></tiles:getAsString></title>

<!-- Bootstrap core CSS -->
<link href="<c:url value='/static/bootstrape/css/bootstrap.min.css' />"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value='/static/css/main.css' />" rel="stylesheet" />
<script src="<c:url value='/static/bootstrape/jquery/Jquery.js' />"></script>
<script src="<c:url value='/static/bootstrape/js/bootstrap.min.js' />"></script>
</head>

<body>
	<div>
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
	</div>
	<div class="content">
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
	<div>
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>

</body>
</html>