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
    $scope.ses = new Array();
    $scope.multipledata = new Array();
    var tt;
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
        //$http.get('/api/RFQ/GetRFQ?statusid=1&custid=1').then(function (res, data) {
        //    $scope.rfqlist = res.data;
          
        //});
        $http.get('/api/Suppliers/getSuppliers').then(function (res, data) {
            $scope.Suppliers = res.data;
        });

        //$http.get('/api/Users/GetUsers').then(function (res, data) {
        //    $scope.Suppliers = res.data;
        //});
        $http.get('/api/InventoryItem/GetInventoryItem?subCatId=-1').then(function (response, data) {
            $scope.itemslist = response.data;
        });
        //$http.get('/api/InventoryItem/Getitems').then(function (res, data) {
        //    $scope.itemslist = res.data;
        //});
       
       

        //$http.get('/api/AssetModel/GetAssetModels?locId=-1').then(function (res, data) {
        //    $scope.Models = res.data;
        //});

        $scope.GetJobEquipment();
    }    
    $scope.setemaildata = function (emaildata) {
        $scope.selectedItem = '';
        $scope.suppliename = '';
        if (emaildata != null)
        {
            $scope.suppliermail = emaildata.Email;

            for (var i = 0; i < $scope.itemslist.length; i++) {
                if (emaildata.ItemId ==$scope.itemslist[i].Id) {
                    $scope.selectedItem = $scope.itemslist[i];
                    $scope.qty = emaildata.qty;//1parseInt($scope.itemslist[i].InitialQuantity, 10);
                    break;
                }
            }
            for (var i = 0; i < $scope.Suppliers.length; i++) {
                if (emaildata.Name ==$scope.Suppliers[i].Name) {
                    $scope.suppliename = $scope.Suppliers[i];
                    break;
                }
            }


        }
    }
    $scope.GetJobEquipment = function () {

       
        //var mid = ($scope.s == null) ? -1 : $scope.s.Id;
        var lid = ($scope.l == null) ? -1 : $scope.l.ID;
        //var custId = ($scope.c == null || $scope.c.Id == null) ? -1 : $scope.c.Id;

        var modelId = ($scope.e == null || $scope.e.id == null) ? -1 : $scope.e.id;

        $http.get('/api/RFQ/GetItemsForRFQ?modelId='+modelId+'&rfqId=' + lid).then(function (res, data) {
            $scope.JobEquipment = res.data;
            //$rootScope.spinner.off();
            $("#jobequipment-content").show();
        });
    }
    // for sending the email for suppliers
    $scope.Sendsupplier1 = function (supe) {
       
        $scope.ses[0] = {
            Email: $scope.suppliermail,
            Suppiername: $scope.suppliename.Name   ,
            ItemName: $scope.selectedItem.ItemName,
            qty: $scope.qty
        }
            
        var req = {
            method: 'POST',
            url: '/api/ERPAsse/RFQSupplieremail',
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



    $scope.GetRFQPersonnal = function (cc) {
        var custId = (cc == null) ? -1 : cc.ID;

        $http.get('/api/RFQ/GetRFQPersonnal?customerId=' + custId).then(function (res, data) {
            $scope.custlist = res.data;
            //$rootScope.spinner.off();           
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
    $scope.checkdata=function(a){
        $scope.multipledata.push(a);
    }
    $scope.setfinalmaildata = function () {

        if ($scope.multipledata != null) {
            for (var i = 0; i< $scope.multipledata.length; i++) {
                for (var j = 0; j < $scope.itemslist.length; j++) {
                    if ($scope.multipledata[i].ItemId == $scope.itemslist[j].Id) {

                        $scope.multipledata[i].ItemName = $scope.itemslist[j].ItemName;
                        $scope.multipledata[i].Suppiername = $scope.multipledata[i].Name;
                        $scope.multipledata[i].qty = $scope.multipledata[i].qty;
                        //$scope.multipledata[i].ItemId = $scope.multipledata[i].ItemId;
                        $scope.multipledata[i].flag = 'I'
                        break;
                    }
                }
            }
        }
    }
        $scope.SetCustlist = function () {
            $scope.selArr.push($scope.custlist);
        }

        $scope.multiplesendmail = function () {
            var req = {
                method: 'POST',
                url: '/api/ERPAsset/MultipleSupplierListsend',
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
        $scope.AddCust = function () {
            if ($scope.selArr.length == 0) {
                alert("Plese Select Supplier.");
                return;
            }
            for (var i = 0; i < $scope.selArr.length; i++) {
                $scope.selArr[i].ItemId = tt.ItemId;
                $scope.selArr[i].RFQID = tt.RFQid2;
                $scope.selArr[i].flag = 'I'
            }
            //$scope.a = $scope.selArr;

            var req = {
                method: 'POST',
                url: '/api/RFQ/RFQSaveSupplierslist',
                data: $scope.selArr
            }
            $http(req).then(function (res) {
                $('#Modal-header-suppliers').modal('hide');
                //$scope.initdata = res.data;
                //$scope.showlocimportdata(res.data);
                alert("Saved Sucessfully");
                $scope.init();
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