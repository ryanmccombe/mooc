angular
  .module('moocApp').config(function($stateProvider, $urlRouterProvider, $httpProvider){
    $urlRouterProvider.otherwise('/');

    $stateProvider.state('main',{
      url: '/:category',
      templateUrl: '/views/linklist.html'
    })
      .state('user',{
        url: '/u/:username',
        templateUrl: '/views/user.html'
      })
      .state('comments',{
        url: '/comments/:id',
        templateUrl: '/views/comments.html',
        controller: 'CommentCtrl'
      })
  })

  .constant('API_URL', '');
