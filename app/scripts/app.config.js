angular
  .module('moocApp').config(function($stateProvider, $urlRouterProvider, $httpProvider){
    $urlRouterProvider.otherwise('/');

    $stateProvider.state('main',{
      url: '/:category?sort',
      templateUrl: '/views/linklist.html',
      controller: 'MainCtrl'
    })
      .state('user',{
        url: '/u/:username',
        templateUrl: '/views/user.html',
        controller: 'UserprofileCtrl'
      })
      .state('comments',{
        url: '/comments/:id',
        templateUrl: '/views/comments.html',
        controller: 'CommentCtrl'
      })
      .state('logout',{
        url: '/logout',
        controller: 'LogoutCtrl'
      });

    $httpProvider.interceptors.push('authInterceptor');
  })

  .constant('API_URL', '');
