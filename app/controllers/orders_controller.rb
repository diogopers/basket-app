class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    @basket = Basket.find_by(category: basket_params[:category],
                             size:     basket_params[:size])

    if session[:order_id].present?
      @order = Order.find(session[:order_id])
      @order.basket = @basket
    else
      @order = @basket.orders.new
      @order.status = "first step"
    end

    if @order.save
      session[:order_id] = @order.id
    end

  end

  private
  def basket_params
    params.require(:basket).permit(:category, :size)
  end

end
