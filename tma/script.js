$( document ).ready(function(){

	// python -m SimpleHTTPServer 8000l

	// AJAX call using separate html file.
	var ourMessage = $.ajax("/test.html")
	.done(function(){
		console.log('success');
	})
	.fail(function(){
		alert('error');
	});

	$(".angela").click(function(){
		console.log("inside click function");
		$( this ).load("/test.html .hiddenM");
	});

	// AJAX call using 

});
