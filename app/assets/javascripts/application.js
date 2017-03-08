//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require_tree .


$(function(){
  $(".category").on("click", function(e){
    $("#menu-op-2").click();
    $("#category").val(($(this).data("category")));
  });

  $(".basket-size").on("click", function(e){
    $("#size").val(($(this).data("size")));
    $("#new_basket").submit();

    $("#menu-op-3").click();

    $("#footer-cart").removeClass('hidden');
    // console.log(size);

  });

  $("#review-footer-button").on("click", function(e){
    $("#menu-op-4").click();
  });

  $(".card-container").on("click", function(e){
    $("#extra_id").val(($(this).data("id")));
    // total = parseInt($("#quantity").val());
    // total++;
    // $("#quantity").val(total)
    $("#new_extra_order").submit();


    // console.log(category);
  });

  $("#submit-order").on("click", function(e){
    console.log("menu-op-5")
    $("#menu-op-5").click();
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
  $("#menu-op-3").on("click", function(e){
    $("#footer-cart").removeClass('hidden');
  })
});
