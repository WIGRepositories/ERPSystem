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

    $scope.GetReceivable = function () {

        $http.get('/api/Receivable/getReceivable').then(function (response, req) {
            $scope.getReceivable = response.data;

        });
    }
    $scope.GetReceivable = function () {
        $http.get('/api/Receivable/getReceivable').then(function (res, data) {
            $scope.Receivable = res.data;
        });
    }
    $scope.getselectval = function (seltype) {
        //var grpid = (seltype) ? seltype.Id : -1;
        //to save new inventory item
        $http.get('/api/Receivable/getReceivable').then(function (res, data) {
            $scope.Receivable = res.data;
        });
    }
    $scope.saveReceivable = function (Receivable) {
        //if (Group == null) {
        //    alert('please select note')
        //}
        //if (Group.ItemName == null) {
        //    alert('please enter Itemname')
        //}

        var Receivable = {

            RFQId: Receivable.RFQId,
            Name: Receivable.Name,
            AccountCode: Receivable.AccountCode,
            Amount: Receivable.Amount,
            ReceivedByDate: Receivable.ReceivedByDate,
            ActualReceivedDate: Receivable.ActualReceivedDate,
            Status: Receivable.Status
           
        }

        var req = {
            method: 'POST',
            url: '/api/DeliveryNote/saveDeliveryNote',
            data: Receivable
        }
        $http(req).then(function (response) {

            $scope.showDialog("Saved successfully!");

            $scope.Receivable = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "Your details are incorrect";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog(errmssg);
        });
        $scope.currReceivable = null;
    };

    $scope.save = function (Receivable) {

        var Receivable = {
            RFQId: Receivable.RFQId,
            Name: Receivable.Name,
            AccountCode: Receivable.AccountCode,
            Amount: Receivable.Amount,
            ReceivedByDate: Receivable.ReceivedByDate,
            ActualReceivedDate: Receivable.ActualReceivedDate,
            Status: Receivable.Status,
            flag: 'I'

        }

        var req = {
            method: 'POST',
            url: '/api/Receivable/saveReceivable',
            data: Receivable
        }
        $http(req).then(function (response) {

            $scope.showDialog("Saved successfully!");

            $scope.Receivable = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "Your details are incorrect";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog(errmssg);
        });
        $scope.currReceivable = null;
    };

    $scope.setReceivable = function (usr) {
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






