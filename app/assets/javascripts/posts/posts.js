app.factory('posts', ['$http', function(){
	var o = {
		posts: []
	};
  o.getAll = function() {
    return $http.get('/posts.json').success(function(data){
      angular.copy(data, o.posts);
    });
  };
  resolve: {
	  postPromise: ['posts', function(posts){
	    return posts.getAll();
	  }]
	}
	return o;
}])
