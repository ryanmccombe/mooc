'use strict';

/**
 * @ngdoc directive
 * @name moocApp.directive:linkbox
 * @description
 * # linkbox
 */
angular.module('moocApp')
  .directive('linkbox', function () {
    return {
      templateUrl: 'views/linkbox.html',
      restrict: 'E',
      transclude: true,
      controller: function($scope, $http, API_URL) {

        $scope.upvote = function(link){
          if (link.upvoted){
            $http.delete(API_URL + 'upvotes/' + link.upvoted)
              .success(function(res){
                link.upvoted = false;
                link.rating--;
              })
              .error(function(err){
                console.log(err)
              });

          } else {
            $http.post(API_URL + 'upvotes/', link.id)
              .success(function(res){
                link.upvoted = res;
                link.rating++;
              })
              .error(function(err){
                console.log(err)
              });

          }
        };
      },
      link: function postLink(scope, element, attrs) {

        // Use timeout to queue jquery after binding
        setTimeout(function(){
          element.find('[data-toggle="tooltip"]').tooltip();
          var rowHeight = element.children('.linkbox').height();
          if (rowHeight < 300) {
            element.find('.glyphicon').css({
              'margin-top': rowHeight / 2 - 30 + 'px'
            })
          }
        }, 0)
      }
    };
  });
