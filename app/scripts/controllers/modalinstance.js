'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:ModalinstanceCtrl
 * @description
 * # ModalinstanceCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('ModalInstanceCtrl', function ($state, $scope, $modalInstance, $http, alert, authToken, SharedData) {
    $scope.data = SharedData;

    $scope.submit = function () {
      // TODO: Submit to server
      var user = {user: {name: $scope.username, password: $scope.password}};
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
            authToken.setToken(res.token);
            alert('success', 'Login Success!');
            setTimeout(function(){
              location.reload();
            }, 1500);
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
