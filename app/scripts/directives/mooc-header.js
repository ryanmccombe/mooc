'use strict';

/**
 * @ngdoc directive
 * @name moocApp.directive:moocHeader
 * @description
 * # moocHeader
 */
angular.module('moocApp')
  .directive('moocHeader', function () {
    return {
      templateUrl: 'views/header.html',
      restrict: 'E',
      link: function postLink(scope, element, attrs) {
        element.find('[data-toggle="tooltip"]').tooltip();
      }
    };
  });
