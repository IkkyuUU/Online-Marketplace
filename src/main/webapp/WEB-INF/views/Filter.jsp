<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<title>Filter Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="<c:url value="/resources/js/FilterJS.js"></c:url>"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="<c:url value="/resources/css/Filter.css"></c:url>">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.9.1.js"></script>
<script src="https://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>



</head>

<body>
	<!-- Search Bar -->
	<div class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-3 logo">
					<img src="../images/ProjectDepotLogo.png" alt="logo">
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
								<img src="../images/ProjectDepotLogo.png" alt="userPic">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Filter -->

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
				<div class="White text-center">
					<div class="container-fluid">
						<div class="row ">
							<div class="col-md-4 text-right Search">Search:</div>
							<div class="col-md-4 Search">
								<button type="button" class="btn btn-xs">Save</button>
							</div>
							<div class="col-md-4 text-left Search">
								<button type="button" class="btn btn-xs">Clear</button>
							</div>
						</div>
					</div>

				</div>


				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<div class="blue pointer" id="ShowProduct"
								style="transform: scale(1.22, 1.2)">Product</div>
						</div>

						<div class="col-md-6">
							<div class="White pointer" id="ShowProject"
								style="transform: scale(1.22, 1.2)">Project</div>
						</div>
					</div>
				</div>


				<div id="Product">
					<div id=ShowProductType class="Grey pointer">
						product type
						<div class="pull-right">
							<span class="glyphicon glyphicon-triangle-bottom"></span>
						</div>
					</div>

					<div id="ProductType" class="White">this is the product type
					</div>

					<div class="White" style="height: 40px">
						<div class="" style="margin-top: 7px">
							model year: <input type="text" size="2" name="" value="">
							- <input type="text" size="2" name="" value="">
						</div>
					</div>

					<div id="ShowTechSetification" class="Grey pointer">
						Technical Setifications

						<div class="pull-right">
							<span class="glyphicon glyphicon-triangle-bottom"></span>
						</div>
					</div>

					<div id="TechSetification" class="White">
						<div class="" style="height: 25px; margin-top: 10px">
							<span class="glyphicon glyphicon-sort"></span> Airflow(CFM)
						</div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-2">
									<input type="text" class="sliderValue1" data-index="0"
										value="10" size="1" />
								</div>
								<div class="col-md-8">

									<div id="slider1" style="margin-top: 6px"></div>

								</div>
								<div class="col-md-2">
									<input type="text" class="sliderValue1" data-index="1"
										value="90" size="1" style="margin-left: -9px" />
								</div>
							</div>
						</div>


						<div class="" style="height: 25px; margin-top: 15px">
							<span class="glyphicon glyphicon-sort"></span> Max Power(W)
						</div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-2">
									<input type="text" class="sliderValue2" data-index="0"
										value="10" size="1" />
								</div>
								<div class="col-md-8">
									<div id="slider2" style="margin-top: 6px"></div>

								</div>
								<div class="col-md-2">
									<input type="text" class="sliderValue2" data-index="1"
										value="90" size="1" style="margin-left: -9px" />
								</div>
							</div>
						</div>

						<div class="" style="height: 25px; margin-top: 15px">
							<span class="glyphicon glyphicon-sort"></span> Sound at max
							speed(dBA)
						</div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-2">
									<input type="text" class="sliderValue3" data-index="0"
										value="10" size="1" />
								</div>
								<div class="col-md-8">
									<div id="slider3" style="margin-top: 6px"></div>

								</div>
								<div class="col-md-2">
									<input type="text" class="sliderValue3" data-index="1"
										value="90" size="1" style="margin-left: -9px" />
								</div>
							</div>
						</div>

						<div class="" style="height: 25px; margin-top: 15px">
							<span class="glyphicon glyphicon-sort"></span> Fan sweep
							diameter(in)
						</div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-2">
									<input type="text" class="sliderValue4" data-index="0"
										value="10" size="1" />
								</div>
								<div class="col-md-8">
									<div id="slider4" style="margin-top: 6px"></div>

								</div>
								<div class="col-md-2">
									<input type="text" class="sliderValue4" data-index="1"
										value="90" size="1" style="margin-left: -9px" />
								</div>
							</div>
						</div>

						<div class="" style="height: 25px; margin-top: 15px">
							<span class="glyphicon glyphicon-sort"></span> Fan sweep
							diameter(in)
						</div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-2">
									<input type="text" class="sliderValue5" data-index="0"
										value="10" size="1" />
								</div>
								<div class="col-md-8">
									<div id="slider5" style="margin-top: 6px"></div>

								</div>
								<div class="col-md-2">
									<input type="text" class="sliderValue5" data-index="1"
										value="90" size="1"
										style="margin-left: -9px; margin-bottom: 10px" />
								</div>
							</div>
						</div>

					</div>

					<div class="Grey pointer" id="ShowBrand">
						Brand
						<div class="pull-right">
							<span class="glyphicon glyphicon-triangle-bottom"></span>
						</div>
					</div>
					<div class="White" id="Brand">this is brand</div>

					<div class="Grey pointer" id="ShowPastSelections">
						Past Selections
						<div class="pull-right">
							<span class="glyphicon glyphicon-triangle-bottom"></span>
						</div>
					</div>
					<div class="White" id="PastSelections">
						<div class="" style="height: 25px; margin-top: 10px">
							<span class="glyphicon glyphicon-sort"></span> Firm
						</div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-2">
									<input type="text" class="sliderValue6" data-index="0"
										value="10" size="1" />
								</div>
								<div class="col-md-8">
									<div id="slider6" style="margin-top: 6px"></div>

								</div>
								<div class="col-md-2">
									<input type="text" class="sliderValue6" data-index="1"
										value="90" size="1" style="margin-left: -9px" />
								</div>
							</div>
						</div>

						<div class="" style="height: 25px; margin-top: 15px">
							<span class="glyphicon glyphicon-sort"></span> Global
						</div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-2">
									<input type="text" class="sliderValue7" data-index="0"
										value="10" size="1" />
								</div>
								<div class="col-md-8">
									<div id="slider7" style="margin-top: 6px"></div>

								</div>
								<div class="col-md-2">
									<input type="text" class="sliderValue7" data-index="1"
										value="90" size="1"
										style="margin-left: -9px; margin-bottom: 10px" />
								</div>
							</div>
						</div>

					</div>

					<div class="Grey pointer" id="ShowCertifications">
						Certifications
						<div class="pull-right">
							<span class="glyphicon glyphicon-triangle-bottom"></span>
						</div>
					</div>
					<div class="White" id="Certifications">this is certifications
					</div>
					<br>


					<!-- popupwindow -->

					<a href="#" class="btn btn-primary" data-popup-open="popup-1"
						style="margin-bottom: 25px; margin-left: 70px">Advanced Search</a>

					<div class="popup" data-popup="popup-1">
						<div class="popup-inner">
							<div style="border: 0.5px solid">
								<div class="PopTitle">Find Fans</div>


								<div class="PopSubtitle">Type</div>

								<div class="container-fluid">
									<div class="row">
										<div class="col-md-3 PopContent">Use Type:</div>

										<div class="col-md-9 PopContent">
											<input type="checkbox" name="" value="">Commercial <input
												type="checkbox" name="" value=""> Indistrial <input
												type="checkbox" name="" value=""> Residential
										</div>
									</div>

									<div class="row">
										<div class="col-md-3 PopContent">Application:</div>
										<div class="col-md-9 PopContent">
											<input type="checkbox" name="" value=""> Indoor <input
												type="checkbox" name="" value=""> Outdoor
										</div>
									</div>

									<div class="row">
										<div class="col-md-3 PopContent">Mounting Location:</div>
										<div class="col-md-9 PopContent">
											<input type="checkbox" name="" value=""> Roof <input
												type="checkbox" name="" value=""> Wall <input
												type="checkbox" name="" value=""> Free Standing
										</div>
									</div>

									<div class="row">
										<div class="col-md-3 PopContent">Accessories</div>
										<div class="col-md-9 PopContent">
											<input type="checkbox" name="" value=""> With Light <input
												type="checkbox" name="" value=""> Without Light
										</div>
									</div>

									<div class="row">
										<div class="col-md-4 PopContent">Model Year</div>
										<div class="col-md-8 PopContent">
											<input type="number" name="" value=""> - <input
												type="number" name="" value="">
										</div>
									</div>



								</div>

								<div class="PopSubtitle">Technical</div>

								<div class="container-fluid">
									<div class="row">
										<div class="col-md-4 PopContent">AirFlow (CFM)</div>
										<div class="col-md-8 PopContent">
											<input type="number" name="" value=""> - <input
												type="number" name="" value="">
										</div>
									</div>

									<div class="row">
										<div class="col-md-4 PopContent">Max Power (W)</div>
										<div class="col-md-8 PopContent">
											<input type="number" name="" value=""> - <input
												type="number" name="" value="">
										</div>
									</div>

									<div class="row">
										<div class="col-md-4 PopContent">Sound at max speed
											(dBA)</div>
										<div class="col-md-8 PopContent">
											<input type="number" name="" value=""> - <input
												type="number" name="" value="">
										</div>
									</div>

									<div class="row">
										<div class="col-md-4 PopContent">Fan sweep diameter (in)
										</div>
										<div class="col-md-8 PopContent">
											<input type="number" name="" value=""> - <input
												type="number" name="" value="">
										</div>
									</div>

									<div class="row">
										<div class="col-md-4 PopContent">Height (in)</div>
										<div class="col-md-8 PopContent">
											<input type="number" name="" value=""> - <input
												type="number" name="" value="">
										</div>
									</div>

								</div>

								<div class="PopSubtitle">Brand</div>

								<div class="container-fluid">
									<div class="row">
										<div class="col-md-4 PopContent">Select Brand(s)</div>
										<div class="col-md-5 PopContent">
											<select class="form-control" name="">
												<option value="test1">test1</option>
												<option value="test2">test2</option>
											</select>
										</div>
									</div>
								</div>

								<div class="PopSubtitle">Other</div>
								<div class="col-md-4 PopContent">With the words</div>
								<div class="col-md-5 PopContent">
									<select class="form-control">
										<option value="test1">test1</option>
										<option value="test2">test2</option>
									</select>
								</div>
								<div class="col-md-3 PopContent">
									<button type="button" name="button" class="btn btn-success">Search</button>
								</div>
							</div>

							<a class="popup-close" data-popup-close="popup-1" href="#">x</a>
						</div>





					</div>



					<!-- popupwindow ends -->


				</div>

				<div id="Project" style="display: none">this is project</div>

			</div>




			<div class="col-md-9" style="border: 1px solid">
				<div class="container-fluid main">
					<div class="navCategory">
						<ul>
							<li><a href="#">${category.getName()}</a></li>
							<li>&gt;</li>
							<li style="color: grey">${subCategory.getName()}</li>
						</ul>
					</div>
					<c:forEach items="${products}" var="prod">
						<div class="item">
							<div class="pic">
								<div class="date">
									<p>verified on 12/1/2017</p>
								</div>
								<div class="image">
									<img src="${prod.getProduct().getImage()}" alt="">
								</div>
								<div class="info">
									<p id="prodId" style="display: none;">${prod.getProduct().getProductId()}</p>
									<p>${prod.getProduct().getManufacture()}</p>
									<p>${prod.getProduct().getSeries()}</p>
									<p>${prod.getProduct().getModel()}</p>
								</div>
							</div>
							<div class="spec">
								<c:forEach items="${prod.getSpecifications()}" var="prodSpec"
									varStatus="status">
									<p>${spec[status.index].getName()}
										:
										<c:choose>
											<c:when test="${prodSpec.getValue() == null}">
            			${prodSpec.getMax()} at max
            		</c:when>
											<c:otherwise>
            			${prodSpec.getValue()}
            		</c:otherwise>
										</c:choose>
									</p>
								</c:forEach>
							</div>
							<div class="compare">
								<div class="checkbox box">
									<label><input type="checkbox">Compare</label>
								</div>
								<div class="addButton">
									<button type="button" name="button" class="btn btn-primary">
										Add to <span class="glyphicon glyphicon-triangle-bottom"></span>
									</button>
								</div>
							</div>
						</div>

					</c:forEach>
				</div>
			</div>




		</div>





	</div>

	</div>


</body>

</html>
