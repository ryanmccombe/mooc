'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:LogoutCtrl
 * @description
 * # LogoutCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('LogoutCtrl', function ($state, authToken, SITE_URL) {
    authToken.removeToken();
    window.location = SITE_URL;
  });
