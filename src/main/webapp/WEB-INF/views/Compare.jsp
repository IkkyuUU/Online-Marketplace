<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Compare</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/compare.css"></c:url>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/Site.css"></c:url>">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
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
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Dropdown Example
                    <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                      <li><a href="#">HTML</a></li>
                      <li><a href="#">CSS</a></li>
                      <li><a href="#">JavaScript</a></li>
                    </ul>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
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
                  <img src="resources/images/ProjectDepotLogo.png" alt="userPic">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid main">
      <div class="navCategory">
        <ul>
          <li><a href="#">${category.getName()}</a></li>
          <li>&gt;</li>
          <li><a href="#">${subCategory.getName()}</a></li>
          <li>&gt;</li>
          <li style="color: grey">Compare</li>
        </ul>
      </div>
      <div class="item" style="color: grey;">
        <div class="pic" style="opacity: 0;">
          <div class="addButton">
            <button type="button" name="button" class="btn btn-primary">Add to
              <span class="glyphicon glyphicon-triangle-bottom"></span>
            </button>
          </div>
          <div class="date">
            <p>verified on 12/1/2017</p>
          </div>
          <div class="image">
            <img src="resources/images/Logo.png" alt="">
          </div>
        </div>
        <div class="divider">
          <p>DESCRIPTION</p>
        </div>
        <div class="description" style="text-align: left;">
          <div class="detail">
            <p>Manufacture</p>
          </div>
          <div class="detail">
            <p>Series</p>
          </div>
          <div class="detail">
            <p>Model</p>
          </div>
        </div>
        <div class="divider">
          <p>TYPE</p>
        </div>
        <div class="type" style="text-align: left;">
          <div class="detail">
            <p>Use Type</p>
          </div>
          <div class="detail">
            <p>Application</p>
          </div>
          <div class="detail">
            <p>Mounting Location</p>
          </div>
          <div class="detail">
            <p>Accessories</p>
          </div>
          <div class="detail">
            <p>Model year</p>
          </div>
        </div>
        <div class="divider">
          <p>TECHNICAL SPECIFICATION</p>
        </div>
        <div class="spec">
	        <c:forEach items="${specifications}" var="spec">
	          <div class="detail">
	            <p>${spec.getName()}</p>
	          </div>
	        </c:forEach>
        </div>
      </div>
      <c:forEach items="${products}" var="prod">
      <div class="item">
        <div class="pic">
          <div class="addButton">
            <button type="button" name="button" class="btn btn-primary">Add to
              <span class="glyphicon glyphicon-triangle-bottom"></span>
            </button>
          </div>
          <div class="date">
            <p>verified on 12/1/2017</p>
          </div>
          <div class="image">
            <img src="${prod.getProduct().getImage()}" alt="">
          </div>
        </div>
        <div class="divider">

        </div>
        <div class="description">
          <div class="detail">
            <p>${prod.getProduct().getManufacture()}</p>
          </div>
          <div class="detail">
            <p>${prod.getProduct().getSeries()}</p>
          </div>
          <div class="detail">
            <p>${prod.getProduct().getModel()}</p>
          </div>
        </div>
        <div class="divider">
        </div>
        <div class="type">
          <div class="detail">
            <p>${prod.getProduct().getUseType()}</p>
          </div>
          <div class="detail">
            <p>${prod.getProduct().getApplication()}</p>
          </div>
          <div class="detail">
            <p>${prod.getProduct().getMountingLocation()}</p>
          </div>
          <div class="detail">
            <p>${prod.getProduct().getAccessories()}</p>
          </div>
          <div class="detail">
            <p>${prod.getProduct().getModelYear()}</p>
          </div>
        </div>
        <div class="divider">
        </div>
        <div class="spec">
        <c:forEach items="${prod.getSpecifications()}" var="spec">
        	<c:choose>
	        	<c:when test="${spec.getValue() == null}">
		          <div class="detail">
		            <div class="min">
		              <div class="key">Min</div>
		              <div class="value">${spec.getMin()}</div>
		            </div>
		            <div class="max">
		              <div class="key">Max</div>
		              <div class="value">${spec.getMax()}</div>
		            </div>
		          </div>
	        	</c:when>
	        	<c:otherwise>
		          <div class="detail">
		            <p>${spec.getValue()}</p>
		          </div>
	        	</c:otherwise>
        	</c:choose>
        </c:forEach>
      	</div>
      </div>
      </c:forEach>
      
      
    </div>
  </body>
</html>
