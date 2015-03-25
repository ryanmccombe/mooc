'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:LogoutCtrl
 * @description
 * # LogoutCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('LogoutCtrl', function ($state, authToken) {
    authToken.removeToken();
    window.location = "http://localhost:9000";
  });
