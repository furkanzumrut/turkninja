(function(){

var app=angular.module("ninjaregister",[]);

var RegisterController = function($scope, $http) {
	  
	  var onUserComplete=function(response){
	    $scope.result=response.data;
	  }
	  $scope.result="true";
	  var userCheck=function(username){
		  

		alert("aliturgutb exist");
		  
	  }	
	  
	  
	  
	};



app.controller("RegisterController",RegisterController);

}());