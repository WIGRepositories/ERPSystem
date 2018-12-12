var myapp1 = angular.module('myApp').config(['adalAuthenticationServiceProvider', function (adalProvider) {

    var docURL = document.URL.toLowerCase();
    var CurrRedirectUri = "https://eesdev.myiliad.com/login.html";
    var cid = '890a0750-1c42-4f18-92c6-acbacc1f9012';

    //var CurrRedirectUri = "https://eesqa.myiliad.com/login.html";
    //var cid = '0fbf04ac-62ee-4543-b64d-88e90995720a';

    //if (docURL.indexOf('wa-scus-emp-ees-prod-dev.azurewebsites.net') >= 0 || docURL.indexOf('eesdev.myiliad.com') >= 0) {
    //    CurrRedirectUri = 'https://eesdev.myiliad.com/login.html';
    //    cid = '890a0750-1c42-4f18-92c6-acbacc1f9012';
    //}
    //else if (docURL.indexOf('wa-scus-emp-ees-prod-qa.azurewebsites.net') >= 0 || docURL.indexOf('eesqa.myiliad.com') >= 0) {
    //    CurrRedirectUri = 'https://eesqa.myiliad.com/login.html';
    //    cid = '0fbf04ac-62ee-4543-b64d-88e90995720a';
    //}
    //else if (docURL.indexOf('wa-scus-emp-ees-prod.azurewebsites.net') >= 0 || docURL.indexOf('ees.myiliad.com') >= 0) {
    //    CurrRedirectUri = 'https://ees.myiliad.com/login.html';
    //    cid = '19b7855d-ecf6-459f-b7a1-530096e2665f';
    //}

    adalProvider.init(
        {
            //redirectUri: CurrRedirectUri,
            redirectUri: 'http://localhost:44320/login.html',
            tenant: 'eestt.onmicrosoft.com',
            clientId: cid,
            cacheLocation: 'localStorage', // enable this for IE, as sessionStorage does not work for localhost.
        });
}
]);

var mycrtl1 = myapp1.controller('logoutCtrl', ['$scope', '$localStorage', 'adalAuthenticationService', function ($scope, $localStorage, adalAuthenticationService) {

    $scope.Logout = function () {
        $localStorage.$reset();
        adalAuthenticationService.userInfo.isAuthenticated = false;
        adalAuthenticationService.logOut();
    }
}]);
