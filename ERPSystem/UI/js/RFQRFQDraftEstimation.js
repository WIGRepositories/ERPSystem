var myapp1 = angular.module('myApp', ['ngStorage', 'ui.bootstrap']);

myapp1.directive('onFinishRender', function ($timeout) {
    return {
        restrict: 'A',
        link: function (scope, element, attr) {
            if (scope.$last === true) {
                $timeout(function () {
                    scope.$emit('ngRepeatFinished');
                });
            }
        }
    }
});

var mycrtl1 = myapp1.controller('myCtrl', function ($scope, $http, $localStorage, $uibModal,  $rootScope) {

    //if ($localStorage.uname == null) {
    //    window.location.href = "../login.html";
    //}
    //$scope.uname = $localStorage.uname;
    //$scope.userdetails = $localStorage.userdetails;
    //$scope.isSuperUser = $localStorage.isSuperUser;
    //$scope.isAdminSupervisor = $localStorage.isAdminSupervisor;
    $scope.selArr = new Array();
    $scope.esarray = new Array();
    var tt;
    $scope.init = function () {

        $http.get('/api/Customers/getCustomers').then(function (res, data) {
            $scope.Customers = res.data;
        });

        $http.get('/api/Types/TypesByGroupId?groupid=3').then(function (res, data) {
            $scope.jobStatus = res.data;
        });

        $http.get('/api/RFQ/GetRFQ?statusid=1&custid=1').then(function (res, data) {
            $scope.rfqlist = res.data;
            $scope.l = $scope.rfqlist[0];
        });

        //$http.get('/api/AssetModel/GetAssetModels?locId=-1').then(function (res, data) {
        //    $scope.Models = res.data;
        //});

        $scope.GetJobEquipment();
    }    
    $scope.GetJobEquipment = function () {
        //var mid = ($scope.s == null) ? -1 : $scope.s.Id;
        //var lid = ($scope.l == null) ? -1 : $scope.l.id;
        //var custId = ($scope.c == null || $scope.c.Id == null) ? -1 : $scope.c.Id;

        var modelId = ($scope.e == null || $scope.e.id == null) ? -1 : $scope.e.id;

        $http.get('/api/RFQ/GetItemsForRFQ?modelId=-1&rfqId=-1').then(function (res, data) {
            $scope.JobEquipment = res.data;
            //$rootScope.spinner.off();
            $("#jobequipment-content").show();
        });
    }
    $scope.GetRFQPersonnal = function (cc) {
        var custId = (cc == null) ? -1 : cc.ID;      

        $http.get('/api/RFQ/GetRFQPersonnal?customerId=' + custId).then(function (res, data) {
            $scope.custlist = res.data;
            //$rootScope.spinner.off();           
        });
    }

    $scope.SaveDraftEstimation = function (de) {
  
        $scope.esarray[0] = {
            unit:(de.unit==0)?null:de.unit,
            unitprice:(de.unitprice==0)?null:de.unitprice,
            tax:(de.tax==0)?null:de.tax,
            dis:(de.unit==0)?null:de.dis,
            subtotal:(de.unit==0)?null:de.subtotal,
            ItemId: de.ItemId,
            supid: de.custId,
            RFQID: de.RFQid2,
            flag:'I'
        }
        var req = {
            method: 'POST',
            url: '/api/RFQ/SaveRFQDrafEstimation',
            data: $scope.esarray
        }
        $http(req).then(function (res) {
            alert("Successfully Saved the Draft Estimation");

            //window.location.href = "RFQCustomerEstimation.html";
            //$('#Modal-header-supemail').modal('hide');
        });

    }
    $scope.checkedArr = new Array();
    $scope.uncheckedArr = new Array();
    $scope.setupsupplier = function (iname) {
        tt = iname;
    }
    $scope.SetData = function (b) {
        $scope.selArr.push(b);
    }

    $scope.SetCustlist = function () {
        $scope.selArr.push($scope.custlist);
    }


    $scope.AddCust = function () {       
        if ($scope.selArr.length == 0) {
            alert("Plese Select Supplier.");
            return;
        }
        for(var i=0;i<$scope.selArr.length;i++){
            $scope.selArr[i].Itemname = tt.Name;
            $scope.selArr[i].RFQID = tt.RFQID;
        }
        //$scope.a = $scope.selArr;

        var req = {
            method: 'POST',
            url: '/api/RFQ/SaveSupplierslist',
            data: $scope.selArr
        }
        $http(req).then(function (res) {
            $('#Modal-header-suppliers').modal('hide');
            //$scope.initdata = res.data;
            //$scope.showlocimportdata(res.data);
            alert("Saved Sucessfully");           
        });
    }

    //function stuffController($scope) {
    //    $scope.$on('$viewContentLoaded', jqueryStartWork);
    //}

    $scope.$on('ngRepeatFinished', function (ngRepeatFinishedEvent) {
        //you also get the actual event object
        //do stuff, execute functions -- whatever...
        //alert("ng-repeat finished");
        $("#example-advanced").treetable({ expandable: true }, true);
    });

    $scope.toggle = function (item) {
        var idx = $scope.checkedArr.indexOf(item);
        if (idx > -1) {
            $scope.checkedArr.splice(idx, 1);
        }
        else {
            $scope.checkedArr.push(item);
        }

        var idx = $scope.uncheckedArr.indexOf(item);
        if (idx > -1) {
            $scope.uncheckedArr.splice(idx, 1);
        }
        else {
            $scope.uncheckedArr.push(item);
        }
    };

    $scope.toggleMandatory = function (item) {
        var idx = $scope.checkedArr.indexOf(item);
        if (idx > -1) {
            //$scope.checkedArr.splice(idx, 1);
            $scope.checkedArr[idx].active = ($scope.checkedArr[idx].active == null || $scope.checkedArr[idx].active == 0) ? 1 : 0;
            $scope.checkedArr[idx].active = 1;
        }
        else {
            item.active = 1;
            item.active = 1;
            $scope.checkedArr.push(item);
        }
    };

    $scope.exists = function (item, list) {
        if (list == null) return false;
        return list.indexOf(item) > -1;
    };

    $scope.existsMandatory = function (item, list) {
        if (list == null) return false;
        if (list.indexOf(item) > -1 && item.active == 1)
            return true;
        else
            false;
    };

    $scope.isChecked = function () {
        return $scope.checkedArr.length === $scope.a.length;
    };

});