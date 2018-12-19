// JavaScript source code
var app = angular.module('myApp', ['ngStorage', 'ui.bootstrap', 'angularFileUpload'])
  

var ctrl = app.controller('myCtrl', function ($scope, $http, $localStorage, $uibModal, $upload, $timeout, fileReader, $filter) {

    $http.get('/api/supplierPurchaseOrder/getdata').then(function (res, data) {
        $scope.RFQId = res.data;
    });
});