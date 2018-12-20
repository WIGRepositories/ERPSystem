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
    $scope.selArr = new Array();
    $scope.finaquote = new Array();
    var tt;
    $scope.ses = new Array();
    $scope.multipledata = new Array();
    $scope.init = function () {

        $http.get('/api/Customers/getCustomers').then(function (res, data) {
            $scope.Customers = res.data;
        });

        $http.get('/api/Types/TypesByGroupId?groupid=3').then(function (res, data) {
            $scope.jobStatus = res.data;
            if ($scope.jobStatus != -null && $scope.rfqlist != null) {
                for (var i = 0; i < $scope.jobStatus.length; i++) {
                    if ($scope.rfqlist[0].StatusId = $scope.jobStatus[i].Id) {
                        $scope.s = $scope.jobStatus[i];
                        break;
                    }

                }
            }
        });

        $http.get('/api/RFQ/GetRFQwithoutstatus').then(function (res, data) {
            $scope.rfqlist = res.data;
            if ($scope.rfqlist != null) {
                $scope.l = $scope.rfqlist[0];
                $scope.GetJobEquipment();
            }
        });

        $http.get('/api/RFQ/GetRFQDraftEstimation').then(function (res, data) {
            $scope.drafestimation= res.data;
        });
        $http.get('/api/Suppliers/getSuppliers').then(function (res, data) {
            $scope.Suppliers = res.data;
        });
        $http.get('/api/InventoryItem/GetInventoryItem?subCatId=-1').then(function (res , data) {
            $scope.itemslist = res.data;
        });
        //$http.get('/api/Users/GetUsers').then(function (res, data) {
        //    $scope.Suppliers = res.data;
        //});
        //$http.get('/api/InventoryItem/Getitems').then(function (res, data) {
        //    $scope.itemslist = res.data;
        //});

        $scope.GetJobEquipment();
    }

    $scope.GetJobEquipment = function () {
        var lid = ($scope.l == null) ? -1 : $scope.l.ID;
        //var custId = ($scope.c == null || $scope.c.Id == null) ? -1 : $scope.c.Id;
        var modelId = ($scope.e == null || $scope.e.id == null) ? -1 : $scope.e.id;
        $http.get('/api/RFQ/GetRFQSupplierPO?modelId=' + modelId + '&rfqId=' + lid).then(function (res, data) {
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

    $scope.SetUpEmailData = function (sdf) {
        $scope.NoOfUnits1 = sdf.NoOfUnits;
        $scope.Subtotal1 = sdf.Subtotal;
        $scope.FinaUnitPrice = sdf.FinaUnitPrice;
        $scope.selectedItem = '';
        $scope.suppliename = '';
        $scope.supeEmail = sdf.Email;
        if (sdf != null) {
            for (var i = 0; i < $scope.itemslist.length; i++) {
                if (sdf.ItemId == $scope.itemslist[i].Id) {
                    $scope.selectedItem = $scope.itemslist[i];
                    break;
                }
            }
            for (var i = 0; i < $scope.Suppliers.length; i++) {
                if (sdf.Name == $scope.Suppliers[i].Name) {
                    $scope.suppliename = $scope.Suppliers[i];
                    break;
                }
            }

        }
    }
    $scope.setfinalmaildata = function () {

        if ($scope.multipledata != null) {
            for (var i = 0; i < $scope.multipledata.length; i++) {
                for (var j = 0; j < $scope.itemslist.length; j++) {
                    if ($scope.multipledata[i].ItemId == $scope.itemslist[j].Id) {

                        $scope.multipledata[i].ItemName = $scope.itemslist[j].ItemName;
                        $scope.multipledata[i].Suppiername = $scope.multipledata[i].Name;
                        $scope.multipledata[i].qty = $scope.multipledata[i].NoOfUnits;
                        $scope.multipledata[i].perunit = $scope.multipledata[i].FinaUnitPrice;
                        $scope.multipledata[i].customerid = $scope.multipledata[i].Name;
                        //$scope.multipledata[i].ItemId = $scope.multipledata[i].ItemId;
                        $scope.multipledata[i].flag = 'I'
                        break;
                    }
                }
            }
        }
    }
    $scope.checkdata = function (a) {
        $scope.multipledata.push(a);
    }
    $scope.SendSuppliers= function (supe) {

        $scope.ses[0] = {
            qty: $scope.NoOfUnits1,
            Subtotal:   0,//$scope.Subtotal1 ,
            perunit: $scope.FinaUnitPrice,
            Email: $scope.supeEmail,
            customerid: $scope.suppliename.Name,
            ItemName: $scope.selectedItem.ItemName,
            Description: $scope.selectedItem.Description
        }

        var req = {
            method: 'POST',
            url: '/api/ERPAsset/PurchaseOrderPdf',
            data: $scope.ses
        }
        $http(req).then(function (res) {
            //$scope.initdata = res.data;
            //$scope.showlocimportdata(res.data);
            alert("Successfully Email has sent");
            $('#Modal-header-supemail').modal('hide');
            $scope.Email = "";
            $scope.selectedItem = '';
            $scope.suppliename = '';
        });
    }

    $scope.multiplesendmail = function () {
        var req = {
            method: 'POST',
            url: '/api/ERPAsset/MultiplePOlistsend',
            data: $scope.multipledata
        }
        $http(req).then(function (res) {
            $('#Modal-header-Multiplies').modal('hide');
            //$scope.initdata = res.data;
            //$scope.showlocimportdata(res.data);
            alert("Saved Sucessfully");
            $scope.multipledata = '';
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
    $scope.SaveDraftEstimation = function (final) {
        $scope.finaquote[0] = {
            RFQID: final.RFQAUTOID,
            ItemId: final.ItemId,
            supid: final.custId,
            NoofUnits: final.NoOfUnits,
            FinaUnitPrice: final.DealerUnitPrice,
            FinalDiscount: final.DealerDiscount,
            FinalCharges: final.DealerCharges,
            FinalSubTotal: final.DealerSubTotal,
            flag: 'I'
        };
        var req = {
            method: 'POST',
            url: '/api/RFQ/SaveCustomerEstimation',
            data: $scope.finaquote
        }
        $http(req).then(function (res) {
            $('#Modal-header-suppliers').modal('hide');
            //$scope.initdata = res.data;
            //$scope.showlocimportdata(res.data);
            alert("Saved Sucessfully");
            $scope.finaquote = '';
        });


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