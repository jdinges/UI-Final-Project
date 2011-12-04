//= require jquery
//= require jquery-ui
//= require jquery.jeditable.js

$(function() {
	//draggables scroll the screen when dragged offscreen
	//which is an annoying default
	$.extend($.ui.sortable.prototype.options, { scroll: false });

	$('#layout').sortable({
		handle: "h3",
		axis: "y",
	});

	$('.editable').editable('./edit', {
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
	
	$('.paper').each(function () {
		var id =  $(this).attr('id').split('_')[1] ;
		$(this).editable('/members/papers/'+id+"", {
			tooltip: "click to edit",
			cancel: "Cancel",
			submit: "Save",
			method: 'PUT',
			name: "paper[title]"
		});

	});

	$('#new-paper').click(function () {
		$.post('/members/papers/', function(data) {
			var el = $('<li/>', {
				text: data.title,
				"class": "sortable paper",
				id: "paper_"+data.id
			});
			$(el).editable('/members/papers/'+data.id+"", {
				tooltip: "click to edit",
				cancel: "Cancel",
				submit: "Save",
				method: 'PUT',
				name: "paper[title]"
			});
			el.hide().appendTo('#papers').effect("highlight", {}, 3000);
		});
	});
});
