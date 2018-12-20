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
    $scope.GetInvoiceDetails = function () {
        $http.get('/api/InvoiceDetails/getInvoiceDetails').then(function (res, data) {
            $scope.InvoiceDetails = res.data;
            //$rootScope.spinner.off();
            $("#InvoiceDetails-content").show();
        });

        //$http.get('/api/Users/GetUsers?cmpId=1').then(function (res, data) {
        //    $scope.Users = res.data;
        //    $rootScope.spinner.off();
        //    $("#customers-content").show();
        //});


    }

    $scope.save = function (InvoiceDetails) {

        var SelCustomer = {
            POId: InvoiceDetails.POId,
            RFQItemId: InvoiceDetails.RFQItemId,
            NoOfUnits: InvoiceDetails.NoOfUnits,
            UnitPrice: InvoiceDetails.UnitPrice,
            charges: InvoiceDetails.charges,
            discounts: InvoiceDetails.discounts,
            subtotal: InvoiceDetails.subtotal,
            Total: InvoiceDetails.Total,       
            flag: 'U'
        };

        var req = {
            method: 'POST',
            url: '/api/InvoiceDetails/saveInvoiceDetails',
            //headers: {
            //    'Content-Type': undefined
            data: SelInvoiceDetails
        }
        $http(req).then(function (response) {
            //$scope.showDialog("Saved successfully!");
            $scope.GetInvoiceDetails();
            $scope.InvoiceDetails1 = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog1(errmssg);
            $scope.GetInvoiceDetails();
            $scope.InvoiceDetails1 = null;
        });


    };


    $scope.saveNew = function (InvoiceDetails) {
     

        var SelInvoiceDetails = {
            POId: InvoiceDetails.POId,
            RFQItemId: InvoiceDetails.RFQItemId,
            NoOfUnits: InvoiceDetails.NoOfUnits,
            UnitPrice: InvoiceDetails.UnitPrice,
            charges: InvoiceDetails.charges,
            discounts: InvoiceDetails.discounts,
            subtotal: InvoiceDetails.subtotal,
            Total: InvoiceDetails.Total,
            flag: 'I'
        };

        var req = {
            method: 'POST',
            url: '/api/InvoiceDetails/saveInvoiceDetails',
            //headers: {
            //    'Content-Type': undefined
            data: SelInvoiceDetails
        }
        $http(req).then(function (response) {
            //$scope.showDialog("Saved successfully!");
            $scope.GetInvoiceDetails();
            $scope.InvoiceDetails = null;
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
        $scope.Customers1 = grp;
        $scope.poc = null;
        for (cnt = 0; cnt < $scope.Users.length; cnt++) {
            if ($scope.Users[cnt].Id == $scope.Customers1.PTSPOCId) {
                $scope.poc = $scope.Users[cnt];
                break;
            }
        }

    };

    $scope.clearGroup = function () {
        $scope.Customers1 = null;
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




