<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<center><b>Welcome to Online Counseling hour</b>
	<br>
	<sec:authorize access="hasAnyRole('ROLE_USER','ROLE_TEACHER')">
		<a href="${pageContext.request.contextPath}/counselingsearch">Counseling list</a>
		<br>
		
	</sec:authorize>
	
	<sec:authorize access="hasRole('ROLE_TEACHER')">
		<a href="${pageContext.request.contextPath}/updatecounseling">Update_Counseling_list</a>
		<br>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<a href="<c:url value="/admin"/>">AdminPage</a>
	</sec:authorize>
	<br>
	</center>