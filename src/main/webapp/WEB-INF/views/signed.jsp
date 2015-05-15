<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Success</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="/turkninja/resources/js/app.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script>hljs.initHighlightingOnLoad();</script>
<script type="text/javascript" src="/turkninja/resources/js/lib/highlight.pack.js"></script>
<link href="/turkninja/resources/css/default.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
$(document).ready(function() {
	  $('pre code').each(function(i, block) {
	    hljs.highlightBlock(block);
	  });
	});


</script>
</head>
<body style="background-color: transparent;">
	<div class="container" align="center">
		<div class="bs-docs-section clearfix">
			<div class="row">
				<div class="col-lg-12">
					<div class="page-header">
						<img src="../resources/img/logo2.jpg" />
						<h4>${developer.firstName} ${developer.lastName}</h4>
					</div>

					<div class="bs-component">
						<nav class="navbar navbar-inverse">
						<div class="container-fluid">


							<div class="collapse navbar-collapse"
								id="bs-example-navbar-collapse-2">
								<ul class="nav navbar-nav">
									<li class="active"><a href="#">Profilim <span
											class="sr-only">(current)</span></a></li>
									
									<li><a href="${developer.username }/newArticle">Yeni
											Makale</a></li>
											<li><a href="#">Çıkış</a></li>

								</ul>


								<form class="navbar-form navbar-right" role="search">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Ara">
									</div>
									<button type="submit" class="btn btn-danger">Ara</button>
								</form>

							</div>
						</div>
						</nav>
					</div>
					<!-- /example -->
				</div>
			</div>
		</div>
		<div class="row">
	
		<div class="col-lg-3">
						<h3>Kategori</h3>
							<ul>
							<c:forEach var="category" items="${categoryList}">
									<li style="list-style-type: none;"><a href="#"> ${category.name}</a></li>
							</c:forEach>
								
							<ul>
		
		</div>
		<div class="col-lg-9">

			 
                	<c:forEach var="article" items="${articles}" varStatus="stat">
				    	<table>
				    	<tr>
				    	<td>
				    	<div class="alert" style="margin-top: 40px; border: 2px solid gray;background-color: white;">
				    	<h2>${article.header} </h2>
				    	<div><a href="#">${article.subcontent}...</a></div>
				    	<div><a>like(0) </a><a> share(2) </a><a> comment(3)</a></div>
				    	</div>
				    	</td>
				    	</tr>
				    	
				    	</table>
					</c:forEach>
                	
                

		</div>
		<div class="col-lg-2">
		
		</div>
	
	</div>
	</div>
	

</body>
</html>