﻿// JavaScript source code
var app = angular.module('myApp', ['ngStorage', 'ui.bootstrap'])
var ctrl = app.controller('myCtrl', function ($scope, $http, $localStorage, $uibModal) {
    //$scope.uname = $localStorage.uname

    //if ($localStorage.uname == null) {
    //    window.location.href = "login.html";
    //}
    //$scope.uname = $localStorage.uname;
    $scope.userdetails = $localStorage.userdetails;
    //$scope.Roleid = $scope.userdetails[0].roleid;

    $scope.dashboardDS = $localStorage.dashboardDS;

    //$scope.GetDeliveryNote = function () {

    //    $http.get('/api/CustomerPODetail/getdata').then(function (response, req) {
    //        $scope.getDeliveryNote = response.data;

    //    });
    //}
    $scope.GetSalesRegister = function () {
        $http.get('/api/SalesRegister/getdata').then(function (res, data) {
            $scope.Group = res.data;
        });
    }
    $scope.getselectval = function (seltype) {
        //var grpid = (seltype) ? seltype.Id : -1;
        //to save new inventory item
        $http.get('api/SalesRegister/getdata').then(function (res, data) {
            $scope.Group = res.data;
        });
    }
    $scope.saveSalesRegister = function (Group) {
        //if (Group == null) {
        //    alert('please select note')
        //}
        //if (Group.ItemName == null) {
        //    alert('please enter Itemname')
        //}

        var Group = {

            ItemName: Group.ItemName,
            NoofUnits: Group.NoofUnits,
            SoldOn: Group.SoldOn,
            UnitPrice: Group.UnitPrice,
            Charges: Group.Charges,
            Discount: Group.Discount,
            SubTotal: Group.SubTotal,
            Total: Group.Total,
            flag: 'I'
        }

        var req = {
            method: 'POST',
            url: '/api/SalesRegister/savedetails',
            data: Group
        }
        $http(req).then(function (response) {
            $('#Modal-header-new').modal('hide');
            $scope.showDialog("Saved successfully!");
            $scope.GetSalesRegister();

            $scope.Group = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "Your details are incorrect";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog(errmssg);
        });
        $scope.currGroup = null;
    };

    $scope.save = function (Group) {

        var Group = {
            ItemName: Group.ItemName,
            NoofUnits: Group.NoofUnits,
            SoldOn: Group.SoldOn,
            UnitPrice: Group.UnitPrice,
            Charges: Group.Charges,
            Discount: Group.Discount,
            SubTotal: Group.SubTotal,
            Total: Group.Total,
            flag: 'I'

        }

        var req = {
            method: 'POST',
            url: '/api/SalesRegister/savedetails',
            data: Group
        }
        $http(req).then(function (response) {
            $('#Modal-header-new').modal('hide');
            $scope.showDialog("Saved successfully!");
            $scope.GetSalesRegister();
            $scope.Group = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "Your details are incorrect";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog(errmssg);
        });
        $scope.currGroup = null;
    };

    $scope.setGroups = function (usr) {
        $scope.Purchase1 = usr;
    };
    $scope.clearPurchase1 = function () {
        $scope.Purchase1 = null;
    }
    $scope.showDialog = function (message) {

        var modalInstance = $uibModal.open({
            animation: $scope.animationsEnabled,
            templateUrl: 'myModalContent.html',
            controller: 'ModalInstanceCtrl',
            resolve: {
                mssg: function () {
                    return message;
                }
            }
        });
    }


});



app.controller('ModalInstanceCtrl', function ($scope, $uibModalInstance, mssg) {

    $scope.mssg = mssg;
    $scope.ok = function () {
        $uibModalInstance.close('test');
    };

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };
});






