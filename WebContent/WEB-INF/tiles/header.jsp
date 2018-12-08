<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>

<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
	<a class="navbar-brand" href="<c:url value="/"/>">Counseling</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarsExampleDefault"
		aria-controls="navbarsExampleDefault" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
			<a class="nav-link" href="<c:url value="/"/>">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">About</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
			<sec:authorize access="hasAnyRole('ROLE_USER','ROLE_TEACHER')">
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/contactlist">Messages</a></li>
		
		
	</sec:authorize>
		</ul>
		<ul class="nav navbar-nav navbar-right ">
			<sec:authorize access=" !isAuthenticated()">
			<li>
			<a href="<c:url value='/login'/>">Login</a>
			</li>
			</sec:authorize> 
			<sec:authorize access="isAuthenticated()">
			<li>
		<c:url var="logout" value="/logout" />
		<form action="${logout}" method="post">
		<input type="submit" value="Logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		</sec:authorize>
		<li>
		</ul>
	</div>
</nav>