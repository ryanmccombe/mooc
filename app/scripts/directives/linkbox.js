'use strict';

/**
 * @ngdoc directive
 * @name moocApp.directive:linkbox
 * @description
 * # linkbox
 */
angular.module('moocApp')
  .directive('linkbox', function () {
    return {
      templateUrl: 'views/linkbox.html',
      restrict: 'E',
      transclude: true,
      controller: function($scope) {

        // TODO
        $scope.deleteLink = function(id){
          console.log('deleting ' + id)
        }
      },
      link: function postLink(scope, element, attrs) {

      }
    };
  });
