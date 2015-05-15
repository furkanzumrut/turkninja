<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %><!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<html lang="en">
<head>
  <title>Türk Ninja</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <div class="help-block" style="float:right;" >
      
      <form:form action="login" commandName="userForm" method="post">
		  <label class="label label-default" id="label-1">Email:</label>
	   		 <form:input type="text" path="email"/>
			 <label class="label label-default" id="label-2">Şifre:</label>
	  <form:input type="password" path="password"/>
      <input type="submit" class="btn-danger" value="Giriş"/>
      <a href="#"class="label label-default">Şifremi Unuttum</a>
      </form:form>
    
  </div>
  
  <div class="jumbotron">
  	<div class="row">
    <div class="col-sm-6">
		<img src="resources/img/logo2.jpg"/>
    <p >Türk Yazılımcılarının ortak noktası!</p> 
    </div>
 </div>
  	
  </div>
  <div class="row">
    <div class="col-sm-6">
		<img src="resources/img/social-people.png"/>
    </div>
    <div class="col-sm-6">

        <form:form  class="form" action="register" method="post" commandName="userForm">
            <table class="table" >
                <tr>
                    <td ><h3>Kısa Sürede Ağımıza Katıl</h3></td>
                </tr>
                 <tr>
                    <td><form:input path="firstName" placeholder="İsim" size="65"/></td>
                </tr>
                <tr>
                    <td><form:input path="lastName" placeholder="Soyisim" size="65"/></td>
                </tr>
                <tr>
                    <td><form:input path="username" placeholder="Kullanıcı Adı" size="65"/></td>
                </tr>
                <tr>

                    <td ><form:input path="email" placeholder="Email" size="65"/></td>
                </tr>
                <tr>
                    <td ><form:password path="password" placeholder="Şifre" size="65"/></td>
                </tr>


                <tr>
                    <td ><input type="submit" class="btn btn-danger" value="Kayıt Ol"/></td>
                </tr>
                </table>

        </form:form>

    </div>
  </div>
 <div>
 
</div>

</body>
</html>

