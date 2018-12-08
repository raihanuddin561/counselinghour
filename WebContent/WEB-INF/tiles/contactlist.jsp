<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2><a href="${pageContext.request.contextPath }/seemessage?uid=<sec:authentication property='principal.username'/>">See your Messages</a></h2>
<h1>Contact Lists</h1>
<table class="table table-striped" border="1">
	<tr>
		<th>Username</th>
		
		<th>Email</th>
		<th>Option</th>
		
	</tr>
	<c:forEach var="row" items="${contactlist}">
		<tr>
			<td><c:out value="${row.username}"></c:out></td>
			
			<td><c:out value="${row.email}"></c:out></td>
			<td><a href='${pageContext.request.contextPath }/message?uid=<c:out value="${row.username}"></c:out>'>Message</a></td>
		</tr>
	</c:forEach>
</table>
