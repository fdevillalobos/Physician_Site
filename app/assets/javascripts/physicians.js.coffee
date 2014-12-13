# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Fade in and out the Basic and Advanced Search
$(document).ready ->
  $("#basic_search").on "click", "button", (event) ->
    $("#basic_search").hide()
    $("#advanced_search").fadeIn()
    return

  $("#advanced_search").on "click", "button", (event) ->
    $("#advanced_search").hide()
    $("#basic_search").fadeIn()
    return
  return

# Makes the states automatically populate by country of selection
jQuery ->
  $('#physician_state_id').parent().parent().hide()
  states = $('#physician_state_id').html()
#  console.log(states)
  $('#physician_country_id').change ->
    country = $("#physician_country_id option:selected").text()
    console.log(country)
    options = $(states).filter("optgroup[label='#{country}']").html()
    if options
      $('#physician_state_id').html(options)
      $('#physician_state_id').parent().parent().show()
    else
      $('#physician_state_id').empty()
      $('#physician_state_id').parent().parent().hide()
