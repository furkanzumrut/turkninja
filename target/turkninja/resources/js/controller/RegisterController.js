var RegisterController = function($scope, $http) {
  
  var onUserComplete=function(response){
    $scope.usernames=response.data;
  }
  
  $http.get("/register/getUserNames")
    .then(onUserComplete);
  
  console.log($scope.usernames);
  
};