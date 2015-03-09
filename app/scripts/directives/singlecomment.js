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
      controller: function($scope){
        // TODO
        $scope.deleteComment = function(id){
          console.log('deleting ' + id)
        }
      },
      link: function postLink(scope, element, attrs) {
        setTimeout(function(){
          element.find('[data-toggle="tooltip"]').tooltip();
        }, 0)

      }
    };
  });
