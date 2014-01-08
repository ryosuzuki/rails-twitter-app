# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:fetch", ->
  NProgress.start()

$(document).on "page:change", ->
  NProgress.done()

$(document).on "page:restore", ->
  NProgress.remove()

