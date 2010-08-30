// Application JavaScript

$(function() {
	$("#flash_error, #flash_notice").hide();
})

function show_errors(msg) {
	// alert($("#user_error_wrapper").html("anything at all").html())
	alert("Could not complete your request for the following reasons:\n\n" + msg)
	// $("#user_error_wrapper").show();
	// $("#error_messages").html(msg);
}


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

function say_thank_you() {
	$("#thank_you_link").click();
}

function show_demo(relatedProduct) {
	// alert(relatedProduct)
	// fancybox_close();
	
	//Enable all the demo buttons (if they exist). They'll all exist on the home page, but only one at a time will exist on the product details page
	if ($("#physician_relations_demo")) {
		$("#physician_relations_demo").attr("href", "#relations-demo-video");
	}
	if ($("#physician_recruiting_demo")) {
		$("#physician_recruiting_demo").attr("href", "#recruiting-demo-video");
	}
	if ($("#custom_crm_demo")) {
		$("#custom_crm_demo").attr("href", "#custom-demo-video");
	}
	
	if (relatedProduct == "physician_relations") {
		$("#physician_relations_demo").click()
	}
	else if (relatedProduct == "physician_recruiting") {
		$("#physician_recruiting_demo").click()
	}
	else if (relatedProduct == "custom_crm") {
		$("#custom_crm_demo").click()
	}	
	// $("#try-it-free-btn").attr("href", "#free_trial_thank_you");
	// $("#demo-link").click()
}

function make_current_user() {
	// alert("make current user")
	current_user = true;
	// $("#try-it-free-btn").removeClass("register_user");
	// alert("'bout to unbind")
	// $("#try-it-free-btn").unbind("click.fb");
}

function fancybox_close(){
	// alert("closing fancybox")
	$.fancybox.close()
	// $('#fancybox-wrap').hide();
	//     $('#fancybox-outer').hide();
	//     $('#fancybox-overlay').hide();
	//     $('#fancybox-title').hide();
	//     $('#fancybox-loading').hide();
	//     // $('#fancy_ajax').remove();
}