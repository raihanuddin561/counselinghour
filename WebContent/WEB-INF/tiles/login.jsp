<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<body onload='document.f.username.focus();'>

	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('<c:url value="/static/loginstyle/images/bg-01.jpg"></c:url>');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form" name='f'
					action='${logingUrl }' method='POST'>
					<span class="login100-form-title p-b-49"> Login </span>
					<c:if test="${param.error != null}">
						<span style="color: red">Invalid username or password</span>
					</c:if>
					<div class="wrap-input100 validate-input m-b-23"
						data-validate="Username is reauired">
						<span class="label-input100">Username</span> <input
							class="input100" type="text" name='username'
							placeholder="Type your username"> <span
							class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<span class="label-input100">Password</span> <input
							class="input100" type="password" name='password'
							placeholder="Type your password"> <span
							class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					<div class="form-group float-left">
						<label>Remember me</label> <input type='checkbox'
							name="_spring_security_remember_me" checked="checked" /><br />
					</div>
					<div class="text-right p-t-8 p-b-31">
						<h3>
							<a href="<c:url value='/addnewuser'></c:url>"> Create Account</a>
						</h3>
					</div>
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">Login</button>
						</div>
					</div>
					<div>
						<input name="${_csrf.parameterName}" type="hidden"
							value="${_csrf.token}" />
					</div>

				</form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>
</body>
