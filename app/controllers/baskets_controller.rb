class BasketsController < ApplicationController

  before_action :set_delivery_points, only: :new
  skip_before_action :authenticate_user!, only: :new

  def new
#     session.delete(:order_id)
    if @order.present?
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

  def set_delivery_points
    @order = Order.find(session[:order_id])
    @delivery_points = DeliveryPoint.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@delivery_points) do |delivery_point, marker|
      marker.lat delivery_point.latitude
      marker.lng delivery_point.longitude
      marker.infowindow render_to_string(partial: "/delivery_points/map_box", :formats => [:html], locals: { delivery_point: delivery_point })
      # marker.infowindow render_to_string(partial: "/delivery_points/map_box", locals: { flat: flat })
    end
  end

  private

  def basket_params
    params.require(:basket).permit(:size, :type)
  end

end
