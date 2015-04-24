<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Success</title>
<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="/turkninja/resources/js/app.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container" align="center">
        <div><a href="${developer.username }/newArticle">Yeni Makale</a></div>
        <div>
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Welcome</h2></td>
            </tr>
 			<tr>
                <td>Adı :</td>
                <td>${developer.firstName}</td>
            </tr>
             <tr>
                <td>Soyadı :</td>
                <td>${developer.lastName}</td>
            </tr>
            <tr>
                <td>Kullanıcı Adı :</td>
                <td>${developer.username}</td>
            </tr>
            <tr>
                <td>E-mail :</td>
                <td>${developer.email}</td>
            </tr>
            <tr>
                <td>Doğum Yılı :</td>
                <td>${developer.birthYear}</td>
            </tr>
        </table>
        
       </div>
    </div>
</body>
</html>