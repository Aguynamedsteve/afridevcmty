// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// spin refresh icon onclick
$(document).ready(function() {
  $(".profile-update-link").click(function() {
    $(this).find("i").toggleClass('fa-spin')
  });
});