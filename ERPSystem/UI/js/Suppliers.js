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

    $scope.CInit = function () {
        $scope.Supplieract = 1;
        //$scope.imageSrc = null;
        //document.getElementById('cmpLogo').src = "";

        var date = new Date();
        var components = [
            date.getHours(),
            date.getMinutes(),
            date.getSeconds()
        ];

        var id = components.join("");
        $scope.SupplierCode = 'SUPC' + id;
    }
    $rootScope.spinner = {
        active: false,
        on: function () {
            this.active = true;
        },
        off: function () {
            this.active = false;
        }
    }
    //$rootScope.spinner.on();
    $scope.GetSuppliers = function () {
        $http.get('/api/Suppliers/getSuppliers').then(function (res, data) {
            $scope.Suppliers = res.data;
            $rootScope.spinner.off();
            $("#Suppliers-content").show();
        });

        //$http.get('/api/Users/GetUsers?cmpId=1').then(function (res, data) {
        //    $scope.Users = res.data;
        //    $rootScope.spinner.off();
        //    $("#customers-content").show();
        //});


    }

    
    $scope.save = function (Supplier) {

        if (Supplier == null) {
            alert('Please enter name.');
            return;
        }

        var phoneformat = /^(\([0-9]{3}\)\s*|[0-9]{3}\-)[0-9]{3}-[0-9]{4}$/;
        if (Supplier.ContactNo != null && Supplier.ContactNo != "") {
            if ((Supplier.ContactNo).match(phoneformat)) {
                $scope.phonevalid = '';
            }
            else {
                if ((Supplier.ContactNo).match(/^\d{10}$/)) {
                    $scope.phonevalid = '';
                }
                else {
                    alert('Contact No1 number format is invalid.');
                    return;
                }
            }
        }

        var phoneformat1 = /^(\([0-9]{3}\)\s*|[0-9]{3}\-)[0-9]{3}-[0-9]{4}$/;
        if (Supplier.ContactNo != null && Supplier.ContactNo != "") {
            if ((Supplier.ContactNo).match(phoneformat1)) {
                $scope.phonevalid = '';
            }
            else {
                if ((Supplier.ContactNo).match(/^\d{10}$/)) {
                    $scope.phonevalid = '';
                }
                else {
                    alert('Contact No2 number format is invalid.');
                    return;
                }
            }
        }


        if (Supplier.Name == null) {
            alert('Please enter client name.');
            return;
        }
        if (Supplier.Name == "") {
            alert('Please enter client name.');
            $scope.GetSuppliers();
            return;
        }

        var SelSupplier = {
            Name: Supplier.Name,
            SupplierCode: Supplier.SupplierCode,
            Address: Supplier.Address,
            ContactNo: Supplier.ContactNo,
            ContactNo1: Supplier.ContactNo1,
            Email: Supplier.Email,
            PTSPOCId: ($scope.poc == null) ? null : $scope.poc.Id,
            Active: (Supplier.act == null) ? 0 : Supplier.act,
            Id: Supplier.Id,
            //insupddelflag: 'U'
        };

        var req = {
            method: 'POST',
            url: '/api/Suppliers/saveSuppliers',
            //headers: {
            //    'Content-Type': undefined
            data: SelSupplier
        }
        $http(req).then(function (response) {
            //$scope.showDialog("Saved successfully!");
            $scope.GetSuppliers();
            $scope.Suppliers1 = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog1(errmssg);
            $scope.GetSuppliers();
            $scope.Suppliers1 = null;
        });


    };


    $scope.saveNew = function (Supplier) {

        if (Supplier == null) {
            alert('Please enter name.');
            return;
        }

        var phoneformat = /^(\([0-9]{3}\)\s*|[0-9]{3}\-)[0-9]{3}-[0-9]{4}$/;
        if (Supplier.ContactNo != null && Supplier.ContactNo != "") {
            if ((Supplier.ContactNo).match(phoneformat)) {
                $scope.phonevalid = '';
            }
            else {
                if ((Supplier.ContactNo).match(/^\d{10}$/)) {
                    $scope.phonevalid = '';
                }
                else {
                    alert('Contact No1 number format is invalid.');
                    return;
                }
            }
        }

        var phoneformat = /^(\([0-9]{3}\)\s*|[0-9]{3}\-)[0-9]{3}-[0-9]{4}$/;
        if (Supplier.ContactNo1 != null && Supplier.ContactNo1 != "") {
            if ((Supplier.ContactNo1).match(phoneformat)) {
                $scope.phonevalid = '';
            }
            else {
                if ((Supplier.ContactNo1).match(/^\d{10}$/)) {
                    $scope.phonevalid = '';
                }
                else {
                    alert('Contact No1 number format is invalid.');
                    return;
                }
            }
        }

        if (Supplier.Name == null) {
            alert('Please enter Name name.');
            return;
        }

        var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/

        if (Supplier.Email) {
            if (reg.test(Supplier.Email) == false) {
                // alert('Please enter valid email address.');
                $scope.mssg = 'Enter Valid Email Id.';
                return false;
            }
        }

        var SelSupplier = {
            Name: Supplier.Name,
            SupplierCode: Supplier.SupplierCode,
            Address: Supplier.Address,
            ContactNo: Supplier.ContactNo,
            ContactNo1: Supplier.ContactNo1,
            Email: Supplier.Email,
            PTSPOCId: ($scope.ju == null) ? null : $scope.ju.Id,
            Active: ($scope.Supplieract == null) ? 0 : $scope.Supplieract,
            Id: -1,
            //insupddelflag: 'I'
        };

        var req = {
            method: 'POST',
            url: '/api/Suppliers/saveSuppliers',
            //headers: {
            //    'Content-Type': undefined
            data: SelSupplier
        }
        $http(req).then(function (response) {
            //$scope.showDialog("Saved successfully!");
            $scope.GetSuppliers();
            $scope.Supplier = null;
            $scope.ju = null;
            $scope.mssg = null;
            $('#Modal-header-new').modal('hide');
        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog1(errmssg);
            $('#Modal-header-new').modal('hide');
            $scope.GetSuppliers();
            $scope.Supplier = null;
            $scope.mssg = null;
        });

    };


    $scope.setCurrSupplier = function (grp) {
        $scope.Suppliers1 = grp;
        $scope.poc = null;
        for (cnt = 0; cnt < $scope.Users.length; cnt++) {
            if ($scope.Users[cnt].Id == $scope.Suppliers1.PTSPOCId) {
                $scope.poc = $scope.Users[cnt];
                break;
            }
        }

    };

    $scope.clearGroup = function () {
        $scope.Suppliers1 = null;
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




