$('document').ready(function() {


	console.log("Loading JS");

	$('#btn-prices-ultimate').click(function(){
		// console.log("Ulitimate button clicked");

		$('#div-prices-container').hide( 'fast', function() {
			$("#order-type").text("Order Type: Ultimate");
			$("#order-form-type").val("Ultimate");
			$("#div-place-order").show();
			console.log("Ulitimate button clicked");

		});        
		
	});

	$('#btn-prices-professional').click(function(){
		$( "#div-prices-container" ).hide( "fast", function() {
			$("#order-type").text("Order Type: Professional");
			$("#order-form-type").val("Professional");
			$( "#div-place-order" ).show();
		});        
	});
	

	$('#btn-prices-advanced').click(function(){
		$( "#div-prices-container" ).hide( "fast", function() {
			$("#order-type").text("Order Type: Advanced");
			$("#order-form-type").val("Advanced");
			$( "#div-place-order" ).show();
		});        
	});

	$('#btn-prices-basic').click(function(){
		$( "#div-prices-container" ).hide( "fast", function() {
			$("#order-type").text("Order Type: Basic");
			$("#order-form-type").val("Basic");
			$( "#div-place-order" ).show();
		});        
	});

});