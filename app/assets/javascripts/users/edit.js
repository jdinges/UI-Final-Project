//= require jquery
//= require jquery-ui
//= require jquery.jeditable.mini.js
//
$(function() {
	$.extend($.ui.sortable.prototype.options, {
		scroll: false
	});

	$('#layout').sortable({
		handle: "h3",
		axis: "y",
	});
	//$('ul.sortable').sortable({
		//items: "li.sortable",
		//axis: "y",
		//containment: 'parent'
	//});
	$('.editable').editable('.', {
		type: "textarea",
		cancel: "Cancel",
		submit: "Save",
		indicator: "Saving...",
		tooltip: "click to edit",
		method: 'PUT',
		name: "user[bio]",
		submitdata: {
			inline: "true"
		}
	});
});
