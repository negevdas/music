<html xmlns:ng="http://angularjs.org" xmlns="native" xmlns:u="zul">
    <head>
<script>
var app = angular.module('basic', ['zk']);

app.controller('MyCtl', ['$scope', '$element', '$binder', function($scope, $element, $binder) {
    // init ZK Binder
    $binder.$init($scope, $element);
}]);

// init the zk-angular app
zk.afterMount(function() {
    angular.bootstrap(document, [ 'basic']);
});
</script>
  
</head>
<body>
  
        <u:div apply="org.zkoss.angular.AngularComposer"
            binder="@init(value='org.zkoss.angular.AngularBinder')"
            viewModel="@id('vm') @init('BasicViewModel')"
            ng:controller="MyCtl">
            <label>First Name:</label> <input type="text" ng:model="@bind(vm.firstName)"
                placeholder="Enter a name here"/>
            <hr/>
            <h1>Hello <label ng:bind="@load(vm.fullName)"></label> !</h1>
        </u:div>  
  </body>
  </html>
