// Application JavaScript

var converter;

$(function() {

	converter = new Showdown.converter();


	$("form textarea.markdown").blur(function() {
		var src_id = this.id
		
		$("#" + src_id + "-preview").html(converter.makeHtml($(this).val()))
	})
})