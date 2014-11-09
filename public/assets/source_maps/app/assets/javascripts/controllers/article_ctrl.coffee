angular.module('TestApp').controller 'ArticleCtrl', ($scope, $stateParams, Article) ->
  Article.find($stateParams.id).then (response) ->
    $scope.article = response.data
