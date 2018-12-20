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

    $scope.GetDeliveryNote = function () {

        $http.get('/api/DeliveryNote/getDeliveryNote').then(function (response, req) {
            $scope.getDeliveryNote = response.data;

        });
    }
    $scope.GetDeliveryNote = function () {
        $http.get('/api/DeliveryNote/getDeliveryNote').then(function (res, data) {
            $scope.Group = res.data;
        });
    }
    $scope.getselectval = function (seltype) {
        //var grpid = (seltype) ? seltype.Id : -1;
        //to save new inventory item
        $http.get('/api/DeliveryNote/getDeliveryNote').then(function (res, data) {
            $scope.Group = res.data;
        });
    }
    $scope.saveDeliveryNote = function (Group) {
        //if (Group == null) {
        //    alert('please select note')
        //}
        //if (Group.ItemName == null) {
        //    alert('please enter Itemname')
        //}

        var Group = {
           
            RFQId: Group.RFQId,
            POId: Group.POId,
            DeliveryNoteNo: Group.DeliveryNoteNo,
            SupplierId: Group.SupplierId,
            DispatchDate: Group.DispatchDate,
            Deliverymethod: Group.Deliverymethod,
            IsDelivered: Group.IsDelivered,
            DeliveredOn: Group.DeliveredOn,
            TotalItems: Group.TotalItems,
            InvoiceAddress: Group.InvoiceAddress,
            CustomerAddress: Group.CustomerAddress
        }

        var req = {
            method: 'POST',
            url: '/api/DeliveryNote/saveDeliveryNote',
            data: Group
        }
        $http(req).then(function (response) {

            $scope.showDialog("Saved successfully!");

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
            RFQId: Group.RFQId,
            POId: Group.POId,
            DeliveryNoteNo: Group.DeliveryNoteNo,
            SupplierId: Group.SupplierId,
            DispatchDate: Group.DispatchDate,
            Deliverymethod: Group.Deliverymethod,
            IsDelivered: Group.IsDelivered,
            DeliveredOn: Group.DeliveredOn,
            TotalItems: Group.TotalItems,
            InvoiceAddress: Group.InvoiceAddress,
            CustomerAddress: Group.CustomerAddress,
            flag:'I'
            
        }

        var req = {
            method: 'POST',
            url: '/api/DeliveryNote/saveDeliveryNote',
            data: Group
        }
        $http(req).then(function (response) {

            $scope.showDialog("Saved successfully!");

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






