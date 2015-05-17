'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:UserprofileCtrl
 * @description
 * # UserprofileCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('UserprofileCtrl', function ($http, $scope, $stateParams, API_URL) {
    var profile = $stateParams.username;
    var url;
    $scope.data.sortOrder = $stateParams.sort || 'rated';
    $scope.data.profile = profile;

    if($scope.data.sortOrder === 'comments'){
      url = API_URL + 'user/comments/?user=' + profile;
      $http.get(url).success(function (res) {
        $scope.comments = res.comments;
      }).error(function (err) {
        alert('warning', 'Unable to get links', err.message);
      });

    } else {
      url = API_URL + 'links?sort=' + $scope.data.sortOrder + '&user=' + profile;
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
