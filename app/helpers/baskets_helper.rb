module BasketsHelper

  def session_extra_order(extra)
    extra.extra_orders.find_by(order_id: session[:order_id])
  end

  def initial_quantity(extra)
    extra_order = extra.extra_orders.find_by(order_id: session[:order_id])

    if extra_order
      extra_order.quantity
    else
      0
    end
  end
end
