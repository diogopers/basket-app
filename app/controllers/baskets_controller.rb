class BasketsController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def new
    unless Order.find_by(id: session[:order_id]).present?
      session.delete(:order_id)
    end

    if current_user && session[:order_id]
      @order = Order.find(session[:order_id])
    elsif @order.present? && @order.id != nil
      @order = Order.find(session[:order_id])
    else
      @order = Order.new
    end

    @basket = Basket.new
    @producers = Producer.all

    @extras = Extra.search(params)

    @baskets = Basket.all
    @extra_order = ExtraOrder.new
    @extra_orders = ExtraOrder.where(order_id: session[:order_id])
  end


  private

  def basket_params
    params.require(:basket).permit(:size, :type)
  end

end
