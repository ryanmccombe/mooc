'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('MainCtrl', function ($scope, $modal, $state, $stateParams, $http, SharedData, alert) {
    $scope.data = SharedData;
    $scope.data.sortOrder = $stateParams.sort || 'rated';
    var category = $stateParams.category;
    var url;
    if (category) {
      url = 'http://localhost:3000/categories/' + category + '?sort=' + $scope.data.sortOrder;
    } else {
      url = 'http://localhost:3000/links?sort=' + $scope.data.sortOrder;
    }

    $http.get(url).success(function (res) {
      $scope.data.links = res.links;
      $scope.data.user = res.user;
      $scope.data.categories = res.categories;
      $scope.data.category = res.category;
    }).error(function (err) {
      alert('warning', 'Unable to get links', err.message);
    });

    $scope.state = $state;
    $scope.register = function () {
      var modalInstance = $modal.open({
        templateUrl: 'views/register_modal.html',
        controller: 'ModalInstanceCtrl',
        resolve: {
          items: function () {

          }

        }
      });

      modalInstance.result.then(function () {

      })
    };
    $scope.addLink = function () {
      var modalInstance = $modal.open({
        templateUrl: 'views/addlink_modal.html',
        controller: 'ModalInstanceCtrl',
        resolve: {
          items: function () {

          }

        }
      });

      modalInstance.result.then(function () {

      })
    }

  });
