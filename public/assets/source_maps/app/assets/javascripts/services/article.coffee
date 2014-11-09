angular.module('TestApp').factory 'Article', ($http) ->
  index: () ->
    $http.get('article', {isArray: true})
  find: (id) ->
    $http.get('article/' + id)
  create: (title, content) ->
    $http.post('article', {article: {title, content}})
  delete: (id) ->
    $http.delete('article/' + id)
