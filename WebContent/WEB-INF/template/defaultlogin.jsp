
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title><tiles:getAsString name="title"></tiles:getAsString></title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<c:url value='/static/loginstyle/images/icons/favicon.ico'></c:url>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/loginstyle/vendor/bootstrap/css/bootstrap.min.css'></c:url>" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/loginstyle/fonts/font-awesome-4.7.0/css/font-awesome.min.css'></c:url>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/loginstyle/fonts/iconic/css/material-design-iconic-font.min.css'></c:url>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/loginstyle/vendor/animate/animate.css'></c:url>"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/loginstyle/vendor/css-hamburgers/hamburgers.min.css'></c:url>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/loginstyle/vendor/animsition/css/animsition.min.css'></c:url>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/loginstyle/vendor/select2/select2.min.css'></c:url>"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/loginstyle/vendor/daterangepicker/daterangepicker.css'></c:url>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/loginstyle/css/util.css'></c:url>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/loginstyle/css/main.css'></c:url>"/>
<!--===============================================================================================-->
</head>

<body>
	<div>
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
	 </div>
	 
	 <div role="main" class="container">
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	 </div>
	 <div>
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	 </div>
	
	
<!--===============================================================================================-->
	<script src="<c:url value='/static/loginstyle/vendor/jquery/jquery-3.2.1.min.js'></c:url>"></script>
	
<!--===============================================================================================-->
	<script src="<c:url value='/static/loginstyle/vendor/animsition/js/animsition.min.js'></c:url>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/static/loginstyle/vendor/bootstrap/js/popper.js'></c:url>"></script>
	<script src="<c:url value='/static/loginstyle/vendor/bootstrap/js/bootstrap.min.js'></c:url>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/static/loginstyle/vendor/select2/select2.min.js'></c:url>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/static/loginstyle/vendor/daterangepicker/moment.min.js'></c:url> "></script>
	<script src="<c:url value='/static/loginstyle/vendor/daterangepicker/daterangepicker.js'></c:url> "></script>
<!--===============================================================================================-->
	<script src="<c:url value='/static/loginstyle/vendor/countdowntime/countdowntime.js'></c:url> "></script>
<!--===============================================================================================-->
	<script src="<c:url value='/static/loginstyle/js/main.js'></c:url> "></script>
	
	
</body>
</html>