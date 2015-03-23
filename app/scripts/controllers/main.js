'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('MainCtrl', function ($scope, $modal, $state, SharedData) {
    $scope.data = SharedData;
    $scope.state = $state;
    $scope.register = function(){
      var modalInstance = $modal.open({
        templateUrl: 'views/register_modal.html',
        controller: 'ModalInstanceCtrl',
        resolve: {
          items: function(){

          }

        }
      });

      modalInstance.result.then(function(){

      })
    };
    $scope.addLink = function(){
      var modalInstance = $modal.open({
        templateUrl: 'views/addlink_modal.html',
        controller: 'ModalInstanceCtrl',
        resolve: {
          items: function(){

          }

        }
      });

      modalInstance.result.then(function(){

      })
    }

  });
