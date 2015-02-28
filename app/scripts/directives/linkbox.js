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
      controller: function($scope) {

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
          element.find('.glyphicon').css({
            'margin-top': rowHeight / 2 - 30 + 'px'})
        }, 0)
      }
    };
  });
