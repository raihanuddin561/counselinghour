
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2><a href="${pageContext.request.contextPath }/seemessage">See your Messages</a></h2>
<h1>Contact Lists</h1>
<table class="table table-striped" border="1">
	<tr>
		<th>Id</th>
		
		<th>Sender</th>
		<th>Reciever</th>
		<th>Messages</th>
		<th>Option</th>
	</tr>
	<c:forEach var="row" items="${messages}">
		<tr>
			<td><c:out value="${row.id}"></c:out></td>
			
			<td><c:out value="${row.sender}"></c:out></td>
			<td><c:out value="${row.reciever}"></c:out></td>
			<td><c:out value="${row.message}"></c:out></td>
			<td><a href='${pageContext.request.contextPath }/message?uid=<c:out value="${row.sender}"></c:out>'>Message</a></td>
		</tr>
	</c:forEach>
</table>
