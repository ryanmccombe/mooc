'use strict';

/**
 * @ngdoc directive
 * @name moocApp.directive:singleComment
 * @description
 * # singleComment
 */
angular.module('moocApp')
  .directive('singleComment', function () {
    return {
      restrict: 'A',
      controller: function ($scope, $http, API_URL) {
        $scope.deleteComment = function (comment) {
          var index = $scope.comments.indexOf(comment);
          $http.delete(API_URL + 'comments/' + comment.id)
            .success(function (res) {
              $scope.comments.splice(index, 1);
            })
            .error(function (err) {
              alert(err.message);
            });
        }
      },
      link: function postLink(scope, element, attrs) {
        setTimeout(function () {
          element.find('[data-toggle="tooltip"]').tooltip();
        }, 0)

      }
    };
  });
