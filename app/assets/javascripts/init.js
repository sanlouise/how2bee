$(document).ready(function(){
  // Initialize collapse button
  $(".button-collapse").sideNav();
  // Initialize collapsible (uncomment the line below if you use the dropdown variation)
  $('.collapsible').collapsible();
  $('.parallax').parallax();
  $('.tabs-wrapper .row').pushpin({ top: $('.tabs-wrapper').offset().top });
});