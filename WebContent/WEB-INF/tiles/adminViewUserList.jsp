
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="table table-striped" border="1">
	<tr>
		<th>Username</th>
		<th>Password</th>
		<th>Email</th>
		<th>Enabled</th>
		<th>Authority</th>
	</tr>
	<c:forEach var="row" items="${userlist}">
		<tr>
			<td><c:out value="${row.username}"></c:out></td>
			<td><c:out value="${row.password}"></c:out></td>
			<td><c:out value="${row.email}"></c:out></td>
			<td><c:out value="${row.enabled}"></c:out></td>
			<td><c:out value="${row.authority}"></c:out></td>
		</tr>
	</c:forEach>
</table>
