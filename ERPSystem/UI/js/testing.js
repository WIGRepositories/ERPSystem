var myapp1 = angular.module('myApp1', ['ngStorage', 'ngAnimate', 'ui.bootstrap'])
//var myapp1 = angular.module('myApp', ['ngStorage'])

var myCtrl = myapp1.controller('myCtrl', function ($scope, $http, $localStorage, $rootScope, $uibModal) {
    var tarr = [];
    $scope.selArr = new Array();
    //$rootScope.spinner = {
    //    active: false,
    //    on: function () {
    //        this.active = true;
    //    },
    //    off: function () {
    //        this.active = false;
    //    }
    //}
    $scope.GetCustomer = function () { 
    $http.get('/api/Customers/getCustomers').then(function (res, data) {
        $scope.Customers = res.data;
        //$rootScope.spinner.off();
        //$("#customers-content").show();
    });
    
    $http.get('/api/ERPAsset/GetERPAsset').then(function (res, data) {
        $scope.Equipement = res.data;
        //$rootScope.spinner.off();
        //$("#customers-content").show();
    });
    }
    $scope.SetData = function (b) {
        $scope.selArr.push(b);
    }
    $scope.SendMail = function () {
        if ($scope.Email == null) {
            alert("Plese Enter Email Id.");
            return;
        }
        if ($scope.Cust.Client == null) {
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

    $scope.save = function (type) {

        var type = {

            UserName: type.UserName,
            newPassword: type.newPassword


        };

        var req = {
            method: 'POST',
            url: '/api/UserLogins/ResetPassword',
            //headers: {
            //    'Content-Type': undefined
            data: type
        }
        $http(req).then(function (response) {
            alert("Updated Password Successfully");
        })
    }
    $scope.Signin = function () {

        var u = $scope.UserName;
        var p = $scope.Password

        if (u == null || u == "") {
            alert("Please enter username");
            // alert('Please enter username');
            return;
        }

        if (p == null || p == "") {
            alert("Please enter password");
            //alert('Please enter password');
            return;
        }

        var inputcred = { LoginInfo: u, Passkey: p }


        var req = {
            method: 'POST',
            url: '/api/LOGIN/ValidateCredentials/',
            data: inputcred
        }
        $rootScope.spinner.on();
        angular.element('body').addClass('spinnerOn'); // add Class to body to show spinner


        $http(req).then(function (res) {

            if (res.data.length == 0) {
                $rootScope.spinner.off();
                //  $rootScope.$apply();
                //angular.element('body').removeClass('spinnerOn').then(function () { alert('invalid credentials'); }); // hide spinner
                // alert('invalid credentials');
                alert("invalid credentials");
            }
            else {
                //if the user has role, then get the details and save in session
                $localStorage.uname = res.data[0].uname;
                $localStorage.userdetails = res.data;
                $localStorage.pagesize = 10;
                var roleid = $localStorage.userdetails[0].roleid;
                window.location.href = "UI/index.html";

                //switch (roleid) {


                //    case 1:
                //        window.location.href = "UI/index.html";
                //        break;
                //    case 2:
                //        window.location.href = "UI/Index_finAdmin.html";
                //        break;


                //    case 3:
                //        window.location.href = "UI/Index_support.html";
                //        break;
                //    case 4:
                //        window.location.href = "UI/Index_help.html";
                //        break;
                //    case 5:
                //        window.location.href = "UI/Index_sales.html";
                //        break;
                //    case 6:
                //        window.location.href = "UI/Index_FO.html";
                //        break;
                //    case 11:
                //        window.location.href = "UI/Index_G.html";
                //        break;
                //    case 12:
                //        window.location.href = "UI/Index_cmpUser.html";
                //        break;
                //    default:
                //        window.location.href = "UI/index.html";
                //        break;

                //}

            }
        },//error
        function (res) {
            $rootScope.spinner.off();
            //  $rootScope.$apply();
            //angular.element('body').removeClass('spinnerOn'); // hide spinner
        });
    }
    //$scope.showDialog = function (message) {

    //    var modalInstance = $uibModal.open({
    //        animation: $scope.animationsEnabled,
    //        backdrop: false,
    //        templateUrl: 'myModalContent.html',
    //        controller: 'ModalInstanceCtrl',
    //        resolve: {
    //            mssg: function () {
    //                return message;
    //            }
    //        }
    //    });
    //}
});

myapp1.controller('ModalInstanceCtrl', function ($scope, $uibModalInstance, mssg) {

    $scope.mssg = mssg;
    $scope.ok = function () {

        $uibModalInstance.close();
    };

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };
});