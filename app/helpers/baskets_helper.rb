module BasketsHelper
  def initial_quantity(extra)
    extra_order = extra.extra_orders.find_by(order_id: session[:order_id])

    if extra_order
      extra_order.quantity
    else
      0
    end
  end
end
