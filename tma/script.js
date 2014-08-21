$( document ).ready(function(){

	// python -m SimpleHTTPServer 8000
	// Begin our AJAX Stuff
	// Define our secret message as a variable and initiatee ajax call

	// Second HTML Page
	var ourMessage = $.ajax("/test.html")
	.done(function(){
		// If ajax requet done, alert success
		console.log('success');
		// responseText is something jquery Ajax gives us to return the string of our html object
		// console.log(ourMessage.responseText);
	})
	.fail(function(){
		// If ajax request fails, alert error
		alert('error');
	});

	// Define dynamic calls
	$(".angela").click(function(){

		// $(".angela").load("/test.html .hidden", function(){
		// });
		console.log("inside click function");
		$( this ).load("/test.html .hiddenM");

	});

});
