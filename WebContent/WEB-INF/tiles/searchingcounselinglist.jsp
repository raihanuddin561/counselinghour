
	<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<form method="post" action="${pageContext.request.contextPath}/counselinglist">
		<div class="control-group">
			<label class="control-label" for="name">Search teacher
				Initial Id</label>
			<div class="controls">
				<input id="t_initial_id" name="t_initial_id" class="input-xlarge"
					type="text" />

			</div>
		
				<button>View List</button>
			</div>
	</form>
	<c:choose>
	<c:when test="${hasList }">
	<table class="table table-striped" border="1">
		<tr>
			<th>Day</th>
			<th>Teacher Initial</th>
			<th>8.30-10.00</th>
			<th>10.00-11.30</th>
			<th>11.30-1.00</th>
			<th>1.00-2.30</th>
			<th>2.30-4.00</th>
			<th>4.00-5.30</th>
			<th>Options</th>
		</tr>
		<c:forEach var="row" items="${list}">
			<tr>
				<td><c:out value="${row.day}"></c:out></td>
				<td><c:out value="${row.t_initial_id}"></c:out></td>
				<td><c:out value="${row.time1}"></c:out></td>
				<td><c:out value="${row.time2}"></c:out></td>
				<td><c:out value="${row.time3}"></c:out></td>
				<td><c:out value="${row.time4}"></c:out></td>
				<td><c:out value="${row.time5}"></c:out></td>
				<td><c:out value="${row.time6}"></c:out></td>
				<td><a href="${pageContext.request.contextPath}/updatecounseling">Update</a></td>
			</tr>
		</c:forEach>
	</table>
	</c:when>
	<c:otherwise>Choose teacher initial.</c:otherwise>
</c:choose>