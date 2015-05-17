angular
  .module('moocApp').config(function($stateProvider, $urlRouterProvider, $httpProvider, $locationProvider){
    $urlRouterProvider.otherwise('/');

    $stateProvider.state('main',{
      url: '/:category?sort',
      templateUrl: '/views/linklist.html',
      controller: 'MainCtrl'
    })
      .state('user',{
        url: '/u/:username/:sort',
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

    // $locationProvider.html5Mode(true);
  })

  .constant('API_URL', 'http://localhost:3000/')
  .constant('SITE_URL', 'http://localhost:9000/');
