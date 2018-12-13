var myapp1 = angular.module('myApp1', ['ngStorage', 'ngAnimate', 'ui.bootstrap'])
var myCtrl = myapp1.controller('myCtrl', function ($scope, $http, $localStorage, $rootScope, $uibModal) {

    var tarr = [];
   
    $scope.selArr = new Array();
    
    // Get the customer data
    $scope.GetCustomer = function () {
    $http.get('/api/Customers/getCustomers').then(function (res, data) {
        $scope.Customers = res.data;
        //$rootScope.spinner.off();
        //$("#customers-content").show();
    });
    
    $http.get('/api/ERPAsset/GetInvertory').then(function (res, data) {
        $scope.Equipement = res.data;
        //$rootScope.spinner.off();
        //$("#customers-content").show();
    });
    }

    // to  fill the selected the items
    $scope.SetData = function (b) {
        $scope.selArr.push(b);
    }

    // send suppliers 
    $scope.Sendsupplier1= function () {
        if ($scope.Email == null) {
            alert("Plese Enter Email Id.");
            return;
        }
        if ($scope.Cust == null) {
            alert("Plese Select Customer.");
            return;
        }
        for (var i = 0; i < $scope.selArr.length; i++) {
            $scope.selArr[i].Email = $scope.Email;
            $scope.selArr[i].customerid = $scope.Cust.Client;
        }
        var req = {
            method: 'POST',
            url: '/api/ERPAsse/SendSuppliers',
            data: $scope.selArr
        }
        $http(req).then(function (res) {
            //$scope.initdata = res.data;
            //$scope.showlocimportdata(res.data);
            alert("Enquiry Sucessfully Sent");
            $('#Modal-header-new').modal('hide');
            $scope.Email = "";
        });


    }

    //acustomers
    $scope.SendMail = function () {
        if ($scope.Email == null) {
            alert("Plese Enter Email Id.");
            return;
        }
        if ($scope.Cust==null) {
            alert("Plese Select Customer.");
            return;
        }
        for(var i=0;i<$scope.selArr.length;i++){
            $scope.selArr[i].Email = $scope.Email;
            $scope.selArr[i].customerid = $scope.Cust.Client;
        }
        var req = {
            method: 'POST',
            url: '/api/ERPAsse/SendMain',
            data: $scope.selArr
        }
        $http(req).then(function (res) {
            //$scope.initdata = res.data;
            //$scope.showlocimportdata(res.data);
            alert("Enquiry Sucessfully Sent");
            $('#Modal-header-new').modal('hide');
            $scope.Email = "";
        });


    }
        
    // send final Quote
    $scope.SendfinalQuote = function () {
      
        if ($scope.Email == null) {
            alert("Plese Enter Email Id.");
            return;
        }
        if ($scope.Cust== null) {
            alert("Plese Select Customer.");
            return;
        }
        for (var i = 0; i < $scope.selArr.length; i++) {
            $scope.selArr[i].Email = $scope.Email;
            $scope.selArr[i].customerid = $scope.Cust.Client;
        }
     
        var req = {
            method: 'POST',
            url: '/api/ERPAsse/finalquote',
            data: $scope.selArr
        }
        $http(req).then(function (res) {
            //$scope.initdata = res.data;
            //$scope.showlocimportdata(res.data);
            alert("Enquiry Sucessfully Sent");
            $('#Modal-header-finalQuotes').modal('hide');
            $scope.Email = "";
        });
    }

    // send Request Invoice
    $scope.Sendreqinoice = function () {
        if ($scope.Email == null) {
            alert("Plese Enter Email Id.");
            return;
        }
        if ($scope.Cust== null) {
            alert("Plese Select Customer.");
            return;
        }

        var data = {
            des:$scope.des, 
            email: $scope.Email,
            customername: $scope.Cust.Client
        };

        var req = {
            method: 'POST',
            url: '/api/ERPAsse/RequestInvoice',
            data: data
        }
        $http(req).then(function (res) {
            //$scope.initdata = res.data;
            //$scope.showlocimportdata(res.data);
            alert("Enquiry Sucessfully Sent");
            $('#Modal-header-reqinvoice').modal('hide');
            $scope.Email = "";
        });
    }

    // send confirm Quote
    $scope.Sendconfirmquote = function () {
        if ($scope.Email == null) {
            alert("Plese Enter Email Id.");
            return;
        }
        if ($scope.Cust == null) {
            alert("Plese Select Customer.");
            return;
        }
        for (var i = 0; i < $scope.selArr.length; i++) {
            $scope.selArr[i].Email = $scope.Email;
            $scope.selArr[i].customerid = $scope.Cust.Client;
        }
        var req = {
            method: 'POST',
            url: '/api/ERPAsse/SendMain',
            data: $scope.selArr
        }
        $http(req).then(function (res) {
            //$scope.initdata = res.data;
            //$scope.showlocimportdata(res.data);
            alert("Enquiry Sucessfully Sent");
            $('#Modal-header-ConfirmQuotes').modal('hide');
            $scope.Email = "";
        });
    }

    //Pay Supplier 
    
    //$scope.PaySupplier = function () {
    //    if ($scope.Email == null) {
    //        alert("Plese Enter Email Id.");
    //        return;
    //    }
    //    if ($scope.Cust == null) {
    //        alert("Plese Select Customer.");
    //        return;
    //    }
    //    var data = {
    //        //filename:$scope.fileContent,
    //        doc: $scope.fileContent,
    //        email: $scope.Email,
    //        customername: $scope.Cust.Client
    //    };
    //    var req = {
    //        method: 'POST',
    //        url: '/api/ERPAsset/PaySupplier',
    //        data: data
    //    }
    //    $http(req).then(function (res) {
    //        //$scope.initdata = res.data;
    //        //$scope.showlocimportdata(res.data);
    //        $('#Modal-header-paysuppliers').modal('hide');
    //        alert("Enquiry Sucessfully Sent");
    //    });
    //}

    $scope.SendInvoice = function () {
        if ($scope.Email == null) {
            alert("Plese Enter Email Id.");
            return;
        }
        if ($scope.Cust == null) {
            alert("Plese Select Customer.");
            return;
        }
        for (var i = 0; i < $scope.selArr.length; i++) {
            $scope.selArr[i].Email = $scope.Email;
            $scope.selArr[i].customerid = $scope.Cust.Client;
        }
        
        var req = {
            method: 'POST',
            url: '/api/ERPAsset/PaySupplierInvoicePdf',
            data: $scope.selArr
        }
        $http(req).then(function (res) {
            //$scope.initdata = res.data;
            //$scope.showlocimportdata(res.data);
            $('#Modal-header-paysuppliers').modal('hide');
            alert("Enquiry Sucessfully Sent");

        });
    }
});

