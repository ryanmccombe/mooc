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
  .module('moocApp', ['ui.router']);


$(window).resize(function(){
  $('#linklist').find('.glyphicon').each(function(i){
    $(this).css({'margin-top': ($(this).closest('.linkbox').height())/ 2 - 30 + 'px'})
  })
});
