<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta charset="utf-8">

<title>bootstrap-wysihtml5</title>


<link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.min.css""></link>
<link rel="stylesheet" type="text/css" href="../../resources/css/prettify.css"></link>
<link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap-wysihtml5.css"></link>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="/turkninja/resources/js/app.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script
	src="http://bootswatch.com/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="http://bootswatch.com/assets/js/bootswatch.js"></script>
<style type="text/css" media="screen">
	.btn.jumbo {
		font-size: 20px;
		font-weight: normal;
		padding: 14px 24px;
		margin-right: 10px;
		-webkit-border-radius: 6px;
		-moz-border-radius: 6px;
		border-radius: 6px;
	}
</style>
<script>hljs.initHighlightingOnLoad();</script>
<script type="text/javascript" src="../../resources/js/lib/highlight.pack.js"></script>
<link href="../../resources/css/default.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-30181385-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>
<body>
	<div class="container" align="center">
		<div class="bs-docs-section clearfix">
			<div class="row">
				<div class="col-lg-12">
					<div class="page-header">
						<img src="../../resources/img/logo2.jpg" />
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

									<li><a
										href="/turkninja/users/${developer.username }/newArticle">Yeni
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

			<div class="col-lg-2"></div>
			<div class="col-lg-8">
				<form:form action="newArticle" method="post" commandName="article">
				<div class="hero-unit" style="margin-top: 40px">
					<h1 style="font-size: 58px">
						Yeni Makale
					</h1>
					<div>
	   		 		<h3>Başlık</h3>	<form:input type="text" path="header"/>
	   		 		</div>
					<hr />
				
					<form:textarea class="textarea" placeholder="Enter text ..." path="content" 
						style="width: 810px; height: 400px"></form:textarea>
					<input type="submit" value="Kaydet" class="btn-success" size="65"/>
				</div>
				</form:form>
			</div>
			<div class="col-lg-2"></div>

		</div>
	</div>
<script src="../../resources/js/lib/wysihtml5-0.3.0.js"></script>
<script src="../../resources/js/lib/jquery-1.7.2.min.js"></script>
<script src="../../resources/js/lib/prettify.js"></script>
<script src="../../resources/js/lib/bootstrap.min.js"></script>
<script src="../../resources/js/lib/bootstrap-wysihtml5.js"></script>

<script>
	$('.textarea').wysihtml5();
</script>

<script type="text/javascript" charset="utf-8">
	$(prettyPrint);
</script>

</body>
</html>