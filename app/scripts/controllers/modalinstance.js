'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:ModalinstanceCtrl
 * @description
 * # ModalinstanceCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('ModalInstanceCtrl', function ($scope, $modalInstance) {


    $scope.submit = function () {
      // TODO: Submit to server
      if ($scope.registering){
        console.log('registering ' + $scope.username + $scope.password + $scope.password_confirmation);
      } else {
        console.log('liogging in ' + $scope.username + $scope.password);
      }

      $modalInstance.close();
    };

    $scope.addLink = function(){
      // TODO: Submit to server
      console.log('adding ' + $scope.categorySelection + $scope.title + $scope.url + $scope.body);
    };

    $scope.cancel = function () {
      $modalInstance.dismiss('cancel');
    };

  });
