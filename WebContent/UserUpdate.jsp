<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update User</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark">
			<div class="navbar-brand">
				Update a User Information
			</div>
	</nav>
	<div class="container col-md-5">
	<form action="userupdate" method="post">
		<div class="form-group">
			<label for="username">UserName</label>
			<input id="username" name="username" value="${fn:escapeXml(param.username)}">
		</div>
		<div class="form-group">
			<label for="password">New Password</label>
			<input id="password" name="password" value="">
		</div>
		<div class="form-group">
			<label for="firstname">New FirstName</label>
			<input id="firstname" name="firstname" value="">
		</div>
		<div class="form-group">
			<label for="lastname">New LastName</label>
			<input id="lastname" name="lastname" value="">
		</div>
		<div class="form-group">
			<label for="email">New Email</label>
			<input id="email" name="email" value="">
		</div>
		<div class="form-group">
			<label for="street1">Street1</label>
			<input id="street1" name="street1" value="">
		</div>
		<div class="form-group">
			<label for="street2">Street2</label>
			<input id="street2" name="street2" value="">
		</div>
		<div class="form-group">
			<label for="city">City</label>
			<input id="city" name="city" value="">
		</div>
		<div class="form-group">
			<label for="zip">Zip</label>
			<input id="zip" name="zip" value="">
		</div>
		<div class="form-group">
			<label for="state">State</label>
			<input id="state" name="state" value="">
		</div>
		<div class="form-group">
			<label for="country">Country</label>
			<input id="country" name="country" value="">
		</div>
		<div class="form-group">
			<label for="latitude">Latitude</label>
			<input id="latitude" name="latitude" value="">
		</div>
		<div class="form-group">
			<label for="longitude">Longitude</label>
			<input id="longitude" name="longitude" value="">
		</div>
		<div class="form-group">
			  <input type="radio" id="regular" name="usertype" value="REGULAR">
			  <label for="regular">Regular</label><br>
			  <input type="radio" id="military" name="usertype" value="MILITARY">
			  <label for="military">Military</label><br>
			  <input type="radio" id="official" name="usertype" value="OFFICIAL">
			  <label for="official">Official</label>

		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
	</div>
	<br/><br/>
	<p>
		<span id="successMessage">
		    <c:forEach items="${messages.success}" var="msg" >
				<b>${msg}</b>
			</c:forEach>
		</span>
	</p>

</body>
</html>