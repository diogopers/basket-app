//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
$(function(){

  $(".tab").on("click", function(e){
    // Change active tab
    var activetab = $(".active");
    activetab.removeClass('active');
    $(this).addClass('active');
    // Hide all tab-content (use class="hidden")
    $('.tab-content').addClass('hidden');
    // Show target tab-content (use class="hidden")
    var target = $(this).data('target');
    $(target).removeClass('hidden');
  });

});
