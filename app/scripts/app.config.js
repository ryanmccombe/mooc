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
  })

  .constant('API_URL', '');
