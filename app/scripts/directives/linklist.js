'use strict';

/**
 * @ngdoc directive
 * @name moocApp.directive:linklist
 * @description
 * # linklist
 */
angular.module('moocApp')
  .directive('linklist', function () {
    return {
      restrict: 'A',
      controller: function($scope, $http, SharedData){
        $scope.data = SharedData;

        $scope.deleteLink = function(link){
          var index = $scope.data.links.indexOf(link);
          $http.delete('http://localhost:3000/links/' + link.id)
            .success(function(res){
              $scope.data.links.splice(index, 1);
            })
            .error(function(err){
              alert(err.message);
            });
        }
      },
      link: function (scope, element, attrs) {

      }
    };
  });
