'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:ModalinstanceCtrl
 * @description
 * # ModalinstanceCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('ModalInstanceCtrl', function ($scope, $modalInstance, $http, alert, authToken, SharedData) {
    $scope.data = SharedData;

    $scope.submit = function () {
      // TODO: Submit to server
      var user = {user: {name: 'Ryan', password: 'test'}};
      if ($scope.registering){

        console.log('registering ' + $scope.username + $scope.password + $scope.password_confirmation);


        $http.post('http://localhost:3000/register', user)
          .success(function(res){
            console.log('registered success');
            authToken.setToken(res.token);
            $modalInstance.close();
          })
          .error(function(err){
            alert('warning', 'Oops', 'Could not register');
          });

      } else {
        $http.post('http://localhost:3000/login', user)
          .success(function(res){
            $scope.data.user = res.user;
            authToken.setToken(res.token);
            $modalInstance.close();
          })
          .error(function(err){
            alert('warning', 'Oops', 'Could not log in');
          });
      }

    };

    $scope.addLink = function(){
      // TODO: Submit to server
      console.log('adding ' + $scope.categorySelection + $scope.title + $scope.url + $scope.body);
    };

    $scope.cancel = function () {
      $modalInstance.dismiss('cancel');
    };

  });
