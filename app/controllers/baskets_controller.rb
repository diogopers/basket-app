class BasketsController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def new

#     session.delete(:order_id)
    if @order.present? && @order.id != nil
      @order = Order.find(session[:order_id])
    else
      @order = Order.new
    end

    @basket = Basket.new
    @producers = Producer.all
    @extras = Extra.all
    @baskets = Basket.all
    @extra_order = ExtraOrder.new
    @extra_orders = ExtraOrder.where(order_id: session[:order_id])
  end


  private



  def basket_params
    params.require(:basket).permit(:size, :type)
  end

end
