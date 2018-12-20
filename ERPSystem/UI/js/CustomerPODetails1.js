// JavaScript source code
var myapp1 = angular.module('myApp', ['ngStorage', 'ui.bootstrap',]);

myapp1.filter('FilteredJobs', function () {
    return function (items, locid, statusid, custid) {
        var filtered = [];

        for (var i = 0; i < items.length; i++) {
            if ((item[i].LocationID == locid || locid == null)
                && (item[i].CustomerID == custid || custid == null)
                && (item[i].StatusId == statusid || statusid == null)) {
                filtered.push(items[i]);
            }

        }
        return filtered;
    };
});

var mycrtl1 = myapp1.controller('myCtrl', function ($scope, $http, $localStorage, $uibModal, $filter, $rootScope) {
    if ($localStorage.uname == null) {
       // window.location.href = "../login.html";
    }
    $scope.uname = $localStorage.uname;
    $scope.userdetails = $localStorage.userdetails;
    $scope.isSuperUser = $localStorage.isSuperUser;
    $scope.roleLocations = $localStorage.roleLocation;
    $scope.isAdminSupervisor = $localStorage.isAdminSupervisor;
    $scope.salemanagers = new Array();
    $scope.salerepresentives = new Array();
    var tloc = '';
    var tjst = '';
    var tcst = '';

    $scope.init = function () {

        $http.get('/api/Customers/getCustomers').then(function (res, data) {
            $scope.Customers = res.data;
            //$localStorage.customerdatajobs=$scope.Customers
        });

        $http.get('/api/Types/TypesByGroupId?groupid=3').then(function (res, data) {
            $scope.jobStatus = res.data;
            var st = [];
            if ($scope.jobStatus) {
                for (var i = 0; i < $scope.jobStatus.length; i++) {
                    if ($scope.jobStatus[i].Id != 32 && $scope.jobStatus[i].Id != 29) {
                        st.push($scope.jobStatus[i]);
                    }
                }
                $scope.jbstatus = st;
                //$localStorage.jobstatusdata = $scope.jbstatus;
            }
        });

        $http.get('/api/Types/TypesByGroupId?groupid=10').then(function (res, data) {
            $scope.jobtypes = res.data;
        });

        $http.get('/api/location/getlocations').then(function (res, data) {
            $scope.Locations = res.data;
            //$localStorage.locationdatajobs = $scope.Locations;
        });

        var locationId = ($scope.s == null) ? -1 : $scope.s.id;
        //check if he is a location admin and accordingly enable assets and jobs creation for his location
        //check the loction of the selected asset
        //if user is not super user then compare with the location of the user
        //if location is mismatching then disable the save button
        $scope.CanCreate = ($scope.isSuperUser == 1) ? 1 : 0;
        if ($scope.isSuperUser == 0 && $scope.roleLocations != null) {

            //$scope.CanCreate = 0;

            for (cnt = 0; cnt < $scope.roleLocations.length; cnt++) {
                if (locationId == $scope.roleLocations[cnt].LocationId) {
                    $scope.CanCreate = ($scope.roleLocations[cnt].roleid == 2 || $scope.roleLocations[cnt].roleid == 3) ? 1 : 0;
                    break;
                }
            }
        }

        $scope.getJobsListByStatus();
    }
    $scope.getFRQlist = function () {


        $http.get('api/CustomerPODetail/getdata').then(function (res, data) {
            $scope.rfqlist = res.data;
        });
        $scope.init();
    }
    $scope.CInit = function () {
        $scope.Customeract = 1;
        var date = new Date();
        var components = [
            date.getHours(),
            date.getMinutes(),
            date.getSeconds()
        ];

        var id = components.join("");
        $scope.newRFQId = 'RFQ' + id;
        $scope.GetConfigData();
    }


    $scope.GetConfigData = function () {
        $http.get('/api/Customers/getCustomers').then(function (res, data) {
            $scope.Customers = res.data;
        });
        $http.get('/api/Users/GetUsers').then(function (res, data) {
            $scope.Suppliers = res.data;
            if ($scope.Suppliers != null) {
                for (var i = 0; i < $scope.Suppliers.length; i++) {
                    if ($scope.Suppliers[i].RoleId != null) {
                        if (3 == $scope.Suppliers[i].RoleId) {
                            $scope.salemanagers.push($scope.Suppliers[i]);
                        }
                        if ((4 == $scope.Suppliers[i].RoleId)) {
                            $scope.salerepresentives.push($scope.Suppliers[i]);
                        }
                    }
                }
            }
        });
        $http.get('/api/Types/TypesByGroupId?groupid=3').then(function (res, data) {
            $scope.jobStatus = res.data;
            var st = [];
            if ($scope.jobStatus) {
                for (var i = 0; i < $scope.jobStatus.length; i++) {
                    if ($scope.jobStatus[i].Id != 32 && $scope.jobStatus[i].Id != 29) {
                        st.push($scope.jobStatus[i]);
                    }
                }
                $scope.jbstatus = st;
            }
        });

        $http.get('/api/Types/TypesByGroupId?groupid=5').then(function (res, data) {
            $scope.docTypes = res.data;
        });

    }

    $scope.AddNewRFQ = function () {
        var newPOD = $scope.newPOD;
        if (newPOD == null) {
            alert('Please enter RFQ name.');
            return;
        }
        //Job type
        if (newPOD.js == null) {
            alert('Please Select Status.');
            return;
        }

        //CustomerID
        if (newPOD.jc == null) {
            alert('Please select Customer.');
            return;
        }
        //Communication Type
        if (newPOD.jl == null) {
            alert('Please select Communication Type.');
            return;
        }
        //Sales Manager
        if (newPOD.sm == null) {
            alert('Please select Sales Manager.');
            return;
        }


        var RFq = {

            Id:newPOD.Id,
            POId: newPOD.POId,
            RFQItemId: newPOD.RFQItemId,
            NoofUnits: newPOD.NoofUnits,
            DealerUnitPrice: newPOD.DealerUnitPrice,
            DealerCharges: newPOD.DealerCharges,
            DealerDiscounts: newPOD.DealerDiscounts,
            SubTotal: newPOD.SubTotal,
            SupplierUnitPrice:newPOD.SupplierUnitPrice,
            SupplierDiscount: newPOD.SupplierDiscount,
            SupplierCharges: newPOD.SupplierCharges,
            OtherCharges: newPOD.OtherCharges,
            Total:   newPOD.Total,
            changedById: 1,
            flag: 'I'
        }

        var req = {
            method: 'POST',
            url: 'api/CustomerPODetails/savedetails',
            data: RFq
        }
        $http(req).then(function (response) {

            alert("Saved successfully!");
            var newRFQDetails = response.data[0];
            //$scope.getJobsListByStatus();
            $scope.newPOD = null;
            //$scope.jbty = '';
            $('#Modal-header-new').modal('hide');

            // 
            $localStorage.nJobId = newRFQDetails.ID;
            window.location.href = "RFQDetails.html";

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $('#Modal-header-new').modal('hide');
            $scope.showDialog1(errmssg);
        });
        $scope.currGroup = null;

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
    $scope.GoToJobDetails = function (aid) {
        $localStorage.nJobId = aid;
        window.location.href = "JobDetails.html";
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
myapp1.controller('ModalInstanceCtrl1', function ($scope, $uibModalInstance, mssg) {

    $scope.mssg = mssg;
    $scope.ok = function () {
        $uibModalInstance.close('test');
    };

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };

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


