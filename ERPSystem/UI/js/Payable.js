// JavaScript source code
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

    $scope.GetPayable = function () {

        $http.get('/api/Payable/getPayable').then(function (response, req) {
            $scope.getPayable = response.data;

        });
    }
    $scope.GetPayable = function () {
        $http.get('/api/Payable/getPayable').then(function (res, data) {
            $scope.Payable = res.data;
        });
    }
    $scope.getselectval = function (seltype) {
        //var grpid = (seltype) ? seltype.Id : -1;
        //to save new inventory item
        $http.get('/apiPayable/getPayable').then(function (res, data) {
            $scope.Payable = res.data;
        });
    }
    $scope.savePayable = function (Payable) {
        //if (Group == null) {
        //    alert('please select note')
        //}
        //if (Group.ItemName == null) {
        //    alert('please enter Itemname')
        //}

        var Payable = {

            RFQId: Payable.RFQId,
            Name: Payable.Name,
            AccountCode: Payable.AccountCode,
            Amount: Payable.Amount,
            Paiddate: Payable.Paiddate,
            ActualReceivedDate: Payable.ActualReceivedDate,
            Status: Payable.Status

        }

        var req = {
            method: 'POST',
            url: '/api/DeliveryNote/saveDeliveryNote',
            data: Payable
        }
        $http(req).then(function (response) {

            $scope.showDialog("Saved successfully!");

            $scope.Payable = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "Your details are incorrect";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog(errmssg);
        });
        $scope.currGroup = null;
    };

    $scope.save = function (Payable) {

        var Payable = {
            RFQId: Payable.RFQId,
            Name: Payable.Name,
            AccountCode: Payable.AccountCode,
            Amount: Payable.Amount,
            Paiddate: Payable.Paiddate,
            ActualReceivedDate: Payable.ActualReceivedDate,
            Status: Payable.Status,
            flag: 'I'

        }

        var req = {
            method: 'POST',
            url: '/api/Payable/savePayable',
            data: Payable
        }
        $http(req).then(function (response) {

            $scope.showDialog("Saved successfully!");

            $scope.Payable = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "Your details are incorrect";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog(errmssg);
        });
        $scope.currPayable = null;
    };

    $scope.Payable = function (usr) {
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






