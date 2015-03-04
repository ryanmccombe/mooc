'use strict';

/**
 * @ngdoc directive
 * @name moocApp.directive:commentForm
 * @description
 * # commentForm
 */
angular.module('moocApp')
  .directive('commentForm', function () {
    return {
      link: function postLink(scope, element, attrs) {
        element.find('textarea.js-auto-size').textareaAutoSize();
      }
    };
  });
