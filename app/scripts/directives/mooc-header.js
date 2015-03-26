'use strict';

/**
 * @ngdoc directive
 * @name moocApp.directive:moocHeader
 * @description
 * # moocHeader
 */
angular.module('moocApp')
  .directive('moocHeader', function (SharedData) {
    return {
      templateUrl: 'views/header.html',
      restrict: 'E',
      controller: function(){

      },
      link: function postLink(scope, element, attrs) {
        element.find('[data-toggle="tooltip"]').tooltip();
      }
    };
  });
