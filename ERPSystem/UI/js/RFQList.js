// JavaScript source code
var myapp1 = angular.module('myApp', ['ngStorage', 'ui.bootstrap', 'AdalAngular']);

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
    var tloc = '';
    var tjst = '';
    var tcst = '';
    $scope.init = function () {

        $http.get('/api/GetCustomers').then(function (res, data) {
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


        $http.get('/api/RFQ/GetRFQ?statusid=1&custid=1').then(function (res, data) {
            $scope.rfqlist = res.data;
            //$scope.l = $scope.rfqlist[0];
        });
    }
    $scope.filteroptionssel = function () {
        if ($scope.s == null) {
            tloc = -1
        }
        if ($scope.cc == null) {
            tjst = -1;
        }
        if ($scope.a == null) {
            tcst = -1;
        }
    }
    $scope.Changejobtype = function () {
        if ($scope.jbty.Id == 46 || $scope.jbty.Id == 47 || $scope.jbty.Id == 48) {
            $scope.ty = $scope.jbty.Id;
        }
    }

    //$rootScope.spinner = {
    //    active: false,
    //    on: function () {
    //        this.active = true;
    //    },
    //    off: function () {
    //        this.active = false;
    //    }
    //}
    $scope.GetCounty = function (code) {
        $scope.dd = code;
        $http.get('/api/Types/GetCounty?Id=' + $scope.dd.Id).then(function (res, data) {
            $scope.county = res.data;
        });
    }
    //$rootScope.spinner.on();


    $scope.getJobsListByStatus = function () {
        $scope.jobsList1 = null;

        var locId = ($localStorage.jlocid == -1 || $localStorage.jlocid == null) ? (($scope.s == null) ? -1 : $scope.s.id) : (($scope.s != null) ? $scope.s.id : $localStorage.jlocid);
        //var locId = ($scope.s == null || $scope.s.id == null) ? -1 : $scope.s.id;
        var custId = ($localStorage.jcustId == -1 || $localStorage.jcustId == null) ? (($scope.cc == null) ? -1 : $scope.cc.Id) : (($scope.cc != null) ? $scope.cc.Id : $localStorage.jcustId);
        //var custId = ($scope.cc == null || $scope.cc.Id == null) ? -1 : $scope.cc.Id;
        var stausId = ($localStorage.jstausId == -1 || $localStorage.jstausId == null) ? (($scope.a == null) ? -1 : $scope.a.Id) : (($scope.a != null) ? $scope.a.Id : $localStorage.jstausId);
       
        //var statusId = ($scope.a == null || $scope.a.Id == null) ? -1 : $scope.a.Id;

        var tt = (locId != -1) ? ((tloc == -1) ? -1 : locId) : locId;
        var tcus = (custId != -1) ? ((tjst == -1) ? -1 : custId) : custId;
        var ttcus = (stausId != -1) ? ((tcst == -1) ? -1 : stausId) : stausId;

        $http.get('/api/Jobs/GetJobsByStatus?statusId=' + ttcus + '&locationId=' + tt + '&customerId=' + tcus).then(function (res, data) {
            $scope.jobsList1 = res.data.Table;
            $scope.jobsList = res.data.Table1;
            $localStorage.jlocid = tt;
            $localStorage.jcustId = tcus;
            $localStorage.jstausId = ttcus;
            tloc = '';
            tjst = '';
            tcst = '';
           
            if ($localStorage.jlocid != -1 && $scope.Locations!=null) {
                for (var i = 0; i < $scope.Locations.length; i++) {
                    if ($localStorage.jlocid == $scope.Locations[i].id) {
                        $scope.s = $scope.Locations[i];
                    }
                }
            }

            if ($localStorage.jstausId != -1 && $scope.jbstatus!=null) {
                for (var j = 0; j < $scope.jbstatus.length; j++) {
                    if ($localStorage.jstausId == $scope.jbstatus[j].Id) {
                        $scope.a = $scope.jbstatus[j];
                    }
                }
            }

            if ($localStorage.jcustId != -1 && $scope.Customers!=null) {
                for (var i = 0; i < $scope.Customers.length; i++) {
                    if ($localStorage.jcustId == $scope.Customers[i].Id) {
                        $scope.cc = $scope.Customers[i];
                    }
                }
            }
            //$scope.DeliveryTicket = '';
            if ($scope.jobsList1 != null) {
                for (var i = 0; i < $scope.jobsList1.length; i++) {
                    $scope.jobsList1[i].DeliveryTicket = $filter('filter')($scope.jobsList, { ID: $scope.jobsList1[i].ID }, true)[0].DeliveryTicket;
                }
            }
            //$rootScope.spinner.off();
            $("#jobslist-content").show();
        });
        $scope.CheckCanCreate(locId);
    }

    $scope.GetNewJobData = function () {
        $http.get('/api/Types/getstates').then(function (res, data) {
            $scope.States = res.data;
        });
    }

    $scope.chekphoneno = function (src) {
        var currStr = ($scope.newJob == null) ? '' : $scope.newJob.PhoneNo;
        var phone = ($scope.newJob == null || $scope.newJob.PhoneNo == null) ? src.key : $scope.newJob.PhoneNo + src.key;
        var phoneNum = /^^\+[1-9]{1}[0-9]{7,11}$ /;
        if (phone.match(phoneNum)) {
            return true;
        }
        else {
            //document.getElementById("phone").className = document.getElementById("phone").className + " error";
            // $scope.newJob.PhoneNo = currStr;
            src.preventDefault();
            $event.cancel();
            return false;
        }
    }


    $scope.TypeGroupsData = function () {
        var vc = {
            includeState: '1',
        };

        var req = {
            method: 'POST',
            url: '/api/Types/TypeGroupsData',
            data: vc
        }

        $http(req).then(function (res) {
            $scope.Typesdata = res.data.Table;
        });
    }

    $scope.AddNewRFQ = function () {
        var newRFQ = $scope.newRFQ;

        //var phoneformat = /^(\([0-9]{3}\)\s*|[0-9]{3}\-)[0-9]{3}-[0-9]{4}$/;
        //if (newJob.PhoneNo != null && newJob.PhoneNo != "") {
        //    if ((newJob.PhoneNo).match(phoneformat)) {
        //        $scope.phonevalid = '';
        //    }
        //    else {
        //        if ((newJob.PhoneNo).match(/^\d{10}$/)) {
        //            $scope.phonevalid = '';
        //        }
        //        else {
        //            alert('Phone number format is invalid.');
        //            return;
        //        }
        //    }
        //}

        if (newRFQ == null) {
            alert('Please enter RFQ name.');
            return;
        }       
        //Job type
        if (newRFQ.js == null) {
            alert('Please Select Status.');
            return;
        }      
     
        //CustomerID
        if (newRFQ.jc == null) {
            alert('Please select Customer.');
            return;
        }      
        //Communication Type
        if (newRFQ.jl == null) {
            alert('Please select Communication Type.');
            return;
        }
        //Sales Manager
        if (newRFQ.sm == null) {
            alert('Please select Sales Manager.');
            return;
        }


        var RFq = {

            Id: -1,
            Name: newRFQ.Name,
            Status: newRFQ.js,
            CustomerId: newRFQ.jc,
            CmTypeId: newRFQ.jl,
            SmId: newRFQ.sm,
            Description: newRFQ.modelDescription,
            CPhoneNo: 111,//newRFQ.PhoneNo,
            CEmail: newRFQ.Email,
            CFax: newRFQ.Fax,
            changedById:1,
            flag: 'I'
        }

        var req = {
            method: 'POST',
            url: '/api/RFQ/SaveRFQDetails',
            data: RFq
        }
        $http(req).then(function (response) {

            alert("Saved successfully!");
            //$scope.getJobsListByStatus();
            $scope.newRFQ = null;
            //$scope.jbty = '';
            $('#Modal-header-new').modal('hide');
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

    $scope.CheckCanCreate = function (t) {
        // alert(t);
        var locationId = t;//($scope.l == null) ? -1 : $scope.l.id;

        //check if he is a location admin and accordingly enable assets and jobs creation for his location
        //check the loction of the selected asset
        //if user is not super user then compare with the location of the user
        //if location is mismatching then disable the save button
        $scope.CanCreate = ($scope.isSuperUser == 1 || locationId == null) ? 1 : 0;
        if ($scope.isSuperUser == 0 && $scope.roleLocations != null) {

            //$scope.CanCreate = 0;

            for (cnt = 0; cnt < $scope.roleLocations.length; cnt++) {
                if (locationId == $scope.roleLocations[cnt].LocationId) {
                    $scope.CanCreate = ($scope.roleLocations[cnt].roleid == 2 || $scope.roleLocations[cnt].roleid == 3) ? 1 : 0;
                    break;
                }
            }
        }
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


