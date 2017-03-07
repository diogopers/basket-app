//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
$(function(){
  $(".category").on("click", function(e){
    $("#menu-op-2").click();
    $("#category").val(($(this).data("category")));

    // console.log(category);
  });

  $(".basket-size").on("click", function(e){
    $("#size").val(($(this).data("size")));
    $("#new_basket").submit();

    $("#menu-op-3").click();

    // console.log(size);
  });

  $(".review-order").on("click", function(e){
    $("#menu-op-4").click();
  });
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
