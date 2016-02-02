# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'page:change', (event) ->
	win_h = $(window).height()
	$('#startPage').height win_h;

	$('body').on 'click', '.link', (event) ->
		event.preventDefault()
		id = $(this).attr('href')
		top = $(id).offset().top
		top -= 60
		$('body,html').animate { scrollTop: top }, 1000
		return
	return