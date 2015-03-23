'use strict';

/**
 * @ngdoc service
 * @name moocApp.sharedData
 * @description
 * # sharedData
 * Service in the moocApp.
 */
angular.module('moocApp')
  .factory('SharedData', function () {
    return {
      // user: {
      //   name: '16_Char_Username',
      //   id: '52',
      //   admin: true
      // },
      user: false
    };
  });
