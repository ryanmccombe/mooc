'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:CommentCtrl
 * @description
 * # CommentCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('CommentCtrl', function ($scope, $http, $stateParams) {
    $scope.id = $stateParams.id;

    $http.get('http://localhost:3000/links/' + $stateParams.id).success(function (res) {
      $scope.link = res.link;
      $scope.comments = res.comments;

    }).error(function (err) {
      alert('warning', 'Unable to get links', err.message);
    });






  });
