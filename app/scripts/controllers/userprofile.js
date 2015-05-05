'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:UserprofileCtrl
 * @description
 * # UserprofileCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('UserprofileCtrl', function ($http, $scope, $stateParams) {
    var profile = $stateParams.username;
    $scope.data.sortOrder = $stateParams.sort || 'rated';
    var url = 'http://localhost:3000/links?sort=' + $scope.data.sortOrder + '&user=' + profile;

    $http.get(url).success(function (res) {
      $scope.data.links = res.links;
      $scope.data.user = res.user;
      $scope.data.categories = res.categories;
      $scope.data.category = res.category;
    }).error(function (err) {
      alert('warning', 'Unable to get links', err.message);
    });


  });
