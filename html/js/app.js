
function AlertController() {
	alert('welcome baydiwo');
}

(function() {
	var app = angular.module('wolppp', ['angular-loading-bar', 'ngAnimate'])
	.config(function(cfpLoadingBarProvider) {
	    cfpLoadingBarProvider.includeSpinner = false,
	    cfpLoadingBarProvider.latencyThreshold = 500
	});

	app.controller('WolpppController', function() {
		this.products = arts;

		//infinite scroll function
		// function FilesListCtrl($scope, $http) {

		// 	$scope.images = [];
		// 	$scope.next_page = null;
		// 	var in_progress = true;

		// 	$scope.loadImages = function() {
		// 		if (in_progress){
		// 			var url = '/api/v1/files.json';
		// 			if ($scope.next_page) {
		// 				url = $scope.next_page;
		// 			}
		// 			$http.get(url).success(function(data) {
		// 				$scope.images = $scope.images.concat(data.items);
		// 				$scope.next_page = data.nextPageInternal;

		// 				if (!$scope.next_page) {
		// 					in_progress = false;
		// 				}
		// 			});
		// 		}
		// 	};

		// 	FilesListCtrl.$inject = ['$scope', '$http'];

		// 	$scope.loadImages();
		//}//filelistctrl
	});

	var arts = [
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic1.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic2.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic3.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic4.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic3.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic2.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic1.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic2.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic3.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic4.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic3.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic2.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic1.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic2.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic3.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic4.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic3.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic2.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic1.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic2.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic3.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic4.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Product Name',
		images: 'img/content/pic3.jpg'
	},
	{
		artistName: 'Artist Name',
		name: 'Baydiwo',
		images: 'img/content/pic2.jpg'
	},
	];

	var artistDetail = [
		{
			artistName: 'Artist Name',
			name: 'Product Name',
			images: 'img/content/pic3.jpg',
			artistPic: 'img/content/pic3.jpg',
			link: 'wwww.artist.com',
			phone: '+628123456789',
			bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
			artworks: [ 'img/content/bottom-art.jpg','img/content/bottom-art.jpg','img/content/bottom-art.jpg','img/content/bottom-art.jpg'
			],
			sideArtwork: 'img/content/pic3.jpg',
			available: [ 'iPhone5','iPhone 5s', 'iPhone 4'],
		}
	];

	app.controller('loadingController', function ($scope, $http, $timeout, cfpLoadingBar) {
    $scope.posts = [];
    $scope.section = null;

    $scope.start = function() {
      cfpLoadingBar.start();
    };

    $scope.complete = function () {
      cfpLoadingBar.complete();
    };


    // fake the initial load so first time users can see the bar right away:
    $scope.start();
    $scope.fakeIntro = false;
    $timeout(function() {
      $scope.complete();
      $scope.fakeIntro = false;
    }, 1250);

  });

})();