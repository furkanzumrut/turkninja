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
<link rel="stylesheet"
	href="https://bootswatch.com/spacelab/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script
	src="http://bootswatch.com/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://bootswatch.com/assets/js/bootswatch.js"></script>
<script>hljs.initHighlightingOnLoad();</script>
<script type="text/javascript" src="/turkninja/resources/js/lib/highlight.pack.js"></script>
<link href="/turkninja/resources/css/default.css" rel="stylesheet" type="text/css"/>
</head>
<body>
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
		
		</div>
		<div class="col-lg-6">
		<form action="newArticle" method="post" >
			 <table class="table" border="0">

                 <tr>
                    <td><textarea rows="4" cols="50">
                    Son durumunu paylaş..
					</textarea>
					</td>
                   
                </tr>
                
                 <tr>
                    <td colspan="2" align="center"><input type="submit" class="btn-danger" value="Paylaş" /></td>
                </tr>
                
                <tr>
                	<td>
                	<c:forEach var="article" items="${articles}" varStatus="stat">
				    	<h2>${article.header} </h2>
				    	<div>${article.content} </div>
					</c:forEach>
                	</td>
                </tr>
                </table>
		<form>
		</div>
		<div class="col-lg-3">
		
		</div>
	
	</div>
	</div>
	

</body>
</html>