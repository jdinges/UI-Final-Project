//= require jquery
//= require jquery-ui
//= require jquery.jeditable.mini.js

$(function() {
	//draggables scroll the screen when dragged offscreen
	//which is an annoying default
	$.extend($.ui.sortable.prototype.options, { scroll: false });

	$('#layout').sortable({
		handle: "h3",
		axis: "y",
	});

	$('.editable').editable('.', {
		type: "textarea",
		rows: 5,
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
	$('button.style-switcher').each(function () {
		$(this).click(function (e) {
			var style = $(this).children('.stylesheet-name').text();
			//make ajax request to change user stylesheet
			//and on success, switch the current live stylesheet to match
			$.ajax({
				url: '.',
				type: "PUT",
				data: {
					inline: "true",
					"user[style_name]": style
				},
				success: function () {
					$('link[rel="stylesheet"]:first').attr("href","/assets/"+style);
				}
			});
		});
	});
});
