'use strict';

/**
 * @ngdoc function
 * @name moocApp.controller:CommentCtrl
 * @description
 * # CommentCtrl
 * Controller of the moocApp
 */
angular.module('moocApp')
  .controller('CommentCtrl', function ($scope, $stateParams) {
    $scope.message = "Hello Comment Controller!";
    $scope.id = $stateParams.id;

    $scope.data = {
      // user: {
      //   name: '16_Char_Username',
      //   id: '52',
      //   admin: true
      // },
      user: false,
      link: {
        id: 1,
        rating: 34,
        upvoted: true,
        title: 'Eloquent Javascript, Second Edition is now fully available online',
        body: 'Praesent gravida id metus eget eleifend. Fusce porta aliquam tincidunt. Nullam vitae auctor est. Cras quam nisi, pretium ut feugiat a, efficitur ac dolor. Fusce eget neque felis. Vivamus in nisl elit. Ut cursus turpis accumsan scelerisque luctus. Mauris dapibus est sit amet nunc aliquet feugiat. Fusce convallis urna at enim tincidunt, ut commodo nunc mollis. Vestibulum rhoncus felis non congue suscipit.\r\n\r\nVivamus eu imperdiet nibh. Pellentesque lacus mi, vehicula at lorem vitae, dictum varius tellus. Integer vulputate molestie lectus, in blandit mi posuere vel. Integer pulvinar dolor vitae libero dignissim, a mattis turpis convallis. Integer eu ligula egestas, sodales sapien ut, porttitor quam. Vivamus condimentum ultricies lectus, iaculis tristique tellus aliquet et. Aenean eu turpis ac velit luctus mattis. Duis quis commodo justo, laoreet vulputate massa.',
        // body: '',
        url: 'http://www.google.com',
        category: 'JavaScript',
        categorySlug: 'javascript',
        time: 1425114174,
        user: 'SomeGuy',
        userId: 63,
        comments: 52
      },
      comments: [
        {
          id: 1,
          body: 'I love this book - read through a fair piece of the drafts.',
          user: 'kevinmrr',
          userId: 1,
          time: 1425495869
        }, {
          id: 2,
          body: 'I\'ve read through this book a little bit.\nI\'m about to feel real dumb, but: how do you read it? I mean, when I was going through learn python the hard way, it had clear exercises.\nin eloquent JavaScript, it doesn\'t seem as clear to me, the instruction side. am I just brain damaged?',
          user: 'kingblackacid',
          userId: 2,
          time: 1425495869
        }, {
          id: 3,
          body: 'Awesome!\nBut is there an eBook version available?',
          user: 'mos_6502',
          userId: 3,
          time: 1425495869
        }
      ]
    };
  });
