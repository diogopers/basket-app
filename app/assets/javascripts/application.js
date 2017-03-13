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

    // $("#footer-cart").removeClass('hidden');
    // console.log(size);

  });

  $("#cart-area").on("click", '#review-footer-button', function(e){
    $("#menu-op-4").click();
    $("#footer-cart").addClass('hidden');
    $("#submit-btn-checkout").click();
  });

  $("#basket-review-order").on("click", '#submit-order', function(e){
    $("#menu-op-5").click();
    // $.ajax({
    //       type: "GET",
    //       url: "/orders/<%= @order.id %>/pick_address"
    //     });
    // $("#submit-btn-checkout").click();
  });

  $("#address").on("click", '.set-address', function(e){
    $("#menu-op-6").click();
  });

  $("#addextras").on("click", '.card-wrapper', function(e){
    $("#extra_id").val(($(this).data("id")));
    $("#action_cart").val("increase");
    $("#new_extra_order").submit();
    // var qtd = $(this).siblings(".quantity").find(".quantity-display");
    // qtd.text(parseInt(qtd.text()) + 1)
  });

  $("#addextras").on("click", '.add-item', function(e){
    $("#extra_id").val(($(this).data("id")));
    $("#action_cart").val("increase");
    $("#new_extra_order").submit();
    // var qtd = $(this).prev().find(".quantity-display");
    // qtd.text(parseInt(qtd.text()) + 1)
  });

  $("#addextras").on("click", '.remove-item', function(e){
    $("#extra_id").val(($(this).data("id")));
    $("#action_cart").val("decrease");
    $("#new_extra_order").submit();
    // var qtd = $(this).siblings(".quantity").find(".quantity-display");
    // qtd.text(parseInt(qtd.text()) - 1)
  });


  $("#basket-review-order").on("click", "#submit-order",function(e){
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
