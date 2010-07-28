// Application JavaScript

$(function() {
	$("#flash_error, #flash_notice").hide();
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