var myApp = angular.module('myApp', []);
myApp.controller('sp', function ($scope, $http, $window) {
    $http({
        method: 'GET',
        url: '/g/getall',
    }).then(function (s) {
        $scope.list = s.data;
    })
})
myApp.controller('loai', function ($scope, $http, $window) {
    $http({
        method: 'GET',
        url: '/g/getloai',
    }).then(function (s) {
        $scope.list = s.data;
        console.log(s.data)
    })
})
myApp.controller('loaisan', function ($scope, $http, $location, $window) {
    var location = $location.search().maloai;
    $http({
        method: 'GET',
        url: '/g/getbyloai?maloaisp=' + location,
    }).then(function (s) {
        $scope.list = s.data;
        console.log(s.data)
    })
})
