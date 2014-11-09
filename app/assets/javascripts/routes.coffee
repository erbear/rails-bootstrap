angular.module('TestApp').config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise('/');

  $stateProvider
    .state('home', {
      url: '/',
      controller: 'TestCtrl',
      templateUrl: 'test.html'
    })