// JavaScript source code
var myapp1 = angular.module('myApp', ['ngStorage', 'ui.bootstrap', 'treasure-overlay-spinner']);
var mycrtl1 = myapp1.controller('myCtrl', function ($scope, $http, $localStorage, $uibModal, $rootScope) {
    if ($localStorage.uname == null) {
        // window.location.href = "../login.html";
    }
    $scope.uname = $localStorage.uname;
    $scope.userdetails = $localStorage.userdetails;
    $scope.isSuperUser = $localStorage.isSuperUser;

    $scope.isAdminSupervisor = $localStorage.isAdminSupervisor;

    //$scope.CInit = function () {
    //    $scope.Customeract = 1;
    //    var date = new Date();
    //    var components = [
    //        date.getHours(),
    //        date.getMinutes(),
    //        date.getSeconds()

    //];

    //    var id = components.join("");
    //    $scope.CustomerCode = 'CUST' + id;
    //}
    //$rootScope.spinner = {
    //    active: false,
    //    on: function () {
    //        this.active = true;
    //    },
    //    off: function () {
    //        this.active = false;
    //    }
    //}
    //$rootScope.spinner.on();
    $scope.GetRecieptreturn = function () {
        $http.get('/api/Recieptreturn/getRecieptreturn').then(function (res, data) {
            $scope.Recieptreturn = res.data;
            //$rootScope.spinner.off();
            $("#Recieptreturn-content").show();
        });

        //$http.get('/api/Users/GetUsers?cmpId=1').then(function (res, data) {
        //    $scope.Users = res.data;
        //    $rootScope.spinner.off();
        //    $("#customers-content").show();
        //});


    }

    $scope.save = function (Recieptreturn) {

        var SelRecieptreturn = {
           
            item: Recieptreturn.item,
            noofUnits: Recieptreturn.noofUnits,
            UnitPrice: Recieptreturn.UnitPrice,
            returnedBy: Recieptreturn.returnedBy,
            comment: Recieptreturn.comment,
            flag: 'U'
        };

        var req = {
            method: 'POST',
            url: '/api/Recieptreturn/saveRecieptreturn',
            //headers: {
            //    'Content-Type': undefined
            data: SelRecieptreturn
        }
        $http(req).then(function (response) {
            //$scope.showDialog("Saved successfully!");
            $scope.GetRecieptreturn();
            $scope.Recieptreturn1 = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog1(errmssg);
            $scope.GetInvoiceDetails();
            $scope.InvoiceDetails1 = null;
        });


    };


    $scope.saveNew = function (Recieptreturn) {


        var SelRecieptreturn = {

            item: Recieptreturn.item,
            noofUnits: Recieptreturn.noofUnits,
            UnitPrice: Recieptreturn.UnitPrice,
            returnedBy: Recieptreturn.returnedBy,
            comment: Recieptreturn.comment,
            flag: 'I'
        };

        var req = {
            method: 'POST',
            url: '/api/Recieptreturn/saveRecieptreturn',
            //headers: {
            //    'Content-Type': undefined
            data: SelRecieptreturn
        }
        $http(req).then(function (response) {
            //$scope.showDialog("Saved successfully!");
            $scope.GetRecieptreturn();
            $scope.Recieptreturn = null;
            $scope.ju = null;
            $scope.mssg = null;
            $('#Modal-header-new').modal('hide');
        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog1(errmssg);
            $('#Modal-header-new').modal('hide');
            $scope.GetInvoiceDetails();
            $scope.InvoiceDetails = null;
            $scope.mssg = null;
        });

    };


    $scope.setCurrCustomer = function (grp) {
        $scope.Recieptreturn1 = grp;
        $scope.poc = null;
        for (cnt = 0; cnt < $scope.Users.length; cnt++) {
            if ($scope.Users[cnt].Id == $scope.Recieptreturn1.PTSPOCId) {
                $scope.poc = $scope.Users[cnt];
                break;
            }
        }

    };

    $scope.clearGroup = function () {
        $scope.Recieptreturn1 = null;
    };


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
    $scope.showDialog1 = function (message) {

        var modalInstance = $uibModal.open({
            animation: $scope.animationsEnabled,
            templateUrl: 'myModalContent1.html',
            controller: 'ModalInstanceCtrl1',
            resolve: {
                mssg: function () {
                    return message;
                }
            }
        });
    }

});

myapp1.controller('ModalInstanceCtrl', function ($scope, $uibModalInstance, mssg) {

    $scope.mssg = mssg;
    $scope.ok = function () {
        $uibModalInstance.close('test');
    };

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };
});




