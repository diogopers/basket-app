class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  # @order = Order.find(session[:order_id])

  def create
    @extras = Extra.all
    @extra_order = ExtraOrder.new
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
    else
      flash[:notice] = "Failed to create order"
    end

    respond_to do |format|
      format.js {
                  render :template => "extra_orders/view.js.erb",
                  :layout => false
          }
    end
  end

  def show
    @order = Order.find(session[:order_id])
    respond_to do |format|
      format.js {
             render :template => "orders/show.js.erb",
             :layout => false
          }
    end
  end

  private
  def basket_params
    params.require(:basket).permit(:category, :size, :size_url)
  end

end
