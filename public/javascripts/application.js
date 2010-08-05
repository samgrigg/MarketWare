// Application JavaScript

$(function() {
	$("#flash_error, #flash_notice").hide();
})

function download_btn_click(title, url, response_type) {
	$("#response_type").val(response_type);
	$("#related_product").val(title);
	$("#download_url").val(url);
	// return false
}

function start_download() {
	// alert("start download")
	fancybox_close();
	// $("#try-it-free-btn").click()
	// window.location = "http://marketware.com.s3.amazonaws.com/files/marketware_setup.exe"
	
	if ($("#download_url").val().length > 0) {
		window.location = $("#download_url").val()
	}
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