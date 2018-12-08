<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="${pageContext.request.contextPath}/static/style/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	
	<div class="container">
		<div class="col-md-12 offset-md-3">

			<h1>Send message here</h1>
			<sf:form class="form-horizontal" method="post" commandName="message">
				<fieldset>


					<input type="hidden" name="_flowExecutionKey"
						value="${flowExecutionKey }" /> <input type="hidden"
						name="_eventId" value="send" />

					<!-- Form Name -->

					<div class="form-group">
						<label class="col-md-4 control-label" for="sender">Sender</label>
						<div class="col-md-4">
							<sec:authorize access="isAuthenticated()">
								<input class="form-control input-md" type="text" name="sender"
									value="<sec:authentication property="principal.username"/>" />
							</sec:authorize>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="reciever">Reciever</label>
						<div class="col-md-4">
							<sf:input id="reciever" path="reciever" name="reciever"
								type="text" placeholder="" class="form-control input-md" />
							<sf:errors path="reciever" cssClass="alert-danger"></sf:errors>
						</div>
					</div>


					<div class="form-group">
						<label class="col-md-4 control-label" for="message">Message</label>
						<div class="col-md-4">
							<sf:textarea id="message" path="message" name="message"
								type="text" placeholder="" class="form-control input-md" />
							<sf:errors path="message" cssClass="alert-danger"></sf:errors>
						</div>
					</div>
					<!-- Text input-->



					<!-- Button -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="submit">Send</label>
						<div class="col-md-4">
							<button id="submit" name="submit" class="btn btn-primary">Send</button>
						</div>
					</div>

				</fieldset>
			</sf:form>
		</div>
	</div>



</body>
</html>