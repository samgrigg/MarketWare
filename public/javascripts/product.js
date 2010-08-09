
$(function() {
	(current_user == false) ? $("#demo-link").attr("href", "#demo-register-form") : $("#demo-link").attr("href", "#demo-video");
	// (current_user == false) ? $("#try-it-free-btn").attr("href", "#trial-register-form") : $("#try-it-free-btn").attr("href", "#free_trial_thank_you");
	
	//Hook up the 'modal' type box for gathering user information and showing the product demo
	$(".register_user, .demo").fancybox({
		'scrolling'		: 'no',
		'titleShow'		: false,
		'overlayOpacity'	: 	.65,
		'overlayColor'		: 	'#000',
		'width'			:640,
		'height'		:380,
		'hideOnContentClick'	: false
	});
	
	// $("#demo-link").click(function() {
	// 	if (do_pop_demo) {
	// 		togglePopup();
	// 		return false;
	// 	}
	// })
	// $("#video-backdrop").click(function() {
	// 	togglePopup();
	// 	return false;
	// })
	
	//Make slideshow out of testimonials
	if ($("#slideshow")) {
		$("#slideshow").easySlider();
	}
	
	// $("#demo-video").click(function() {
	// 	$("#response_type").val("product_demo")
	// });
	// 
	// $("#try-it-free-btn").click(function() {
	// 	$("#response_type").val("try_it_free")
	// });
})