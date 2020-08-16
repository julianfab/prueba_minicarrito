var app = angular.module("app",[],
    function($interpolateProvider){
        $interpolateProvider.startSymbol('{[{');
        $interpolateProvider.endSymbol('}]}');
    });

app.controller("controlador_categorias", function($scope, $http,){
    
    
    
    $(document).ready(function(){
        console.log("ahorasi")
    });

    
    
});