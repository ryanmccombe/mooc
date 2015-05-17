'use strict';

/**
 * @ngdoc directive
 * @name moocApp.directive:commentForm
 * @description
 * # commentForm
 */


angular.module('moocApp')
  .directive('commentForm', function () {
    return {
      restrict: 'A',
      controller: function ($scope, $http, $timeout, API_URL) {
        $scope.createComment = function () {
          var comment = {comment: {body: $scope.body, id: $scope.id}};
          $http.post(API_URL + 'comments', comment)
            .success(function(res){
              res.new = true;
              $scope.body = '';
              $timeout(function(){
                $scope.$apply(function(){
                  $scope.comments.unshift(res);
                });
              });
            })
            .error(function(err){
              alert('warning', 'Oops', 'Could not post');
            });
        }
      },
      link: function postLink(scope, element, attrs) {
        element.find('textarea.js-auto-size').textareaAutoSize();

      }
    };
  });
