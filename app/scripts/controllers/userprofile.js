'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:UserprofileCtrl
 * @description
 * # UserprofileCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('UserprofileCtrl', function ($scope) {
    $scope.data.profile = {
      name: 'OtherUser',
      id: 3
    };
    $scope.data.submitted = [
      {
        
      },{

      }
    ]
  });
