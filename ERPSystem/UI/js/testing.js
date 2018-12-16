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
    
    $http.get('/api/InventoryItem/GetInventoryItem?subCatId=-1').then(function (res, data) {
        $scope.Equipement = res.data;
        //$rootScope.spinner.off();
        //$("#customers-content").show();
    });

    $http.get('/api/Suppliers/getSuppliers').then(function (res, data) {
        $scope.Suppliers = res.data;       
    });
    }

    // to  fill the selected the items
    $scope.SetData = function (b) {
        $scope.selArr.push(b);
    }
       
    //acustomers
    $scope.SendMail = function () {
        if ($scope.Cust == null) {
            alert("Plese Select Customer.");
            return;
        }

        if ($scope.Cust.Email == null) {
            alert("Plese Enter Email Id.");
            return;
        }
        for(var i=0;i<$scope.selArr.length;i++){
            $scope.selArr[i].Email = $scope.Cust.Email;
            $scope.selArr[i].customerid = $scope.Cust.Name;
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
            $scope.Cust = null;
        });
    }

    $scope.SendCustomerConfirmationEmail = function () {

        var mail = {
            customerid: $scope.Cust.Name,
            Email: $scope.Cust.Email,
            body: $scope.emailcontent
        }
        var req = {
            method: 'POST',
            url: '/api/ERPAsse/SendCustomerConfirmationEmail',
            data: mail
        }
        $http(req).then(function (res) {
            //$scope.initdata = res.data;
            //$scope.showlocimportdata(res.data);
            alert("Customer Confirmation Email Sucessfully Sent");
            $('#Modal-header-new').modal('hide');
            $scope.Cust = null;
        });
    }

    //get supplier quote
    //acustomers
    $scope.GetSupplierQuote = function () {
        if ($scope.Sup == null) {
            alert("Plese Select Supplier.");
            return;
        }

        if ($scope.Email == null) {
            alert("Plese Enter Email Id.");
            return;
        }
        for (var i = 0; i < $scope.selArr.length; i++) {
            $scope.selArr[i].Email = $scope.Email;
            $scope.selArr[i].customerid = $scope.Sup.Name;
        }

       // $scope.selArr[0].body = document.getElementById('check').innerHTML;
        var req = {
            method: 'POST',
            url: '/api/ERPAsse/SendSampleSupplierQuote',
            data: $scope.selArr
        }
        $http(req).then(function (res) {
            //$scope.initdata = res.data;
            //$scope.showlocimportdata(res.data);
            alert("Sample quote sent Sucessfully");
            $('#Modal-header-new').modal('hide');
            $scope.Cust = null;
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
            $scope.selArr[i].customerid = $scope.Cust.Name;
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
            customername: $scope.Cust.Name
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
            $scope.selArr[i].customerid = $scope.Cust.Name;
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
    //        customername: $scope.Cust.Name
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
            $scope.selArr[i].customerid = $scope.Cust.Name;
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

