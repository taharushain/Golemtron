$('document').ready(function() {


	console.log("Loading JS");

	$('#btn-prices-ultimate').click(function(){
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

	$(function() {

	// Get the order_form.
	var order_form = $('#ajax-order-contact');

	// Get the messages div.
	var order_formMessages = $('#order_messages');

	// Set up an event listener for the contact order_form.
	$(order_form).submit(function(e) {
		// Stop the browser from submitting the order_form.
		e.preventDefault();

		// Serialize the order_form data.
		var order_formData = $(order_form).serialize();
		// var order_type = $('#order-type').text();

		// Submit the order_form using AJAX.
		$.ajax({
			type: 'POST',
			url: $(order_form).attr('action'),
			data: 
			order_formData
			
		})
		.done(function(response) {
			// // Make sure that the order_formMessages div has the 'success' class.
			// $(order_formMessages).removeClass('error');
			// $(order_formMessages).addClass('success');

			// // Set the message text.
			// $(order_formMessages).text(response);

			// // Clear the order_form.
			// $('#order-form-address').val('');
			// $('#order-form-name').val('');

			$('#div-place-order').hide( "fast", function() {
				$('#successful-order').show();
			});
			
		})
		.fail(function(data) {
			// Make sure that the order_formMessages div has the 'error' class.
			$(order_formMessages).removeClass('success');
			$(order_formMessages).addClass('error');

			// Set the message text.
			if (data.responseText !== '') {
				$(order_formMessages).text(data.responseText);
			} else {
				$(order_formMessages).text('Oops! An error occured and your order failed.');
			}
		});

	});

});

});