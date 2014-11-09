angular.module('TestApp').controller 'DashboardCtrl', ($scope, Article) ->
  Article.index().then (response) ->
    $scope.articles = response.data
