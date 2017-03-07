class BasketsController < ApplicationController
  def new
  end

  def delivery_points
    @delivery_points = DeliveryPoint.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@delivery_points) do |delivery_point, marker|
      marker.lat delivery_point.latitude
      marker.lng delivery_point.longitude
      # marker.infowindow render_to_string(partial: "/delivery_points/map_box", locals: { flat: flat })
    end
  end

end
