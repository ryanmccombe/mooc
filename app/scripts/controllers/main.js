'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('MainCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
