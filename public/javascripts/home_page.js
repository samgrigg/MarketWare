
$(function() {
	(current_user == false) ? $("#demo-link").attr("href", "#demo-register-form") : $("#demo-link").attr("href", "#demo-video");
	(current_user == false) ? $("#try-it-free-btn").attr("href", "#trial-register-form") : $("#try-it-free-btn").attr("href", "#free_trial_thank_you");
	
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

function start_download() {
	// alert("start download")
	fancybox_close();
	// $("#try-it-free-btn").click()
	// window.location = "http://marketware.com.s3.amazonaws.com/files/marketware_setup.exe"
}

function show_demo() {
	// alert("show demo")
	// fancybox_close();
	
	$("#demo-link").click()
}

function make_current_user() {
	// alert("make current user")
	current_user = true;
	$("#demo-link").attr("href", "#demo-video");
	$("#try-it-free-btn").attr("href", "#free_trial_thank_you");
	// $("#try-it-free-btn").removeClass("register_user");
	// alert("'bout to unbind")
	// $("#try-it-free-btn").unbind("click.fb");
}

function fancybox_close(){
	// alert("closing fancybox")
    $('#fancybox-outer').hide();
    $('#fancybox-overlay').hide();
    $('#fancybox-title').hide();
    $('#fancybox-loading').hide();
    // $('#fancy_ajax').remove();
}