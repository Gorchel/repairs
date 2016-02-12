# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'page:change', (event) ->
	win_h = $(window).height()
	$('#startPage').height win_h
	$('#advantages').height win_h - 60

	#gallery
	img_width = $('#gallery img:first-child').width()
	$('#gallery img').height(img_width)

	$('body').on 'click', '#gallery img', () ->
		img_src = $(this).attr 'src'
		$('#gallery-modal .modal-body img').attr src:img_src
		$('#gallery-modal').modal('show')

	$('body').on 'click', '.link', (event) ->
		event.preventDefault()
		id = $(this).attr('href')
		top = $(id).offset().top
		top -= 60
		$('body,html').animate { scrollTop: top }, 500
		return
	return

