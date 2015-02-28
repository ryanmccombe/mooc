'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('MainCtrl', function ($scope) {
    $scope.data = {
      user: {
        name: 'SampleUserName',
        id: '52',
        admin: true
      },
      links: [
        {
          id: 1,
          rating: 34,
          liked: false,
          title: 'Sample Link 1',
          url: 'http://www.google.com',
          category: 'JavaScript',
          categorySlug: 'javascript',
          time: 1425114174,
          user: 'SomeGuy',
          userId: 63,
          comments: 52
        },{
          id: 2,
          rating: 26,
          liked: false,
          title: 'Sample Link 2',
          url: 'http://www.google.com',
          category: 'Ruby',
          categorySlug: 'ruby',
          time: 1425114347,
          user: 'SomeGirl',
          userId: 68,
          comments: 23
        },{
          id: 3,
          rating: 125,
          liked: true,
          title: 'Sample Link 3',
          url: 'http://www.google.com',
          category: 'Python',
          categorySlug: 'python',
          time: 1425110347,
          user: 'SomeOtherGuy',
          userId: 69,
          comments: 231
        },{
          id: 4,
          rating: 48,
          liked: false,
          title: 'Sample Link 4',
          url: 'http://www.google.com',
          category: 'PHP',
          categorySlug: 'php',
          time: 1425111347,
          user: 'SomeOtherGirl',
          userId: 61,
          comments: 136
        }
      ]
    }

  });
