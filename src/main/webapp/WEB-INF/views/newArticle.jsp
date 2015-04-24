<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ninjaregister" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="/turkninja/resources/js/app.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<form:form action="newArticle" method="post" commandName="article">
			 <table border="0" class="table-condensed">
                
                <tr>
                    <td colspan="2" align="center"><h2>Yeni Makale</h2></td>
                </tr>
                 <tr>
                    <td>Başlık </td>
                    <td><form:input path="header"/></td>
                   
                </tr>
                 <tr>
                    <td>İçerik </td>
                    <td><form:textarea cols="150" rows="25"  path="content"/></td>
                   
                </tr>
                
                 <tr>
                    <td colspan="2" align="center"><input type="submit" class="btn-success" value="Oluştur" /></td>
                </tr>
		</form:form>
	
	
	</div>
	
	</body>
</html>