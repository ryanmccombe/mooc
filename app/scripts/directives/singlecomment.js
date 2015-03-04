'use strict';

/**
 * @ngdoc directive
 * @name moocApp.directive:singleComment
 * @description
 * # singleComment
 */
angular.module('moocApp')
  .directive('singleComment', function () {
    return {
      restrict: 'A',
      link: function postLink(scope, element, attrs) {

      }
    };
  });
