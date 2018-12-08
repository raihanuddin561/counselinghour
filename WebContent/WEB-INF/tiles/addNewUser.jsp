
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="limiter">
		<div class="container-login100"
			style="background-image: url('<c:url value="/static/loginstyle/images/bg-01.jpg"></c:url>');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
		<sf:form class="form-horizontal" method="post"
				action="${pageContext.request.contextPath}/addnewuser"
		commandName="userfrom">
			<fieldset>
	
				<!-- Form Name -->
				<legend>Create new Account</legend>
	
				
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-8 control-label" for="name">User name</label>
					<div class="col-md-8">
						<sf:input id="username" path="username" name="username" type="text" placeholder=""
							class="form-control input-md" />
						<sf:errors path="username" cssClass="alert-danger"></sf:errors>
					</div>
				</div>
				
				
	
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-8 control-label" for="email">Email</label>
					<div class="col-md-8">
						<sf:input id="email" path="email" name="email" type="text" placeholder=""
							class="form-control input-md" />
						<sf:errors path="email" cssClass="alert-danger"></sf:errors>
					</div>
				</div>
				
				<!-- Set Role -->
				<div class="form-group">
					<label class="col-md-8 control-label" for="name">Role</label>
					<div class="col-md-8">
						<sf:select id="authority" path="authority" name="authority" 
							class=" " >
								
					<option>ROLE_TEACHER</option>
					<option>ROLE_USER</option>
					
							</sf:select>
						<sf:errors path="username" cssClass="alert-danger"></sf:errors>
					</div>
				</div>
				
				<!-- password -->
				<div class="form-group">
					<label class="col-md-8 control-label" for="password">Password</label>
					<div class="col-md-8">
						<sf:input id="password" path="password" name="password" type="password" placeholder=""
							class="form-control input-md" />
							<sf:errors  path="password" cssClass="alert-danger"></sf:errors>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-md-8 control-label" for="confirmpassword">Confirm Password</label>
					<div class="col-md-8">
						<input id="confirmpassword"  name="confirmpassword" type="password" placeholder=""
							class="form-control input-md" />
							<span id="error"></span>
					</div>
				</div>
	
				<!-- Button -->
				<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button name="submit" id="submit" class="login100-form-btn">Create Account</button>
						</div>
					</div>
				<span id="error" style="color:red"></span>
			</fieldset>
		</sf:form>
	</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>


<script type="text/javascript">
var password1 = document.getElementById('password');
var password2 = document.getElementById('confirmpassword');

var checkPasswordValidity = function(){
	if(password1.value != password2.value ){
		document.getElementById('error').innerHTML = "Password didnot matched!"
		password1.setCustomValidity("Password didnot matched!");
	}else{
		document.getElementById('error').innerHTML = ""
		password1.setCustomValidity('');
	}
};

password1.addEventListener('change',checkPasswordValidity,false);
password2.addEventListener('change',checkPasswordValidity,false);

var form = document.getElementById('userfrom');
form.addEventListener('submit',function(){
	checkPasswordValidity();
	if(!this.checkValidity()){
		event.preventDefault();
		password1.focus();
	}
}, false);
</script>
