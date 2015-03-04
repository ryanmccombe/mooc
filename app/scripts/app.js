'use strict';

/**
 * @ngdoc overview
 * @name moocApp
 * @description
 * # moocApp
 *
 * Main module of the application.
 */
angular
  .module('moocApp', ['ui.router', 'ui.bootstrap', 'ngSanitize']);

$(window).resize(function () {
  $('#linklist').find('.glyphicon').each(function (i) {
    var height = $(this).closest('.linkbox').height();
    if (height < 300) {
      $(this).css({'margin-top': (height) / 2 - 30 + 'px'})
    }
  })
});
