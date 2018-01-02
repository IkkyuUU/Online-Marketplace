<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Products Page</title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- JQuery -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/Site.css"></c:url>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/productDetail.css"></c:url>">


</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50">

	<div class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-3 logo">
					<img src="resources/images/Logo.png" alt="logo">
				</div>
				<div class="col-sm-6 searchbar">
					<div class="container">
						<div class="row" style="margin-top: 3%">
							<div class="col-sm-2">
								<div class="dropdown" style="margin-left: 21%">
									<button class="btn btn-primary dropdown-toggle" type="button"
										data-toggle="dropdown">
										Dropdown Example <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">HTML</a></li>
										<li><a href="#">CSS</a></li>
										<li><a href="#">JavaScript</a></li>
									</ul>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Search"
										name="srch-term" id="srch-term">
									<div class="input-group-btn">
										<button class="btn btn-default" type="submit">
											<i class="glyphicon glyphicon-search"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3 userBar">
					<div class="container" style="margin-top: 3%">
						<div class="row">
							<div class="col-sm-2 link">
								<a href="#" style="margin-left: 80%">Projects</a>
							</div>
							<div class="col-sm-2">
								<img src="resources/images/Logo.png" alt="userPic">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="navCategory">
			<ul>
				<li><a href="#">${category.getName()}</a></li>
				<li>&gt;</li>
				<li><a href="#">${subCategory.getName()}</a></li>
				<li>&gt;</li>
				<li style="color: grey">${product.getProduct().getModel()}</li>
			</ul>
		</div>

		<div class="row">
			<div class="col-sm-2 productIMG">
				<img src="${product.getProduct().getImage()}" alt="test">
			</div>
			<div class="col-sm-8 productTitle">
				<p>${product.getProduct().getManufacture()}/
					${product.getProduct().getSeries()} /
					${product.getProduct().getModel()}</p>
			</div>
		</div>

		<nav class="navbar" data-spy="affix" data-offset-top="197">

		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="nav-item active"><a href="#summary" class="nav-link"
					disabled>Product Summary</a></li>
				<li class="nav-item"><a href="#details" class="nav-link">Product
						Details</a></li>
				<li class="nav-item"><a href="#documentation" class="nav-link">Product
						Documentation</a></li>
				<li class="nav-item"><a href="#contacts" class="nav-link">Contacts</a>
				</li>
			</ul>
		</div>
		</nav>
		<div class="tab-content">
			<div id="summary" class="container-fluid">
				<h3>Product Summary</h3>
				<div class="row">
					<div class="col-md-6">
						<table class="table" style="width: 100%;">
							<thead>
								<tr>
									<th colspan="2">DESCRIPTION</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Manufacturer</td>
									<td>${product.getProduct().getManufacture()}</td>
								</tr>
								<tr>
									<td>Series</td>
									<td>${product.getProduct().getSeries()}</td>
								</tr>
								<tr>
									<td>Model</td>
									<td>${product.getProduct().getModel()}</td>
								</tr>
							</tbody>

						</table>

						<table class="table" style="width: 100%;">
							<thead>
								<tr>
									<th colspan="2">TYPE</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Use Type</td>
									<td>${product.getProduct().getUseType()}</td>
								</tr>
								<tr>
									<td>Application</td>
									<td>${product.getProduct().getApplication()}</td>
								</tr>
								<tr>
									<td>Mounting Location</td>
									<td>${product.getProduct().getMountingLocation()}</td>
								</tr>
								<tr>
									<td>Accessories</td>
									<td>${product.getProduct().getAccessories()}</td>
								</tr>
								<tr>
									<td>Model Year</td>
									<td>${product.getProduct().getModelYear()}</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-6">
						<table class="table" style="width: 100%;">
							<thead>
								<tr>
									<th colspan="2">TECHNICAL SPECIFICATIONS</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${product.getSpecifications()}" var="prodSpec"
									varStatus="status">
									<tr>
										<td>${spec[status.index].getName()}</td>
										<c:choose>
											<c:when test="${prodSpec.getValue() == null}">
												<td style="background-color: #f1f2f1">Min</td>
												<td>${prodSpec.getMin()}</td>
												<td style="background-color: #f1f2f1">Max</td>
												<td>${prodSpec.getMax()}</td>
											</c:when>
											<c:otherwise>
												<td colspan="4">${prodSpec.getValue()}</td>
											</c:otherwise>
										</c:choose>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div id="details" class="container-fluid">
				<h3>Product Details</h3>
				<table class="table" style="width: 100%;">
					<thead>
						<tr>
							<th colspan="2">SERIES INFORMATION</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Airfoils -</td>
						</tr>
						<tr>
							<td style="background: white;">Airfoil Finishes -</td>
						</tr>
						<tr>
							<td>Hardware Finishes -</td>
						</tr>
						<tr>
							<td style="background: white;">Motor -</td>
						</tr>
						<tr>
							<td>Exceeds ENERGY STAR fan efficiency requirements by up
								to</td>
						</tr>
						<tr>
							<td style="background: white;">Controls -</td>
						</tr>
						<tr>
							<td>Onboard Sensors -</td>
						</tr>
						<tr>
							<td style="background: white;">Environment -</td>
						</tr>
						<tr>
							<td>Accessories -</td>
						</tr>
						<tr>
							<td style="background: white;">Made in - USA</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div id="documentation" class="container-fluid">
				<h3>Product Documentation</h3>
				Product Warranty.Doc<br> <br> Product Manual.Pdf<br>
				<br> User Guide.Pdf <br> <br> The End...<br>
			</div>

			<div id="contacts" class="container-fluid">
				<h3>Contacts</h3>
				<div class="row">
					<div class="col-md-6">
						<table class="table">
							<tr>
								<td colspan="2">SALES REPRESENTATIVE</td>
							</tr>
							<tr>
								<td style="background: lightgray;">Name</td>
							</tr>
							<tr>
								<td style="background: lightgray;">Phone</td>
							</tr>
							<tr>
								<td style="background: lightgray;">Email</td>
							</tr>
							<tr>
								<td style="background: lightgray;">Web</td>
							</tr>
						</table>
					</div>

					<div class="col-md-6">
						<table class="table">
							<tr>
								<td colspan="2">MANUFACTURER</td>
							</tr>
							<tr>
								<td style="background: lightgray;">Department</td>
							</tr>
							<tr>
								<td style="background: lightgray;">Phone</td>
							</tr>
							<tr>
								<td style="background: lightgray;">Email</td>
							</tr>
							<tr>
								<td style="background: lightgray;">Web</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>