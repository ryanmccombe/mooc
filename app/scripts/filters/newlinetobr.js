'use strict';

/**
 * @ngdoc filter
 * @name moocApp.filter:newLineToBr
 * @function
 * @description
 * # newLineToBr
 * Filter in the moocApp.
 */
angular.module('moocApp')
  .filter('newLineToBr', function () {
    return function (input) {
      if (!input) return input;
      return input.replace(/\n\r?/g, '<br>');
    };
  });
