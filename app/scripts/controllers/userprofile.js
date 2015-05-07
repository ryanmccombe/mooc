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
    var url;
    $scope.data.sortOrder = $stateParams.sort || 'rated';

    if($scope.data.sortOrder === 'comments'){
      url = 'http://localhost:3000/user/comments/?user=' + profile;
      $http.get(url).success(function (res) {
        $scope.comments = res.comments;
      }).error(function (err) {
        alert('warning', 'Unable to get links', err.message);
      });

    } else {
      url = 'http://localhost:3000/links?sort=' + $scope.data.sortOrder + '&user=' + profile;
      $http.get(url).success(function (res) {
        $scope.data.links = res.links;
        $scope.data.user = res.user;
        $scope.data.categories = res.categories;
        $scope.data.category = res.category;
      }).error(function (err) {
        alert('warning', 'Unable to get links', err.message);
      });
    }
  });
