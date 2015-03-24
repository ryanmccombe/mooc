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
      controller: function($scope, $http) {

        $scope.upvote = function(link){
          if (link.upvoted){
            $http.delete('http://localhost:3000/upvotes/' + link.upvoted)
              .success(function(res){
                console.log('downvote successful')
              })
              .error(function(err){
                console.log(err)
              });

          } else {
            console.log(link);
            $http.post('http://localhost:3000/upvotes/', link.id)
              .success(function(res){
                console.log('upvote successful')
              })
              .error(function(err){
                console.log(err)
              });

          }
        };

        // TODO
        $scope.deleteLink = function(id){
          console.log('deleting ' + id)
        }
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
