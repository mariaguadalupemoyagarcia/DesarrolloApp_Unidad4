<%@page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap sample| Home</title>

<link href="/static/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="/static/css/styles.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Home</a>
			<div class="nav navbar-nav">
				<ul class="nav navbar-nav">
					<li><a href="new-supplier">New Supplier</a></li>
					<li><a href="all-suppliers">All Suppliers</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<c:choose>
	<c:when test="${mode=='MODE_HOME_TASK'}">
			<div class="container">
				<div class="jumbotron text-center" id="homeDiv">
					<h1>Welcome to Task manager</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_SUPPLIERS'}">
			<div class="container text-center" id="supplierDiv">
				<h3>My Supplier</h3>
				<hr />
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>					
								<th>First name</th>
								<th>Last name</th>
								<th>Email</th>
								<th>Turn</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="supplier" items="${suppliers}">
								<tr>
									<td>${supplier.id}</td>
									<td>${supplier.name}</td>
									<td>${supplier.first_name}</td>
									<td>${supplier.last_name}</td>
									<td>${supplier.email}</td>
									<td>${supplier.turn}</td>
									<td><a href="update-supplier?id=${supplier.id}"><span
											class="glyphicon glyphicon-pencil"></span>
									</a></td>
									<td><a href="delete-supplier?id=${supplier.id}"> <span
											class="glyphicon glyphicon-trash"></span>
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_NEW' || mode=='MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Supplier</h3>
				<hr />
				<form class="form-horizontal" method="POST" action="save-supplier">
					<input type="hidden" name="id" value="${supplier.id}" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" value="${supplier.name}" name="name" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">FirstName</label>
						<div class="col-md-7">
							<input type="text" class="form-control"
								value="${supplier.first_name}" name="first_name" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">LastName</label>
						<div class="col-md-7">
							<input type="text" class="form-control"
								value="${supplier.last_name}" name="last_name" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email</label>
						<div class="col-md-7">
							<input type="text" class="form-control"
								value="${supplier.email}" name="email" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Turn</label>
						<div class="col-md-7">
							<input type="text" class="form-control"
								value="${supplier.turn}" name="turn" />
						</div>
					</div>
					<div class="form-group">
					<input type="submit" class="btn btn-primary" value="Save" />
					</div>
				</form>

			</div>
		</c:when>
	</c:choose>

	<script type="text/javascript" src="/static/js/jquery.min.js">
		
	</script>
	<script type="text/javascript" src="/static/js/bootstrap.min.js">
		
	</script>
</body>
</html>
