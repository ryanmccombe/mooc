'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:CommentCtrl
 * @description
 * # CommentCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('CommentCtrl', function ($scope, $http, $stateParams, SharedData, API_URL) {
    $scope.id = $stateParams.id;
    $scope.data = SharedData;

    $http.get(API_URL + 'links/' + $stateParams.id).success(function (res) {
      $scope.link = res.link;
      $scope.comments = res.comments;
      $scope.data.category = res.category;
    }).error(function (err) {
      alert('warning', 'Unable to get links', err.message);
    });
  });
