'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('MainCtrl', function ($scope, $modal, $state, $http, SharedData, alert) {
    $scope.data = SharedData;
    $http.get('http://localhost:3000/links').success(function(res){
      $scope.data.links = res.links;
      $scope.data.user = res.user;
    }).error(function(err){
      alert('warning', 'Unable to get links', err.message);
    });

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
